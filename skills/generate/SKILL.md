---
description: Generate images from text prompts. Use when the user asks to create, generate, or make an image, illustration, artwork, photo, or picture.
---

Use the nanobanana MCP server's `generate_image` tool to generate images.

Parse the user's request and extract:
- **prompt**: The image description (required)
- **outputCount**: Number of variations (1-8, default: 1) - from `--count=N`
- **styles**: Array of artistic styles - from `--styles="style1,style2"` (photorealistic, watercolor, oil-painting, sketch, pixel-art, anime, vintage, modern, abstract, minimalist)
- **variations**: Array of variation types - from `--variations="var1,var2"` (lighting, angle, color-palette, composition, mood, season, time-of-day)
- **format**: "grid" or "separate" (default: separate) - from `--format=`
- **seed**: Integer for reproducibility - from `--seed=`
- **preview**: Boolean - from `--preview` flag

User input: $ARGUMENTS

Call the `generate_image` tool with the parsed parameters.
