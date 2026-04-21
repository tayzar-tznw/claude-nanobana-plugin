#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/tayzar-tznw/claude-nanobana-plugin"
INSTALL_DIR="$HOME/.claude-nanobanana"

echo "=== Nano Banana - Claude Code Plugin Installer ==="
echo ""

# ── Step 1: Clone if not already in the repo ──
if [ ! -f "mcp-server/src/index.ts" ]; then
  echo "[1/4] Cloning repository..."
  if [ -d "$INSTALL_DIR" ]; then
    echo "  Existing installation found at $INSTALL_DIR, updating..."
    cd "$INSTALL_DIR"
    git pull --ff-only
  else
    git clone "$REPO_URL" "$INSTALL_DIR"
    cd "$INSTALL_DIR"
  fi
else
  INSTALL_DIR="$(pwd)"
  echo "[1/4] Already in repo directory: $INSTALL_DIR"
fi

# ── Step 2: Install dependencies & build ──
echo "[2/4] Installing dependencies and building..."
npm install --silent 2>/dev/null
echo "  Build complete."

# ── Step 3: Register MCP server with Claude Code ──
echo "[3/4] Registering MCP server with Claude Code..."
SERVER_PATH="$INSTALL_DIR/mcp-server/dist/index.js"

# Remove existing registration if present (ignore errors)
claude mcp remove nanobanana -s user 2>/dev/null || true

# Prompt for API key
echo ""
echo "  You need a Gemini API key for image generation."
echo "  Get one from: https://aistudio.google.com/apikey"
echo ""
read -rp "  Enter your NANOBANANA_API_KEY (or press Enter to skip): " API_KEY

if [ -n "$API_KEY" ]; then
  claude mcp add nanobanana -s user -e NANOBANANA_API_KEY="$API_KEY" -- node "$SERVER_PATH"
else
  claude mcp add nanobanana -s user -- node "$SERVER_PATH"
  echo ""
  echo "  NOTE: No API key set. Set it later with:"
  echo "    claude mcp remove nanobanana -s user"
  echo "    claude mcp add nanobanana -s user -e NANOBANANA_API_KEY=your-key -- node $SERVER_PATH"
fi

# ── Step 4: Install slash commands ──
echo "[4/4] Installing slash commands..."
COMMANDS_DIR="$HOME/.claude/commands"
mkdir -p "$COMMANDS_DIR"
cp "$INSTALL_DIR/.claude/commands/"*.md "$COMMANDS_DIR/"
echo "  Installed $(ls "$INSTALL_DIR/.claude/commands/"*.md | wc -l | tr -d ' ') commands to $COMMANDS_DIR"

# ── Done ──
echo ""
echo "=== Installation complete! ==="
echo ""
echo "Available commands in Claude Code:"
echo "  /generate   - Generate images from text prompts"
echo "  /edit       - Edit existing images"
echo "  /restore    - Restore/enhance images"
echo "  /icon       - Generate app icons & favicons"
echo "  /pattern    - Generate seamless patterns & textures"
echo "  /story      - Generate visual story sequences"
echo "  /diagram    - Generate technical diagrams"
echo "  /nanobanana - Natural language interface"
echo ""
echo "Try it: /generate \"a watercolor painting of a fox in a snowy forest\""
