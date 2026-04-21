---
description: Generate app icons, favicons, and UI elements. Use when the user asks to create icons, favicons, logos, or UI elements in specific sizes.
---

Use the nanobanana MCP server's `generate_icon` tool to create icons.

Parse the user's request and extract:
- **prompt**: Description of the icon (required)
- **sizes**: Array of pixel sizes - from `--sizes="16,32,64"` (valid: 16, 32, 64, 128, 256, 512, 1024)
- **type**: "app-icon", "favicon", or "ui-element" (default: app-icon) - from `--type=`
- **style**: "flat", "skeuomorphic", "minimal", or "modern" (default: modern) - from `--style=`
- **format**: "png" or "jpeg" (default: png) - from `--format=`
- **background**: "transparent", "white", "black", or color name (default: transparent) - from `--background=`
- **corners**: "rounded" or "sharp" (default: rounded) - from `--corners=`
- **preview**: Boolean - from `--preview` flag

User input: $ARGUMENTS

Call the `generate_icon` tool with the parsed parameters.
