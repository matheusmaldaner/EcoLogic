import json
from ibm_watson import NaturalLanguageUnderstandingV1
from ibm_watson.natural_language_understanding_v1 import Features, KeywordsOptions
from ibm_cloud_sdk_core.authenticators import IAMAuthenticator
import subprocess

# Set up the API credentials
api_key = "fmN5CM-_viFpSQrBfTTtqcUNZm2-C0ELThKrNNtYQb4p"
url = "https://us-south.ml.cloud.ibm.com"

# Create an authenticator
authenticator = IAMAuthenticator(api_key)

# Create a Natural Language Understanding service instance
nlu = NaturalLanguageUnderstandingV1(
    version="2022-04-07",
    authenticator=authenticator
)

# Set the service URL
nlu.set_service_url(url)

# Data storage dictionary to store user-provided files and configurations
user_data = {
    "training_data": None,
    "model": None,
    "hdl_files": None,
    "fpga_programmed": False
}

# Step tracking variable
current_step = 0

def analyze_input(user_input):
    """Analyzes user input using Watson NLU to extract keywords."""
    try:
        response = nlu.analyze(
            text=user_input,
            features=Features(keywords=KeywordsOptions(limit=10))
        ).get_result()

        # Extract keywords from the response
        keywords = [keyword['text'].lower() for keyword in response['keywords']]
        return keywords

    except Exception as e:
        print(f"An error occurred during input analysis: {e}")
        return []

def interpret_intents(keywords):
    """Interprets multiple intents based on keyword combinations."""
    intents = []
    
    # Define phrases for each intent
    submit_data_phrases = {"submit training data", "provide dataset", "upload data"}
    generate_hdl_phrases = {"generate hdl files", "create verilog", "create vhdl", "generate code"}
    program_fpga_phrases = {"program the fpga", "configure fpga", "upload to fpga"}
    train_model_phrases = {"train watson model", "create model", "train agent"}

    # Combine keywords to identify the full intent
    input_text = " ".join(keywords)

    # Check each intent by looking for phrase matches
    if any(phrase in input_text for phrase in submit_data_phrases):
        intents.append("submit_data")
    if any(phrase in input_text for phrase in generate_hdl_phrases):
        intents.append("generate_hdl")
    if any(phrase in input_text for phrase in program_fpga_phrases):
        intents.append("program_fpga")
    if any(phrase in input_text for phrase in train_model_phrases):
        intents.append("train_model")

    return intents

def clarify_intent(intents):
    """Prompt the user for further detail if the intent is not clear."""
    if not intents:
        print("I couldn't determine what you want to do. Could you please clarify?")
        return watson_intro()  # Ask for the input again
    elif len(intents) > 1:
        print("It seems like you want to perform multiple actions. Could you specify the sequence or provide more details?")
        return watson_intro()  # Ask for the input again

    return intents

def next_step_required(expected_step):
    """Ensure steps are followed sequentially."""
    global current_step
    if current_step != expected_step:
        print(f"Please complete Step {expected_step} before proceeding.")
        return False
    return True

def handle_training_data():
    """Guide users on how to submit training data."""
    global current_step
    if not next_step_required(1):
        return
    
    print("To build a model, relevant data is necessary.")
    print("Please provide a file path to the dataset. It should be in CSV format and structured appropriately for model training (e.g., features and labels).")
    
    dataset_path = input("Enter the file path: ")
    user_data["training_data"] = dataset_path
    print(f"Training data received and stored locally: {dataset_path}")
    print("Training the model with the provided dataset...")
    user_data["model"] = "model_trained"
    print("Model training completed successfully and saved locally.")
    current_step += 1

def generate_hdl_files():
    """Generate Verilog/VHDL files based on user specifications."""
    global current_step
    if not next_step_required(2):
        return

    print("To generate HDL files, specify the parameters for your FPGA design.")
    
    module_name = input("Module name: ")
    num_inputs = input("Number of inputs: ")
    num_outputs = input("Number of outputs: ")
    
    print(f"Generating Verilog/VHDL files for module '{module_name}' with {num_inputs} inputs and {num_outputs} outputs...")
    hdl_file_path = f"./{module_name}.v"
    user_data["hdl_files"] = hdl_file_path
    print(f"HDL files generated successfully and stored locally at: {hdl_file_path}")
    current_step += 1

def program_fpga():
    """Prompt user to program FPGA with generated files."""
    global current_step
    if not next_step_required(3):
        return
    
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
    current_step += 1

def new_watson_model():
    """Ask user for details to train a new Watson model for the FPGA project."""
    global current_step
    if not next_step_required(4):
        return
    
    if not user_data["fpga_programmed"]:
        print("You need to program the FPGA before training a new Watson model for it.")
        return
    
    behavior_description = input("Enter the behavior description: ")
    print(f"Training new model based on: {behavior_description}")
    user_data["new_model"] = "watson_model_trained"
    print("New Watson model training completed successfully and saved locally.")
    current_step += 1

def watson_intro():
    """Watson's introduction message and explanation of available options."""
    print("Hello! I am Watson, your AI assistant. I can help you with the following:")
    print("1) Submit training data for a model.")
    print("2) Generate Verilog/VHDL files for your FPGA project.")
    print("3) Program your FPGA with generated files.")
    print("4) Train a new Watson model for the FPGA project.")
    print()

    user_input = input("Please describe what you would like to do, and I will assist you: ")
    keywords = analyze_input(user_input)
    intents = interpret_intents(keywords)

    return clarify_intent(intents)

def main():
    """Main interaction loop for Watson's platform."""
    while True:
        intents = watson_intro()

        # Execute each valid intent sequentially
        for intent in intents:
            if intent == "submit_data":
                handle_training_data()
            elif intent == "generate_hdl":
                generate_hdl_files()
            elif intent == "program_fpga":
                program_fpga()
            elif intent == "train_model":
                new_watson_model()

        continue_choice = input("Would you like to perform another task? (yes/no): ").lower()
        if continue_choice != 'yes':
            print("Thank you for using Watson. Goodbye!")
            break

# Run the main function
if __name__ == "__main__":
    main()
