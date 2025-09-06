#!/bin/bash

# Web Deployment Helper Script for Snakey
# This script helps export the Godot project for web deployment

echo "🐍 Snakey Web Deployment Helper"
echo "================================"

# Check if Godot is installed
if ! command -v godot &> /dev/null; then
    echo "❌ Godot is not installed or not in PATH"
    echo "   Please install Godot 4.x from: https://godotengine.org/download"
    echo "   Make sure to add it to your PATH or use the full path to the executable"
    exit 1
fi

echo "✅ Godot found: $(godot --version)"

# Check if we're in the right directory
if [ ! -f "project.godot" ]; then
    echo "❌ project.godot not found. Please run this script from the Snakey project root directory."
    exit 1
fi

echo "✅ Project directory confirmed"

# Create web directory if it doesn't exist
mkdir -p web

echo "📦 Exporting project for web deployment..."

# Export the project using Godot's headless mode
godot --headless --export-release "Web" web/index.html

if [ $? -eq 0 ]; then
    echo "✅ Export completed successfully!"
    echo ""
    echo "🚀 Your web game is ready!"
    echo "   Files exported to: ./web/"
    echo "   Main file: ./web/index.html"
    echo ""
    echo "🌐 To test locally:"
    echo "   cd web && python -m http.server 8000"
    echo "   Then visit: http://localhost:8000"
    echo ""
    echo "📤 To deploy:"
    echo "   Upload the entire ./web/ folder to your web server"
    echo "   Or push to GitHub and enable GitHub Pages"
else
    echo "❌ Export failed. Please check the Godot export templates are installed."
    echo "   In Godot: Editor → Manage Export Templates → Download and Install"
    exit 1
fi