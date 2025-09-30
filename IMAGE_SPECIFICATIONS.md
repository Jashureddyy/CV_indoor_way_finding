# Image Specifications for Indoor Navigation Tutorial

This document provides detailed specifications for all 9 images required in the tutorial.

---

## 📋 Quick Reference Table

| # | Filename | Page | Size | Description |
|---|----------|------|------|-------------|
| 1 | rgb-camera-detection.jpg | sensors.html | 700×400px | RGB camera with object detection bounding boxes |
| 2 | depth-map-visualization.jpg | sensors.html | 700×400px | Side-by-side RGB and depth map comparison |
| 3 | yolo-detection-example.jpg | techniques.html | 700×400px | YOLO detection in office hallway |
| 4 | ocr-room-number.jpg | techniques.html | 600×400px | OCR detecting room number on door |
| 5 | keypoint-door-handle.jpg | techniques.html | 600×400px | Keypoint detection on door handle |
| 6 | vpr-matching.jpg | context.html | 700×400px | Visual place recognition matching |
| 7 | landmark-graph.jpg | context.html | 700×400px | Landmark graph visualization |
| 8 | navcog-interface.jpg | review.html | 600×400px | NavCog app interface |
| 9 | seeing-ai-output.jpg | review.html | 600×400px | Seeing AI app output |

---

## 🖼️ Detailed Image Specifications

### Image 1: RGB Camera Detection
**Filename:** `rgb-camera-detection.jpg`  
**Location:** `images/rgb-camera-detection.jpg`  
**Used in:** sensors.html (Figure 1)  
**Dimensions:** 700×400 pixels  
**Format:** JPEG (quality 85%)

**Content Requirements:**
- Indoor hallway or corridor scene
- Multiple detected objects with bounding boxes:
  - At least 2 doors (labeled "door")
  - 1 exit sign (labeled "exit sign")
  - 1-2 room number signs (labeled "sign")
