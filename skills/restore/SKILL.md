---
description: Restore or enhance an existing image. Use when the user asks to restore, enhance, fix, repair, or improve an old or damaged image.
---

Use the nanobanana MCP server's `restore_image` tool to restore or enhance an image.

Parse the user's request and extract:
- **file**: The filename of the input image (required)
- **prompt**: The restoration instructions (required)
- **preview**: Boolean - from `--preview` flag

Required format: filename "restoration instructions" [--preview]

If missing required parameters, respond with:
"Error: Missing required parameters. Usage: /nanobanana:restore filename "restoration instructions" [--preview]"

User input: $ARGUMENTS

Call the `restore_image` tool with `file` and `prompt` parameters.
