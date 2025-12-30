#!/bin/bash

# PositiveVocab Gallery Setup Script

echo "🎨 PositiveVocab Creative Gallery Setup"
echo "========================================"
echo ""

# Check if Node.js is installed
if command -v node &> /dev/null; then
    echo "✅ Node.js found: $(node --version)"
    echo "📦 Installing dependencies..."
    npm install
    echo ""
    echo "🚀 Starting server..."
    echo "📍 Gallery URL: http://localhost:3000/gallery.html"
    npm start
else
    echo "ℹ️  Node.js not found. Trying PHP server..."
    echo ""
    
    if command -v php &> /dev/null; then
        echo "✅ PHP found: $(php --version | head -n 1)"
        echo "🚀 Starting PHP server..."
        echo "📍 Gallery URL: http://localhost:3000/gallery.html"
        php -S localhost:3000
    else
        echo "⚠️  Neither Node.js nor PHP found."
        echo ""
        echo "Options:"
        echo "1. Install Node.js and run: npm install && npm start"
        echo "2. Install PHP and run: php -S localhost:3000"
        echo "3. Open gallery.html directly in your browser (uses fallback)"
        echo ""
        echo "Visit https://nodejs.org for Node.js installation"
        echo "Visit https://www.php.net for PHP installation"
    fi
fi
