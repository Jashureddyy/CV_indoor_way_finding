#!/bin/bash

# Script to help download and prepare real images for the Indoor Navigation Tutorial
# This script provides guidance and example commands

echo "================================================"
echo "Indoor Navigation Tutorial - Image Setup Helper"
echo "================================================"
echo ""

# Create images directory if it doesn't exist
mkdir -p images
cd images

echo "This script will help you set up real images for the tutorial."
echo ""
echo "Current placeholder images will be replaced with higher quality versions."
echo ""

# Function to download from URL
download_image() {
    local url=$1
    local filename=$2
    echo "Downloading $filename..."
    curl -L -o "$filename" "$url" 2>/dev/null
    if [ $? -eq 0 ]; then
        echo "✅ Downloaded $filename"
    else
        echo "❌ Failed to download $filename"
    fi
}

echo "================================================"
echo "Option 1: Download Sample Images from Research"
echo "================================================"
echo ""
echo "You can manually download images from these sources:"
echo ""
echo "1. NavCog Paper (CMU):"
echo "   https://dl.acm.org/doi/10.1145/2971648.2971750"
echo ""
echo "2. Seeing AI (Microsoft):"
echo "   https://www.microsoft.com/en-us/ai/seeing-ai"
echo ""
echo "3. ARCore Depth API (Google):"
echo "   https://ai.googleblog.com/2020/06/arcore-depth-api-new-dimension-for-ar.html"
echo ""
echo "4. YOLO Detection Examples:"
echo "   https://github.com/pjreddie/darknet/wiki/YOLO:-Real-Time-Object-Detection"
echo ""

echo "================================================"
echo "Option 2: Use High-Quality Placeholder Images"
echo "================================================"
echo ""
echo "Downloading improved placeholder images..."
echo ""

# Download better quality placeholder images with more descriptive text
download_image "https://placehold.co/700x400/2563eb/ffffff?text=RGB+Camera+with+Object+Detection+Bounding+Boxes&font=roboto" "rgb-camera-detection.jpg"

download_image "https://placehold.co/700x400/10b981/ffffff?text=RGB+Image+%7C+Depth+Map+Comparison&font=roboto" "depth-map-visualization.jpg"

download_image "https://placehold.co/700x400/f59e0b/ffffff?text=YOLO+Detection+in+Office+Hallway&font=roboto" "yolo-detection-example.jpg"

download_image "https://placehold.co/600x400/8b5cf6/ffffff?text=OCR+Room+Number+Detection&font=roboto" "ocr-room-number.jpg"

download_image "https://placehold.co/600x400/ec4899/ffffff?text=Keypoint+Detection+Door+Handle&font=roboto" "keypoint-door-handle.jpg"

download_image "https://placehold.co/700x400/06b6d4/ffffff?text=Visual+Place+Recognition+Matching&font=roboto" "vpr-matching.jpg"

download_image "https://placehold.co/700x400/6366f1/ffffff?text=Landmark+Graph+Visualization&font=roboto" "landmark-graph.jpg"

download_image "https://placehold.co/600x400/14b8a6/ffffff?text=NavCog+Interface+Screenshot&font=roboto" "navcog-interface.jpg"

download_image "https://placehold.co/600x400/f97316/ffffff?text=Seeing+AI+Output+Display&font=roboto" "seeing-ai-output.jpg"

echo ""
echo "================================================"
echo "Option 3: Create Your Own Images"
echo "================================================"
echo ""
echo "To create real detection images:"
echo ""
echo "1. YOLO Detection:"
echo "   - Install: pip install opencv-python"
echo "   - Download YOLO weights from: https://pjreddie.com/darknet/yolo/"
echo "   - Run detection on indoor hallway images"
echo ""
echo "2. OCR Detection:"
echo "   - Use Google ML Kit: https://developers.google.com/ml-kit"
echo "   - Or Tesseract: https://github.com/tesseract-ocr/tesseract"
echo "   - Take photo of door with room number"
echo ""
echo "3. Depth Maps:"
echo "   - Use ARCore Depth Viewer app (Android)"
echo "   - Or Intel RealSense SDK"
echo "   - Capture RGB + Depth pairs"
echo ""
echo "4. UI Mockups:"
echo "   - Use Figma: https://www.figma.com/"
echo "   - Or Canva: https://www.canva.com/"
echo "   - Create smartphone interface mockups"
echo ""

echo "================================================"
echo "Option 4: Download from Open Datasets"
echo "================================================"
echo ""
echo "Free datasets with indoor images:"
echo ""
echo "1. COCO Dataset:"
echo "   https://cocodataset.org/"
echo "   - Search for: door, hallway, elevator"
echo ""
echo "2. Indoor Scene Recognition:"
echo "   http://web.mit.edu/torralba/www/indoor.html"
echo ""
echo "3. NYU Depth Dataset:"
echo "   https://cs.nyu.edu/~silberman/datasets/nyu_depth_v2.html"
echo ""
echo "4. Unsplash (Free Stock Photos):"
echo "   https://unsplash.com/s/photos/office-hallway"
echo ""

echo "================================================"
echo "Image Requirements Summary"
echo "================================================"
echo ""
echo "Required images (9 total):"
echo ""
echo "1. rgb-camera-detection.jpg     (700×400px) - RGB with bounding boxes"
echo "2. depth-map-visualization.jpg  (700×400px) - RGB + Depth comparison"
echo "3. yolo-detection-example.jpg   (700×400px) - YOLO in hallway"
echo "4. ocr-room-number.jpg          (600×400px) - OCR on door plate"
echo "5. keypoint-door-handle.jpg     (600×400px) - Keypoint on handle"
echo "6. vpr-matching.jpg             (700×400px) - Place recognition match"
echo "7. landmark-graph.jpg           (700×400px) - Graph visualization"
echo "8. navcog-interface.jpg         (600×400px) - NavCog app UI"
echo "9. seeing-ai-output.jpg         (600×400px) - Seeing AI app UI"
echo ""
echo "Format: JPEG, Quality: 85%, Size: <200KB each"
echo ""

echo "================================================"
echo "Verification"
echo "================================================"
echo ""
echo "Checking current images..."
echo ""

images=(
    "rgb-camera-detection.jpg"
    "depth-map-visualization.jpg"
    "yolo-detection-example.jpg"
    "ocr-room-number.jpg"
    "keypoint-door-handle.jpg"
    "vpr-matching.jpg"
    "landmark-graph.jpg"
    "navcog-interface.jpg"
    "seeing-ai-output.jpg"
)

for img in "${images[@]}"; do
    if [ -f "$img" ]; then
        size=$(du -h "$img" | cut -f1)
        dimensions=$(file "$img" | grep -o '[0-9]\+x[0-9]\+' | head -1)
        echo "✅ $img - $size - $dimensions"
    else
        echo "❌ $img - MISSING"
    fi
done

echo ""
echo "================================================"
echo "Next Steps"
echo "================================================"
echo ""
echo "1. Review IMAGE_SPECIFICATIONS.md for detailed requirements"
echo "2. Replace placeholder images with real images"
echo "3. Ensure all images meet size and quality requirements"
echo "4. Test images in browser: python3 -m http.server 8000"
echo "5. Deploy to GitHub Pages when ready"
echo ""
echo "For detailed specifications, see: IMAGE_SPECIFICATIONS.md"
echo ""
echo "✅ Setup complete!"

