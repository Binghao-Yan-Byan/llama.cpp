BasePath="/home/byan/llama.cpp/build/bin"
PROG="${BasePath}/llama-mtmd-cli"
echo 1
ARGS=(
    -m "/home/byan/llama.cpp/ggml-model-Q4_0.gguf"
    --mmproj "/home/byan/llama.cpp/mmproj-model-f16.gguf"
    -n 2048
    --temp 0.7
    --top-k 100
    --top-p 0.8 
    --repeat-penalty 1.05
    --image "/home/byan/llama.cpp/rgb-00-00-00-000.png"
    -p "[Role]: You are a professional specializing in identifying environmental triggers. \
        [Objective]: Your task is to identify and describe elements in an image that correspond to specific environmental triggers. \
        [Input]: You will receive an image as it might be seen by a Parkinson's disease patient. \
        [Task]: \
        1. Element Identification: For each specified trigger, identify any relevant elements in the image that suggest the presence of that trigger, focusing ONLY on the following triggers: floor pattern changes, tight turn, dual-tasking, narrow passage, and distraction. \
        2. Description and Justification: For each element identified, describe why it corresponds to the specified trigger. Do NOT include any explanations or reasoning related to potential impacts on individuals. Focus solely on the characteristics of the image. \
        [Output Format]: Provide your analysis in TEXT. First, list the identified triggers separated by semicolons. Then, explain the reasoning for each identified trigger, focusing exclusively on its observable characteristics in the image. \
        Identified Triggers:[Identified triggers will be listed here].\
        [Explanation]: [Your reasoning for each identified trigger will be written here. Provide a detailed explanation for each trigger, focusing ONLY on the ones identified in the image. Do NOT include any irrelevant explanations."
)

"$PROG" "${ARGS[@]}"