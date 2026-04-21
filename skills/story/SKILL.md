---
description: Generate a sequence of images that tell a visual story or show a process. Use when the user asks to create a story, storyboard, tutorial sequence, timeline, or step-by-step visual process.
---

Use the nanobanana MCP server's `generate_story` tool to create sequential image stories.

Parse the user's request and extract:
- **prompt**: Description of the story or process (required)
- **steps**: Number of images 2-8 (default: 4) - from `--steps=N`
- **type**: "story", "process", "tutorial", or "timeline" (default: story) - from `--type=`
- **style**: "consistent" or "evolving" (default: consistent) - from `--style=`
- **layout**: "separate", "grid", or "comic" (default: separate) - from `--layout=`
- **transition**: "smooth", "dramatic", or "fade" (default: smooth) - from `--transition=`
- **format**: "storyboard" or "individual" (default: individual) - from `--format=`
- **preview**: Boolean - from `--preview` flag

User input: $ARGUMENTS

Call the `generate_story` tool with the parsed parameters.
