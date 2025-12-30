const express = require('express');
const fs = require('fs');
const path = require('path');
const app = express();

const PORT = 3000;
const GALLERY_FOLDER = path.join(__dirname, 'Postivevocab');

// Serve static files
app.use(express.static(__dirname));

// API endpoint to get gallery files
app.get('/api/gallery-files', (req, res) => {
    try {
        const files = fs.readdirSync(GALLERY_FOLDER);
        
        // Filter for image and video files only
        const mediaFiles = files.filter(file => {
            const ext = path.extname(file).toLowerCase();
            return ['.jpg', '.jpeg', '.png', '.gif', '.mp4', '.webm', '.mov'].includes(ext);
        });

        // Sort files by name
        mediaFiles.sort();

        res.json(mediaFiles);
    } catch (error) {
        console.error('Error reading gallery folder:', error);
        res.status(500).json({ error: 'Failed to read gallery folder' });
    }
});

app.listen(PORT, () => {
    console.log(`🎨 Gallery server running at http://localhost:${PORT}`);
    console.log(`📁 Serving images and videos from: ${GALLERY_FOLDER}`);
});
