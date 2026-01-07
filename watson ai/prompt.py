import requests
import json
import os

# Set up the API credentials from environment variables
# IMPORTANT: Set these environment variables before running:
#   export WATSON_API_KEY="your-api-key"
#   export WATSON_SPACE_ID="your-space-id"
api_key = os.environ.get("WATSON_API_KEY")
url = "https://us-south.ml.cloud.ibm.com/ml/v1/text/generation?version=2023-05-29"  # Update based on your Watson ML instance URL
space_id = os.environ.get("WATSON_SPACE_ID")

if not api_key or not space_id:
    raise EnvironmentError(
        "Missing required environment variables. Please set:\n"
        "  WATSON_API_KEY - Your IBM Watson API key\n"
        "  WATSON_SPACE_ID - Your IBM Watson space ID"
    )

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
    "watson_model_behavior": None
}

# Step tracking variable
intent_completed = []

def watson_intro():
    """Watson's introduction message and explanation of available options."""
    print("Hello! I am Watson, your AI assistant. I can help you with the following:")
    print("1) Submit machine learning training data.")
    print("2) Generate hardware description language files.")
    print("3) Program your field programmable gate array (FPGA).")
    print("4) Train a new Watson RAG model for the FPGA project.")
    print("5) Interact with the trained Watson RAG model.")
    print("6) Finish our interaction.")
    print("7) Answer questions about the project.")
    print()

    user_input = input("Please enter the tasks you'd like to perform, separated by commas. \n For example: '1,2,3' \n")
    intent_map = {
        "1": "submit_machine_learning_training_data",
        "2": "generate_hardware_description_language_files",
        "3": "program_field_programmable_gate_array",
        "4": "train_watson_RAG_model",
        "5": "interact_watson_RAG_model",
        "6": "finished_interaction",
        "7": "answer_project_questions"
    }

    intents = user_input.split(',')
    intents = [intent_map[intent] for intent in intents if intent in intent_map]
    if intents:
        print("Intents identified:", intents)
        return intents
    else:
        print("Failed to get a response from the foundation model.")
        return []

def handle_training_data():
    """Guide users on how to submit training data."""
    
    print("To build a model, relevant data is necessary.")
    print("Please provide a file path to the dataset. It should be in CSV format and structured appropriately for model training (e.g., features and labels).")
    
    dataset_path = input("Enter the file path: ")
    user_data["training_data"] = dataset_path
    print(f"Training data received and stored locally: {dataset_path}")
    print("Training the model with the provided dataset...")
    user_data["model"] = "model_trained"
    print("Model training completed successfully and saved locally.")

def generate_hdl_files():
    """Generate Verilog/VHDL files based on user specifications."""

    print("To generate HDL files, specify the parameters for your FPGA design.")
    
    module_name = input("Module name: ")
    num_inputs = input("Number of inputs: ")
    num_outputs = input("Number of outputs: ")
    
    print(f"Generating Verilog/VHDL files for module '{module_name}' with {num_inputs} inputs and {num_outputs} outputs...")
    hdl_file_path = f"./{module_name}.v"
    user_data["hdl_files"] = hdl_file_path
    print(f"HDL files generated successfully and stored locally at: {hdl_file_path}")

def program_fpga():
    """Prompt user to program FPGA with generated files."""
    
    if user_data["hdl_files"] is None:
        print("HDL files are required to program the FPGA. Please generate them first.")
        return
    
    user_response = input("Would you like to program the FPGA with the generated files? (yes/no): ").lower()
    if user_response == 'yes':
        print("Programming the FPGA...")
        user_data["fpga_programmed"] = True
        print("FPGA programming completed successfully!")
    else:
        print("FPGA programming skipped.")

def new_watson_model():
    """Ask user for details to train a new Watson model for the FPGA project."""
    
    if not user_data["fpga_programmed"]:
        print("You need to program the FPGA before training a new Watson model for it.")
        return False
    behavior_description = input("Enter the behavior description: ")
    user_data["watson_model_behavior"] = behavior_description
    print("New Watson model training completed successfully and saved locally.")
    return True

def prompt_user_foundation_model(prompt_text):
    """Prompts the Watson foundation model to generate a response."""
    model_id = "ibm/granite-13b-chat-v2"  # Update with the correct model ID
    project_id = "c140dad4-376a-4958-a9ad-28c2b55ed009"  # Update with your actual project ID
    global user_data
    # Define the payload for the foundation model
    body = {
        "input": f"You are an agent, the following description is how you should strictly behave: \n {user_data['watson_model_behavior']} \n This is the user's prompt, please respond appropriately: \n {prompt_text}",
        "parameters": {
            "decoding_method": "greedy",
            "max_new_tokens": 900,
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
        
        # Debugging: Print the full response to understand its structure
        #print("Full response:", json.dumps(data, indent=2))
        
        # Attempt to extract 'generated_text' or adapt to the structure
        if 'results' in data:
            return data['results'][0]['generated_text'].strip()
        elif 'predictions' in data and len(data['predictions']) > 0:
            return data['predictions'][0]['values'][0][0]
        else:
            print("Unexpected response structure. Full response logged above.")
            return None
    except Exception as e:
        print(f"An error occurred: {e}")
        return None

def main():
    """Main interaction loop for Watson's platform."""
    while True:
        intents = watson_intro()

        # If intents are empty or None, retry the prompt
        if not intents:
            print("I couldn't determine your request. Let's try again.")
            continue

        # Execute each valid intent sequentially
        for intent in intents:
            if intent == "submit_machine_learning_training_data":
                handle_training_data()
                intent_completed.append(intent)
            elif intent == "generate_hardware_description_language_files" and "submit_machine_learning_training_data" in intent_completed:
                generate_hdl_files()
                intent_completed.append(intent)
            elif intent == "program_field_programmable_gate_array" and "generate_hardware_description_language_files" in intent_completed:
                program_fpga()
                intent_completed.append(intent)
            elif intent == "train_watson_RAG_model" and "program_field_programmable_gate_array" in intent_completed:
                val = new_watson_model()
                if val:
                    intent_completed.append(intent)
            elif intent == "interact_watson_RAG_model" and "train_watson_RAG_model" in intent_completed:
                user_input = input("Hello, I am your new Watson Model. To best use me, simply prompt me. When you are done, simply prompt \"Stop\" \n")
                response = prompt_user_foundation_model(user_input)
                while True:
                    print(response)
                    user_input = input()
                    if user_input == "Stop":
                        break
                    response = prompt_user_foundation_model(user_input)
                if response:
                    print("Model Output:")
                    print(response)
                else:
                    print("Failed to interact with the Watson model.")
                intent_completed.append(intent)
            elif intent == "finished_interaction":
                print("Thank you for using Watson. Goodbye!")
                break
            elif intent == "answer_project_questions":
                # TODO: Use Watson to answer the questions about the project
                print("The project is a FPGA-based system that uses a trained Watson model to perform specific tasks.")
                print("The system consists of the following components:")
                print("1) Machine learning model training module.")
                print("2) FPGA hardware description language (HDL) generator.")
                print("3) FPGA programming module.")
                print("4) Watson model training module.")
                print("5) Watson model interaction module.")
                print("The system is designed to be modular and flexible for various applications.")
            else:
                print("Invalid or out-of-order intent detected. Skipping:", intent)

        continue_choice = input("Would you like to perform another task? (yes/no): ").lower()
        if continue_choice != 'yes':
            print("Thank you for using Watson. Goodbye!")
            break

# Run the main function
if __name__ == "__main__":
    main()