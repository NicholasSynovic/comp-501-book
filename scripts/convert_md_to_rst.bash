#!/bin/bash

# Directory containing markdown files
INPUT_DIR="$1"

# Ensure directory is provided
if [[ -z "$INPUT_DIR" ]]; then
    echo "Usage: $0 <directory_of_markdown_files>"
    exit 1
fi

# Ensure directory exists
if [[ ! -d "$INPUT_DIR" ]]; then
    echo "Error: '$INPUT_DIR' is not a directory."
    exit 1
fi

# Loop through all .md files
for FILE in "$INPUT_DIR"/*.md; do
    # Skip if no .md files exist
    [[ -e "$FILE" ]] || continue

    BASENAME=$(basename "$FILE" .md)
    OUTPUT="$INPUT_DIR/$BASENAME.rst"

    echo "Converting $FILE → $OUTPUT"

    pandoc "$FILE" -o "$OUTPUT"
done

echo "✓ Conversion complete."
