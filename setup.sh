#!/bin/bash

# AI Engineering Playbook - Setup Script
# Copies the agent rules templates into your current project workspace.

set -e

echo "=== AI Engineering Playbook Installer ==="

# Check templates exist
if [ ! -d "templates" ]; then
    echo "Error: 'templates' directory not found. Please run this script from the root of the playbook repository."
    exit 1
fi

# Ask target directory
read -p "Enter the target project directory path (default: current directory '.'): " TARGET_DIR
TARGET_DIR=${TARGET_DIR:-.}

if [ ! -d "$TARGET_DIR" ]; then
    echo "Creating directory: $TARGET_DIR"
    mkdir -p "$TARGET_DIR"
fi

echo ""
echo "Select the agent rules template to install:"
echo "1) Standard Agent Rules (Default / Codex / General agents) [templates/AGENTS.md]"
echo "2) Claude-specific Rules (Tailored for Claude Code/IDE) [templates/CLAUDE.md]"
echo "3) Gemini-specific Rules (Tailored for Gemini Developer CLI) [templates/GEMINI.md]"
read -p "Choose option [1-3] (default: 1): " OPTION
OPTION=${OPTION:-1}

case $OPTION in
    1)
        SOURCE="templates/AGENTS.md"
        DEST="AGENTS.md"
        ;;
    2)
        SOURCE="templates/CLAUDE.md"
        DEST="CLAUDE.md"
        ;;
    3)
        SOURCE="templates/GEMINI.md"
        DEST="GEMINI.md"
        ;;
    *)
        echo "Invalid option. Exiting."
        exit 1
        ;;
esac

cp "$SOURCE" "$TARGET_DIR/$DEST"
echo "✓ Successfully copied $SOURCE to $TARGET_DIR/$DEST"
echo "=== Setup complete! Point your AI agent to read $DEST in your project. ==="
