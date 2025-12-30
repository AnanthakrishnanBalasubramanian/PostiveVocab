# 🎨 PositiveVocab Creative Gallery

A beautiful, interactive photo and video gallery for browsing your PositiveVocab collection with advanced features.

## Features ✨

- **📸 Thumbnail Gallery**: Browse all images and videos in a responsive grid
- **🔍 Full-Size Viewer**: Click any item to view it in full resolution
- **🎬 Video Support**: Watch MP4 videos directly in the gallery
- **🔀 Shuffle**: Randomize the order of items
- **▶ Auto Slideshow**: Auto-play through all items with smooth transitions
- **⌨️ Keyboard Controls**: Navigate with arrow keys
- **📱 Responsive Design**: Works on desktop and mobile devices
- **✨ Beautiful UI**: Modern gradient design with glassmorphism effects

## Setup Instructions

### Option 1: Using Node.js (Recommended)

1. **Install dependencies**:
   ```bash
   npm install
   ```

2. **Start the server**:
   ```bash
   npm start
   ```

3. **Open in browser**:
   Navigate to `http://localhost:3000/gallery.html`

### Option 2: Using PHP

If you have PHP installed:

1. **Start PHP server**:
   ```bash
   php -S localhost:3000
   ```

2. **Open in browser**:
   Navigate to `http://localhost:3000/gallery.html`

### Option 3: Static HTML (No Server Required)

The gallery has a built-in fallback that works without any server. Just:

1. Open `gallery.html` directly in your browser
2. All files will load from the hardcoded list in the fallback method

## How to Use

### Viewing Items
- **Click any thumbnail** to view it in full size
- **Use arrow buttons** to navigate between items
- **Press arrow keys** (← →) for keyboard navigation

### Gallery Controls
- **🔀 Shuffle Button**: Randomizes the order of all items
- **▶ Slideshow Button**: Starts auto-play (changes item every 3 seconds)

### In Full-View Mode
- **← → buttons**: Navigate to previous/next item
- **Arrow keys**: Keyboard navigation
- **Spacebar**: Toggle slideshow on/off
- **ESC key**: Close the modal
- **▶ Auto button**: Toggle slideshow from full view
- **✕ Close button**: Exit full-view mode

## File Structure

```
PostiveVocab/
├── gallery.html              # Main gallery page
├── server.js                 # Node.js Express server
├── package.json              # Node.js dependencies
├── api-gallery-files.php     # PHP API endpoint
├── README.md                 # This file
└── Postivevocab/            # Your image and video collection
    ├── (images and videos)
    └── ...
```

## Supported File Types

- **Images**: `.jpg`, `.jpeg`, `.png`, `.gif`
- **Videos**: `.mp4`, `.webm`, `.mov`

## Keyboard Shortcuts

| Key | Action |
|-----|--------|
| `→` | Next item |
| `←` | Previous item |
| `Space` | Toggle slideshow |
| `ESC` | Close modal |

## Customization

You can customize the gallery by editing `gallery.html`:

- **Change slideshow speed**: Find `setInterval(..., 3000)` and change `3000` to your preferred milliseconds
- **Adjust grid size**: Modify `grid-template-columns: repeat(auto-fill, minmax(150px, 1fr))` in the CSS
- **Change colors**: Update the gradient background and button colors in the `<style>` section

## Troubleshooting

### Gallery doesn't load
- Make sure the `Postivevocab` folder is in the same directory as `gallery.html`
- Check that file names are correct (case-sensitive on some systems)
- Try the fallback method by opening `gallery.html` directly

### Videos don't play
- Ensure your browser supports MP4 video playback
- Check that video files are in the correct `Postivevocab` folder

### Images are too small/large
- Adjust the grid size by changing the `minmax(150px, 1fr)` value in the CSS
- Increase/decrease the `150px` to make thumbnails larger or smaller

## Browser Support

- Chrome/Chromium ✅
- Firefox ✅
- Safari ✅
- Edge ✅
- Mobile browsers ✅

## Tips

- **Organize your collection**: Use shuffle to discover items in random order
- **Focus viewing**: Use slideshow to view items without manual clicking
- **Navigation**: Use keyboard shortcuts for quick navigation without touching the mouse

## Performance

The gallery is optimized for large collections. With proper server setup:
- Thumbnails load efficiently with lazy-loading support
- Smooth animations with CSS transitions
- Minimal memory footprint

Enjoy your PositiveVocab gallery! 🌟
