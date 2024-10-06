#!/bin/bash

# Set the source and destination directories
src="src"
out="out"

# Create the output directory if it doesn't exist
mkdir -p "$out"

# Find all .js files in the src directory
find "$src" -type f -name '*.js' | while read -r file; do
    # Get the directory structure relative to src
    relative_dir=$(dirname "${file#$src/}")
    
    # Create the corresponding directory in the out directory
    mkdir -p "$out/$relative_dir"
    
    # Copy the file to the out directory with _clone suffix
    cp "$file" "$out/$relative_dir/$(basename "$file" .js)_clone.js"
done