- Bounding boxes should be:
  - Color: Bright green or cyan (#00FF00 or #00FFFF)
  - Line thickness: 2-3 pixels
  - Labels above or inside boxes
  - Confidence scores (e.g., "door 0.95")

**Visual Style:**
- Clear, well-lit indoor environment
- Professional office or university building
- RGB color image (not grayscale)
- Sharp focus, no motion blur

**Example Sources:**
- COCO dataset with YOLO annotations
- Run YOLO on indoor hallway images
- Microsoft COCO detection examples
- OpenCV detection tutorials

**Caption Text:**
"Figure 1: RGB camera output with object detection bounding boxes highlighting doors, exit signs, and room numbers. Source: [2]"

---

### Image 2: Depth Map Visualization
**Filename:** `depth-map-visualization.jpg`  
**Location:** `images/depth-map-visualization.jpg`  
**Used in:** sensors.html (Figure 2)  
**Dimensions:** 700×400 pixels  
**Format:** JPEG (quality 85%)

**Content Requirements:**
- Split-screen or side-by-side layout:
  - **Left half:** RGB camera image of indoor scene with door
  - **Right half:** Corresponding depth map
- Depth map visualization:
  - Color-coded by distance (heatmap)
  - Blue/cool colors = near objects (0-2 meters)
  - Red/warm colors = far objects (3-5 meters)
  - Clear depth gradient visible
- Same scene in both images (aligned)
- Door should be clearly visible in both

**Visual Style:**
- Professional depth visualization
- Clear color legend (optional but helpful)
- High contrast between near/far objects
- Clean, scientific presentation

**Example Sources:**
- ARCore Depth API examples (Google AI Blog)
- Intel RealSense depth examples
- NYU Depth Dataset
- Create using ARCore Depth Viewer app

**Caption Text:**
"Figure 2: RGB image (left) and corresponding ARCore depth map (right), with color indicating distance (blue=near, red=far). Depth information enables precise distance measurement to the detected door. Source: [4]"

---

### Image 3: YOLO Detection Example
**Filename:** `yolo-detection-example.jpg`  
**Location:** `images/yolo-detection-example.jpg`  
**Used in:** techniques.html (Figure 3)  
**Dimensions:** 700×400 pixels  
**Format:** JPEG (quality 85%)

**Content Requirements:**
- Office hallway scene with multiple landmarks
- YOLO detection bounding boxes on:
  - 2-3 doors
  - 1 elevator (if visible)
  - Exit sign or directional sign
- Each detection should show:
  - Bounding box (green or cyan)
  - Class label (e.g., "door", "elevator")
  - Confidence score (e.g., "0.88", "0.92")
- Processing time overlay (optional): "28 ms" or "35 FPS"

**Visual Style:**
- Real-world indoor environment
- Multiple objects at different distances
- Professional building interior
- Good lighting conditions

**Example Sources:**
- YOLO demo outputs
- Darknet YOLO examples
- Run YOLOv3/v4 on indoor images
- Computer vision research papers

**Caption Text:**
"Figure 3: YOLO-Nano detection output in an office hallway, showing bounding boxes and confidence scores for detected doors and elevator. Processing time: 28 ms on Snapdragon 865 GPU."

---

### Image 4: OCR Room Number
**Filename:** `ocr-room-number.jpg`  
**Location:** `images/ocr-room-number.jpg`  
**Used in:** techniques.html (Figure 4)  
**Dimensions:** 600×400 pixels  
**Format:** JPEG (quality 85%)

**Content Requirements:**
- Close-up of door with room number plate
- Room number clearly visible (e.g., "304", "Room 304", "3-101")
- OCR detection overlay:
  - Green bounding box around text region
  - Recognized text displayed (e.g., "Room 304")
  - Confidence score (e.g., "94% confidence")
- Text should be:
  - Clear and legible
  - Standard font (not handwritten)
  - Good contrast with background

**Visual Style:**
- Professional door plate or sign
- Well-lit, no shadows on text
- Sharp focus on text
- Typical office/university door

**Example Sources:**
- Google ML Kit text recognition demos
- Tesseract OCR examples
- Take photo of door with room number
- Text detection research papers

**Caption Text:**
"Figure 4: OCR output showing detected text region (green box) and recognized text 'Room 304' with 94% confidence. Source: Google ML Kit demonstration."

---

### Image 5: Keypoint Detection on Door Handle
**Filename:** `keypoint-door-handle.jpg`  
**Location:** `images/keypoint-door-handle.jpg`  
**Used in:** techniques.html (Figure 5)  
**Dimensions:** 600×400 pixels  
**Format:** JPEG (quality 85%)

**Content Requirements:**
- Door with visible handle
- Keypoint detection visualization:
  - Red dot or circle on door handle center
  - Optional: skeleton/lines showing door structure
  - Coordinate overlay (optional): "(x: 245, y: 180)"
- Door bounding box (optional, in lighter color)
- Clear indication of precise handle location

**Visual Style:**
- Close-up or medium shot of door
- Handle clearly visible
- Professional interior door
- Good lighting on handle

**Example Sources:**
- OpenPose keypoint examples (adapted)
- Custom keypoint detection demos
- Computer vision research papers
- Create using image editing (add red dot to handle)

**Caption Text:**
"Figure 5: Keypoint detection output showing precise localization of door handle (red dot) within detected door region. Combined with depth data, this enables 3D position guidance for grasping."

---

### Image 6: Visual Place Recognition Matching
**Filename:** `vpr-matching.jpg`  
**Location:** `images/vpr-matching.jpg`  
**Used in:** context.html (Figure 6)  
**Dimensions:** 700×400 pixels  
**Format:** JPEG (quality 85%)

**Content Requirements:**
- Split-screen layout:
  - **Left:** Query image (current view)
  - **Right:** Matched database image (previous view)
- Same location but different:
  - Viewpoint (slightly different angle)
  - Lighting (different time/conditions)
  - Dynamic elements (different people/objects)
- Visual indicators:
  - "Query" label on left
  - "Match" label on right
  - Similarity score: "0.87" or "87% match"
  - Optional: connecting lines between matched features

**Visual Style:**
- Indoor corridor or lobby
- Recognizable location features
- Professional building interior
- Clear visual similarity despite differences

**Example Sources:**
- NetVLAD paper examples
- Place recognition research papers
- Create by taking two photos of same location
- Visual SLAM datasets

**Caption Text:**
"Figure 6: Visual Place Recognition example. Query image (left) is matched to database image (right) despite different viewpoint and lighting. Similarity score: 0.87. Source: [5]"

---

### Image 7: Landmark Graph Visualization
**Filename:** `landmark-graph.jpg`  
**Location:** `images/landmark-graph.jpg`  
**Used in:** context.html (Figure 7)  
**Dimensions:** 700×400 pixels  
**Format:** JPEG (quality 85%)

**Content Requirements:**
- Top-down floor plan or schematic view
- Graph visualization with:
  - **Nodes (vertices):** Circles representing landmarks
    - Doors (blue circles)
    - Elevators (red circles)
    - Intersections (yellow circles)
  - **Edges:** Lines connecting nodes (paths)
  - **Labels:** Room numbers or landmark IDs
- Path highlighting:
  - Current location (green node)
  - Destination (red node)
  - Shortest path (thick green line)
- Distance labels on edges (optional): "15m", "8m"

**Visual Style:**
- Clean, schematic diagram
- Clear node and edge visualization
- Professional graph layout
- Easy to understand topology

**Example Sources:**
- NavCog system diagrams
- SLAM map visualizations
- Create using graph visualization tools (Graphviz, draw.io)
- Robotics navigation papers

**Caption Text:**
"Figure 7: Landmark graph visualization for an office floor. Vertices (circles) represent doors and elevators; edges (lines) represent navigable paths. Shortest path from current location (green) to destination (red) is highlighted. Source: [1]"

---

### Image 8: NavCog Interface
**Filename:** `navcog-interface.jpg`  
**Location:** `images/navcog-interface.jpg`  
**Used in:** review.html (Figure 8)  
**Dimensions:** 600×400 pixels  
**Format:** JPEG (quality 85%)

**Content Requirements:**
- Smartphone screen showing NavCog app
- Interface elements:
  - Turn-by-turn navigation instructions
  - Current location indicator
  - Detected landmarks list
  - Distance to next waypoint
  - Map or route visualization (optional)
- Text should be readable
- Professional app interface

**Visual Style:**
- Clean smartphone UI
- Clear, readable text
- Professional app design
- Realistic mobile interface

**Example Sources:**
- NavCog research paper (Ahmetovic et al. 2016)
- CMU NavCog project website
- Accessibility app screenshots
- Create mockup if needed

**Caption Text:**
"Figure 8: NavCog user interface displaying turn-by-turn instructions and detected landmarks. The system provides audio feedback synchronized with visual display. Source: [1]"

---

### Image 9: Seeing AI Output
**Filename:** `seeing-ai-output.jpg`  
**Location:** `images/seeing-ai-output.jpg`  
**Used in:** review.html (Figure 9)  
**Dimensions:** 600×400 pixels  
**Format:** JPEG (quality 85%)

**Content Requirements:**
- Smartphone screen showing Seeing AI app
- Scene with detected objects:
  - Door (labeled)
  - Chair or furniture (labeled)
  - Room number or text (recognized)
- Interface elements:
  - Object labels with confidence
  - Text recognition output
  - Scene description (optional)
- Microsoft Seeing AI branding (if available)

**Visual Style:**
- Clean smartphone UI
- Clear object detection overlays
- Professional app interface
- Realistic mobile screen

**Example Sources:**
- Microsoft Seeing AI website
- Microsoft Research publications
- App store screenshots
- Accessibility technology demos

**Caption Text:**
"Figure 9: Seeing AI output showing detected objects (door, chair) and recognized text (room number). The app provides audio descriptions of detected elements. Source: [2]"

---

## 🎨 General Image Guidelines

### Technical Requirements
- **Format:** JPEG (.jpg)
- **Quality:** 85% (good balance of quality and file size)
- **Color Space:** sRGB
- **Resolution:** 72-96 DPI (web standard)
- **File Size:** Target <200KB per image

### Visual Quality
- ✅ Sharp focus, no blur
- ✅ Good lighting, no harsh shadows
- ✅ High contrast for readability
- ✅ Professional appearance
- ✅ Clear subject matter
- ❌ No watermarks (unless from source)
- ❌ No excessive compression artifacts
- ❌ No distracting backgrounds

### Accessibility
- High contrast between elements
- Clear, readable text overlays
- Color-blind friendly color schemes
- Descriptive captions provided

---

## 📥 Where to Find Images

### 1. Research Papers (Best Quality)
- **NavCog Paper:** https://dl.acm.org/doi/10.1145/2971648.2971750
- **Seeing AI:** https://www.microsoft.com/en-us/ai/seeing-ai
- **ARCore Depth:** https://ai.googleblog.com/2020/06/arcore-depth-api-new-dimension-for-ar.html
- **NetVLAD Paper:** IEEE CVPR 2016 proceedings

### 2. Open Datasets
- **COCO Dataset:** https://cocodataset.org/
- **NYU Depth Dataset:** https://cs.nyu.edu/~silberman/datasets/nyu_depth_v2.html
- **Indoor Scene Recognition:** http://web.mit.edu/torralba/www/indoor.html
- **Google Open Images:** https://storage.googleapis.com/openimages/web/index.html

### 3. Demo Tools (Create Your Own)
- **YOLO Demo:** https://pjreddie.com/darknet/yolo/
- **Google ML Kit:** https://developers.google.com/ml-kit
- **ARCore Depth Viewer:** Google Play Store
- **Tesseract OCR:** https://github.com/tesseract-ocr/tesseract

### 4. Stock Photos (Base Images)
- **Unsplash:** https://unsplash.com/ (search: hallway, door, office)
- **Pexels:** https://www.pexels.com/
- **Pixabay:** https://pixabay.com/

### 5. Create Diagrams
- **Draw.io:** https://app.diagrams.net/ (for graphs)
- **Figma:** https://www.figma.com/ (for UI mockups)
- **Canva:** https://www.canva.com/ (for visualizations)

---

## 🛠️ Image Creation Workflow

### Option 1: Use Research Paper Images
1. Download papers (NavCog, Seeing AI, ARCore, NetVLAD)
2. Extract figures from PDFs
3. Crop and resize to specifications
4. Save as JPEG with proper naming
5. Add proper attribution in captions

### Option 2: Create Using Demo Tools
1. Download YOLO/ML Kit demos
2. Run on indoor hallway images
3. Screenshot detection outputs
4. Crop and resize
5. Save with proper naming

### Option 3: Create Mockups
1. Use Figma or Canva
2. Create smartphone UI mockups
3. Add detection overlays
4. Export at specified dimensions
5. Save as JPEG

### Option 4: Combine Stock + Annotations
1. Download indoor hallway photos
2. Use image editor (Photoshop, GIMP)
3. Add bounding boxes and labels
4. Add text overlays
5. Export at specifications

---

## ✅ Image Checklist

Before adding images to the website:

- [ ] All 9 images created/downloaded
- [ ] Correct filenames (match specifications)
- [ ] Correct dimensions (700×400 or 600×400)
- [ ] JPEG format, quality 85%
- [ ] File size <200KB each
- [ ] Clear, professional appearance
- [ ] Placed in `images/` directory
- [ ] Captions match image content
- [ ] Attribution added where needed
- [ ] Tested in browser (images load correctly)

---

## 📝 Quick Setup Script

Use this script to verify image setup:

```bash
#!/bin/bash
cd images/

echo "Checking required images..."
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
        echo "✅ $img ($size)"
    else
        echo "❌ $img - MISSING"
    fi
done
```

---

## 🎯 Priority Recommendations

### Must-Have (Critical)
1. **rgb-camera-detection.jpg** - Core concept visualization
2. **yolo-detection-example.jpg** - Algorithm demonstration
3. **depth-map-visualization.jpg** - Key technology explanation

### Important (High Priority)
4. **ocr-room-number.jpg** - OCR demonstration
5. **navcog-interface.jpg** - Real system example
6. **seeing-ai-output.jpg** - Real system example

### Nice-to-Have (Medium Priority)
7. **keypoint-door-handle.jpg** - Advanced technique
8. **vpr-matching.jpg** - Context awareness
9. **landmark-graph.jpg** - Navigation concept

---

**Note:** Placeholder images are currently in place. Replace them with real images following these specifications for production deployment.

