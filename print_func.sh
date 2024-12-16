#!/bin/zsh

# Set the path to the folder containing your R functions
R_FOLDER_PATH="./R"  # Modify this if your R functions are in a different directory

# Check if the directory exists
if [ ! -d "$R_FOLDER_PATH" ]; then
  echo "Directory $R_FOLDER_PATH does not exist."
  exit 1
fi

# Loop through all R files in the directory
echo "Listing all functions in R files in $R_FOLDER_PATH:"

# Find all R files and search for function definitions
find "$R_FOLDER_PATH" -name "*.R" -type f | while read file; do
  echo "In file: $file"
  
  # Use awk to print the function definitions from 'function' to the closing brace '}'
  awk '
    /<-\s*function/ {in_function=1; print $0} 
    in_function {print $0} 
    in_function && /\}/ {in_function=0}
  ' "$file"
  
  echo ""
done

