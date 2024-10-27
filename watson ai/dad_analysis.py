import pydwf
import pydwf.utilities as utilities
import requests
import json
import time
import random

# IBM Watson Assistant setup
api_key = "fmN5CM-_viFpSQrBfTTtqcUNZm2-C0ELThKrNNtYQb4p"
url = "https://us-south.ml.cloud.ibm.com/ml/v1/text/generation?version=2023-05-29"
space_id = "1925a9ba-464e-4f1f-a940-3ad952863409"

def get_access_token(api_key):
    auth_url = "https://iam.cloud.ibm.com/identity/token"
    headers = {"Content-Type": "application/x-www-form-urlencoded"}
    data = f"apikey={api_key}&grant_type=urn:ibm:params:oauth:grant-type:apikey"
    
    response = requests.post(auth_url, headers=headers, data=data)
    if response.status_code == 200:
        return response.json()["access_token"]
    else:
        raise Exception(f"Failed to obtain access token: {response.text}")

# Retrieve the access token
access_token = get_access_token(api_key)

# Headers for API requests
headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
    "Authorization": f"Bearer {access_token}"
}

# Track the previous state of the hurricane
previous_state = None

def check_hurricane_state(new_state):
    """Compare the new state with the previous state to determine if a warning should be issued."""
    global previous_state
    idx_old = previous_state.find('1') if previous_state else -1
    idx = new_state.find('1')
    if idx_old != idx:
        previous_state = new_state
        # identify the idx of the channel that is 1
        return True, idx
    return False, idx

def prompt_foundation_model(user_input):
    """Prompts the Watson foundation model to generate a response."""
    model_id = "ibm/granite-13b-chat-v2"
    project_id = "c140dad4-376a-4958-a9ad-28c2b55ed009"

    prompt_text = f"""<|start_of_system|>assistant<|end_of_system|> You are an AI assistant designed to warn users about the danger of the hurricane they could face. The following is a user message: <|start_of_user_message|> {user_input} <|end_of_user_message|> Respond with information regarding the danger of the hurricane. Be informative and helpful. Further explain the steps to take to ensure safety."""

    body = {
        "input": prompt_text,
        "parameters": {
            "decoding_method": "greedy",
            "max_new_tokens": 300,
            "repetition_penalty": 1
        },
        "model_id": model_id,
        "project_id": project_id
    }

    try:
        response = requests.post(
            url,
            headers=headers,
            json=body
        )
        if response.status_code != 200:
            raise Exception("Non-200 response: " + str(response.text))

        data = response.json()
        if 'results' in data and len(data['results']) > 0 and 'generated_text' in data['results'][0]:
            generated_text = data['results'][0]['generated_text'].strip()
            return generated_text
        else:
            print("Unexpected response structure. Full response logged below:")
            print(json.dumps(data, indent=2))
            return ""
    except Exception as e:
        print(f"An error occurred: {e}")
        return ""

def sample_dad3():
    dwf = pydwf.DwfLibrary()
    with utilities.openDwfDevice(dwf) as device:
        digitalIn = device.digitalIn
        digitalIn.reset()
        digitalIn.sampleFormatSet(16)
        digitalIn.dividerSet(1)
        digitalIn.bufferSizeSet(4096)
        digitalIn.configure(reconfigure=True, start=True)

        while not digitalIn.status(read_data_flag=True):
            time.sleep(0.01)

        data = digitalIn.statusData(1)
        states = [(data[0] >> bit) & 1 for bit in range(6)]
        return states

def fake_sample_dad3():
    """Fake data for testing purposes."""
    idx = random.randint(0, 5)
    data = [0 for _ in range(6)]
    data[idx] = 1
    return data

def main():
    """Main interaction loop for Watson's platform."""
    global previous_state
    while True:
        # Sample data from the DAD3
        current_sample = sample_dad3()
        #current_sample = fake_sample_dad3()  # For testing purposes
        state_description = f"The hurricane we are going to experience is a category {current_sample} hurricane. What should we do?"

        # Check if the state has changed
        chk, idx = check_hurricane_state(state_description)

        if chk:
            print(f"New state detected: {idx}")
            warning_message = prompt_foundation_model(state_description)
            if warning_message:
                print(f"Watson Response: {warning_message}")
            else:
                print("No response received from Watson.")
        else:
            print("No significant change detected.")

        # Wait before the next sample
        time.sleep(5)

# Run the main function
if __name__ == "__main__":
    main()
