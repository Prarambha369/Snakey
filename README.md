# My First Game
 Snake game made in Godot

1️⃣ Grab the source
```
git clone https://github.com/Prarambha369/Snakey.git
cd Snakey
```

You should now see a typical Godot folder layout:
```
project.godot        ← main project file
assets/              ← sprites, sounds, etc.
scenes/              ← *.tscn scene files
scripts/             ← *.gd scripts
export_presets.cfg   ← export settings (may be empty)
```

2️⃣ Install Godot
PlatformQuick install
WindowsDownload the official portable ZIP from https://godotengine.org/download/windows (choose the stable 4.x build) and unzip it somewhere, e.g. `C:\Godot\`.
macOSGrab the .dmg from the same page, drag the app to `/Applications`.
LinuxEither use your distro's package manager (sudo apt install godot3 for older 3.x, or grab the official binary from the website) or download the `Linux x86_64 ZIP` and extract it.

Make sure you have Godot 4.x (the current stable series) because the project was created with that version.
3️⃣ Open the project in Godot

    Launch the Godot editor (Godot_v4.x.exe or godot from the terminal).
    Click Import → Browse, navigate to the folder you just cloned, select project.godot, and click Import & Edit.
    The editor will load the project and you should see the main scene (likely something like scenes/Main.tscn) in the Scene panel.

Press Play (F5) to test it instantly. If everything loads correctly you'll see the Snake game window pop up.

## 🌐 Web Deployment

This project is configured for web deployment! You can play Snakey directly in your browser.

### Quick Start - Play Online
1. Export the project from Godot to HTML5 format
2. Upload the generated files to any web server
3. Share the link and play anywhere!

### Export to Web (HTML5)
1. Open the project in Godot Editor
2. Go to **Project → Export**
3. Select **Web** preset (already configured)
4. Click **Export Project**
5. Choose the `web/` folder as export location
6. The game will be exported as `web/index.html`

### Deploy to GitHub Pages
1. Export the project to the `web/` folder
2. Commit and push the exported files
3. Enable GitHub Pages in repository settings
4. Point GitHub Pages to the `web/` folder
5. Your game will be available at `https://yourusername.github.io/Snakey/`

### Local Testing
```bash
# Serve the web folder locally (Python 3)
cd web
python -m http.server 8000

# Or with Node.js
npx serve .

# Then visit http://localhost:8000
```

### Web Controls
- **W/A/S/D** or **Arrow Keys** - Control the snake
- Works on desktop and mobile browsers
- Touch controls automatically enabled on mobile devices
