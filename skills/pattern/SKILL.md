---
description: Generate seamless patterns and textures. Use when the user asks to create patterns, textures, backgrounds, tiles, or wallpapers.
---

Use the nanobanana MCP server's `generate_pattern` tool to create patterns and textures.

Parse the user's request and extract:
- **prompt**: Description of the pattern (required)
- **size**: Tile size e.g. "256x256" (default: 256x256) - from `--size=`
- **type**: "seamless", "texture", or "wallpaper" (default: seamless) - from `--type=`
- **style**: "geometric", "organic", "abstract", "floral", or "tech" (default: abstract) - from `--style=`
- **density**: "sparse", "medium", or "dense" (default: medium) - from `--density=`
- **colors**: "mono", "duotone", or "colorful" (default: colorful) - from `--colors=`
- **repeat**: "tile" or "mirror" (default: tile) - from `--repeat=`
- **preview**: Boolean - from `--preview` flag

User input: $ARGUMENTS

Call the `generate_pattern` tool with the parsed parameters.
