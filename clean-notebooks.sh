#!/bin/bash

# Create a virtual environment (one-time setup)
python3 -m venv ~/.venvs/nbtools

# Activate the virtual environment
source ~/.venvs/nbtools/bin/activate

# Install nbstripout in the virtual environment
pip install nbstripout

# Print current directory for debugging
echo "Current directory: $(pwd)"
echo "Notebook files found: $(find . -name "*.ipynb" | wc -l)"

# List all notebooks for verification
find . -name "*.ipynb" -print

# Clean all notebooks recursively with extra keys to remove
find . -name "*.ipynb" -exec ~/.venvs/nbtools/bin/nbstripout --extra-keys "metadata.kernelspec metadata.language_info" {} \;

# Deactivate the virtual environment
deactivate
