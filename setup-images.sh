#!/bin/bash

# Setup script to download placeholder images for the Indoor Navigation Tutorial
# Run this script from the project root directory

echo "Setting up placeholder images for Indoor Navigation Tutorial..."

# Create images directory if it doesn't exist
mkdir -p images

# Change to images directory
cd images

echo "Downloading placeholder images..."

# Download placeholder images using curl
curl -s -o rgb-camera-detection.jpg "https://placehold.co/700x400/3498db/ffffff?text=RGB+Camera+Detection"
echo "✓ Downloaded rgb-camera-detection.jpg"

curl -s -o depth-map-visualization.jpg "https://placehold.co/700x400/2ecc71/ffffff?text=Depth+Map+Visualization"
echo "✓ Downloaded depth-map-visualization.jpg"

curl -s -o yolo-detection-example.jpg "https://placehold.co/700x400/e74c3c/ffffff?text=YOLO+Detection+Example"
echo "✓ Downloaded yolo-detection-example.jpg"

curl -s -o ocr-room-number.jpg "https://placehold.co/600x400/f39c12/ffffff?text=OCR+Room+Number"
echo "✓ Downloaded ocr-room-number.jpg"

curl -s -o keypoint-door-handle.jpg "https://placehold.co/600x400/9b59b6/ffffff?text=Keypoint+Detection"
echo "✓ Downloaded keypoint-door-handle.jpg"

curl -s -o vpr-matching.jpg "https://placehold.co/700x400/1abc9c/ffffff?text=VPR+Matching"
echo "✓ Downloaded vpr-matching.jpg"

curl -s -o landmark-graph.jpg "https://placehold.co/700x400/34495e/ffffff?text=Landmark+Graph"
echo "✓ Downloaded landmark-graph.jpg"

curl -s -o navcog-interface.jpg "https://placehold.co/600x400/16a085/ffffff?text=NavCog+Interface"
echo "✓ Downloaded navcog-interface.jpg"

curl -s -o seeing-ai-output.jpg "https://placehold.co/600x400/2980b9/ffffff?text=Seeing+AI+Output"
echo "✓ Downloaded seeing-ai-output.jpg"

cd ..

echo ""
echo "✅ All placeholder images downloaded successfully!"
echo ""
echo "Note: These are placeholder images. For production deployment, replace them with:"
echo "  - Actual screenshots from research papers (with proper attribution)"
echo "  - Real detection/OCR output examples"
echo "  - Photos from open datasets or stock photo sites"
echo ""
echo "See images/README.md for detailed instructions on finding appropriate images."

