# AI Engineering Playbook - Setup Script
# Copies the agent rules templates into your current project workspace.

Write-Host "=== AI Engineering Playbook Installer ===" -ForegroundColor Green

# Check templates exist
if (-not (Test-Path "templates")) {
    Write-Error "Error: 'templates' directory not found. Please run this script from the root of the playbook repository."
    Exit 1
}

# Ask target directory
$TargetDir = Read-Host "Enter the target project directory path (default: current directory '.'): "
if ([string]::IsNullOrWhiteSpace($TargetDir)) {
    $TargetDir = "."
}

if (-not (Test-Path $TargetDir)) {
    Write-Host "Creating directory: $TargetDir"
    New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
}

Write-Host ""
Write-Host "Select the agent rules template to install:"
Write-Host "1) Standard Agent Rules (Default / Codex / General agents) [templates/AGENTS.md]"
Write-Host "2) Claude-specific Rules (Tailored for Claude Code/IDE) [templates/CLAUDE.md]"
Write-Host "3) Gemini-specific Rules (Tailored for Gemini Developer CLI) [templates/GEMINI.md]"
$Option = Read-Host "Choose option [1-3] (default: 1): "
if ([string]::IsNullOrWhiteSpace($Option)) {
    $Option = "1"
}

switch ($Option) {
    "1" {
        $Source = "templates/AGENTS.md"
        $Dest = "AGENTS.md"
    }
    "2" {
        $Source = "templates/CLAUDE.md"
        $Dest = "CLAUDE.md"
    }
    "3" {
        $Source = "templates/GEMINI.md"
        $Dest = "GEMINI.md"
    }
    Default {
        Write-Error "Invalid option. Exiting."
        Exit 1
    }
}

Copy-Item -Path $Source -Destination "$TargetDir/$Dest" -Force
Write-Host "✓ Successfully copied $Source to $TargetDir/$Dest" -ForegroundColor Green
Write-Host "=== Setup complete! Point your AI agent to read $Dest in your project. ===" -ForegroundColor Green
