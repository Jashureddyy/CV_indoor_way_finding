# Images Directory

This directory should contain the following images for the tutorial:

## Required Images

1. **rgb-camera-detection.jpg** (700x400px)
   - RGB camera view showing detected doors and signs with bounding boxes
   - Referenced in: sensors.html

2. **depth-map-visualization.jpg** (700x400px)
   - Side-by-side comparison of RGB image and corresponding depth map
   - Referenced in: sensors.html

3. **yolo-detection-example.jpg** (700x400px)
   - YOLO detection output in an office hallway
   - Referenced in: techniques.html

4. **ocr-room-number.jpg** (600x400px)
   - OCR detection of room number on door plate
   - Referenced in: techniques.html

5. **keypoint-door-handle.jpg** (600x400px)
   - Keypoint detection showing precise location of door handle
   - Referenced in: techniques.html

6. **vpr-matching.jpg** (700x400px)
   - Visual place recognition showing query image matched to database image
   - Referenced in: context.html

7. **landmark-graph.jpg** (700x400px)
   - Visualization of landmark graph showing vertices and edges
   - Referenced in: context.html

8. **navcog-interface.jpg** (600x400px)
   - NavCog smartphone interface showing navigation instructions
   - Referenced in: review.html

9. **seeing-ai-output.jpg** (600x400px)
   - Seeing AI app showing detected objects and text
   - Referenced in: review.html

## Quick Setup with Placeholders

Run these commands from the `images/` directory to create placeholder images:

```bash
# Using curl with placehold.co service
curl -o rgb-camera-detection.jpg "https://placehold.co/700x400/3498db/ffffff?text=RGB+Camera+Detection"
curl -o depth-map-visualization.jpg "https://placehold.co/700x400/2ecc71/ffffff?text=Depth+Map+Visualization"
curl -o yolo-detection-example.jpg "https://placehold.co/700x400/e74c3c/ffffff?text=YOLO+Detection+Example"
curl -o ocr-room-number.jpg "https://placehold.co/600x400/f39c12/ffffff?text=OCR+Room+Number"
curl -o keypoint-door-handle.jpg "https://placehold.co/600x400/9b59b6/ffffff?text=Keypoint+Detection"
curl -o vpr-matching.jpg "https://placehold.co/700x400/1abc9c/ffffff?text=VPR+Matching"
curl -o landmark-graph.jpg "https://placehold.co/700x400/34495e/ffffff?text=Landmark+Graph"
curl -o navcog-interface.jpg "https://placehold.co/600x400/16a085/ffffff?text=NavCog+Interface"
curl -o seeing-ai-output.jpg "https://placehold.co/600x400/2980b9/ffffff?text=Seeing+AI+Output"
```

## Finding Real Images

### Academic Sources
- **NavCog paper**: https://dl.acm.org/doi/10.1145/2971648.2971750
- **Seeing AI**: https://www.microsoft.com/en-us/ai/seeing-ai
- **ARCore Depth API**: https://ai.googleblog.com/2020/06/arcore-depth-api-new-dimension-for-ar.html
- **YOLO papers**: https://arxiv.org/abs/1910.01271

### Open Datasets
- **COCO Dataset**: https://cocodataset.org/ (object detection examples)
- **Indoor Scene Recognition**: http://web.mit.edu/torralba/www/indoor.html
- **Google Open Images**: https://storage.googleapis.com/openimages/web/index.html

### Stock Photo Sources (Free)
- **Unsplash**: https://unsplash.com/ (search: hallway, door, elevator, office)
- **Pexels**: https://www.pexels.com/
- **Pixabay**: https://pixabay.com/

### Creating Your Own
- Use YOLO demo tools to generate detection visualizations
- Use Google ML Kit or Tesseract to generate OCR examples
- Use ARCore Depth API samples to capture depth maps
- Take photos of indoor environments and annotate them

## Image Attribution

When using images from external sources, ensure proper attribution in the figure captions. The HTML already includes citation links to the bibliography.

## Image Optimization

Before deployment, optimize images for web:

```bash
# Using ImageMagick
mogrify -quality 85 -resize 700x400 *.jpg

# Using online tools
# - TinyPNG: https://tinypng.com/
# - Squoosh: https://squoosh.app/
```

This ensures fast page loading while maintaining visual quality.

