---
description: Edit an existing image based on text instructions. Use when the user asks to edit, modify, change, or alter an existing image file.
---

Use the nanobanana MCP server's `edit_image` tool to edit an existing image.

Parse the user's request and extract:
- **file**: The filename of the input image (required)
- **prompt**: The edit instructions (required)
- **preview**: Boolean - from `--preview` flag

Required format: filename "edit instructions" [--preview]

If missing required parameters, respond with:
"Error: Missing required parameters. Usage: /nanobanana:edit filename "edit instructions" [--preview]"

User input: $ARGUMENTS

Call the `edit_image` tool with `file` and `prompt` parameters.
