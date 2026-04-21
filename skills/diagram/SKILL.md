---
description: Generate technical diagrams, flowcharts, and architectural mockups. Use when the user asks to create a diagram, flowchart, architecture diagram, network diagram, database schema, wireframe, mindmap, or sequence diagram.
---

Use the nanobanana MCP server's `generate_diagram` tool to create technical diagrams.

Parse the user's request and extract:
- **prompt**: Description of the diagram (required)
- **type**: "flowchart", "architecture", "network", "database", "wireframe", "mindmap", or "sequence" (default: flowchart) - from `--type=`
- **style**: "professional", "clean", "hand-drawn", or "technical" (default: professional) - from `--style=`
- **layout**: "horizontal", "vertical", "hierarchical", or "circular" (default: hierarchical) - from `--layout=`
- **complexity**: "simple", "detailed", or "comprehensive" (default: detailed) - from `--complexity=`
- **colors**: "mono", "accent", or "categorical" (default: accent) - from `--colors=`
- **annotations**: "minimal" or "detailed" (default: detailed) - from `--annotations=`
- **preview**: Boolean - from `--preview` flag

User input: $ARGUMENTS

Call the `generate_diagram` tool with the parsed parameters.
