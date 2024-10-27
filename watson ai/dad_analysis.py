import requests
import json

# Set up the API credentials
api_key = "fmN5CM-_viFpSQrBfTTtqcUNZm2-C0ELThKrNNtYQb4p"
url = "https://us-south.ml.cloud.ibm.com/ml/v1/text/generation?version=2023-05-29"  # Update based on your Watson ML instance URL
space_id = "1925a9ba-464e-4f1f-a940-3ad952863409"

# Generate an access token using your API key
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

# Data storage dictionary to store user-provided files and configurations
user_data = {
    "training_data": None,
    "model": None,
    "hdl_files": None,
    "fpga_programmed": False,
    "watson_model_prompt": None
}

# Step tracking variable
intent_completed = []

def prompt_foundation_model(user_input):
    """Prompts the Watson foundation model to generate a response."""
    model_id = "ibm/granite-13b-chat-v2"  # Update with the correct model ID
    project_id = "c140dad4-376a-4958-a9ad-28c2b55ed009"  # Update with your actual project ID

    # Construct the prompt based on user input
    prompt_text = f"""
<|start_of_system|>assistant<|end_of_system|> You are an AI assistant designed to warn users about the danger of the hurricane they could face. The following is a user message: <|start_of_user_message|> {user_input} <|end_of_user_message|> Respond with information regarding the danger of the hurricane. Be informative and helpful. Further explain the steps to take to ensure safety.
"""

    # Define the payload for the foundation model
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

    # Call the Watson Machine Learning deployment endpoint
    try:
        response = requests.post(
            url,
            headers=headers,
            json=body
        )
        if response.status_code != 200:
            raise Exception("Non-200 response: " + str(response.text))

        data = response.json()
        
        # Parse the 'generated_text' from the nested structure
        if 'results' in data and len(data['results']) > 0 and 'generated_text' in data['results'][0]:
            generated_text = data['results'][0]['generated_text'].strip()
            # Split the generated text by commas and strip whitespace
            intents = [intent.strip() for intent in generated_text.split(',')]
            return intents
        else:
            print("Unexpected response structure. Full response logged below:")
            print(json.dumps(data, indent=2))
            return []
    except Exception as e:
        print(f"An error occurred: {e}")
        return []

def watson_intro():

    user_input = input("Please describe what you would like to do, and I will assist you: ")
    intents = prompt_foundation_model(user_input)
    if intents:
        print("Intents identified:", intents)
        return intents
    else:
        print("Failed to get a response from the foundation model.")
        return []

def main():
    """Main interaction loop for Watson's platform."""
    while True:
        #TODO: Create sampling loop
        continue

# Run the main function
if __name__ == "__main__":
    main()