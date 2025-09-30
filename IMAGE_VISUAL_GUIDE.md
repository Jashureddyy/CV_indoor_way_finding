# Visual Guide for Image Creation

This guide provides visual mockups and examples for each required image.

---

## 🎨 Image 1: RGB Camera Detection

**Concept:** Indoor hallway with object detection bounding boxes

```
┌─────────────────────────────────────────────────────────┐
│                                                         │
│    ┌──────────────┐                                    │
│    │ EXIT SIGN    │                                    │
│    │ conf: 0.96   │                                    │
│    └──────────────┘                                    │
│                                                         │
│  ┌─────────────┐              ┌─────────────┐         │
│  │   DOOR      │              │   DOOR      │         │
│  │   0.92      │              │   0.88      │         │
│  │             │              │             │         │
│  │             │              │             │         │
│  │             │              │             │         │
│  └─────────────┘              └─────────────┘         │
│                                                         │
│         ┌────────┐                                     │
│         │ SIGN   │                                     │
│         │ 0.85   │                                     │
│         └────────┘                                     │
└─────────────────────────────────────────────────────────┘

Elements:
- Green/cyan bounding boxes (#00FF00)
- Class labels above boxes
- Confidence scores
- Indoor hallway background
```

**How to Create:**
1. Take/find photo of office hallway
2. Run YOLO detection: `python detect.py --source hallway.jpg`
3. Or use online YOLO demo
4. Save output with bounding boxes

---

## 🎨 Image 2: Depth Map Visualization

**Concept:** Side-by-side RGB and depth map

```
┌──────────────────────┬──────────────────────┐
│   RGB IMAGE          │   DEPTH MAP          │
│                      │                      │
│      ┌────┐          │      ┌────┐          │
│      │DOOR│          │      │🔵🔵│          │
│      │    │          │      │🔵🔵│          │
│      │    │          │      │🔵🔵│          │
│      └────┘          │      └────┘          │
│                      │                      │
│   [Hallway view]     │  [Color-coded depth] │
│                      │                      │
│                      │  🔵 = Near (0-2m)    │
│                      │  🟢 = Mid (2-3m)     │
│                      │  🔴 = Far (3-5m)     │
└──────────────────────┴──────────────────────┘

Color Scheme:
- Blue (near): #0000FF → #00FFFF
- Green (mid): #00FF00 → #FFFF00
- Red (far): #FFFF00 → #FF0000
```

**How to Create:**
1. Use ARCore Depth Viewer app (Android)
2. Capture scene with door
3. Export RGB + Depth images
4. Combine side-by-side in image editor
5. Or use Intel RealSense SDK

---

## 🎨 Image 3: YOLO Detection in Hallway

**Concept:** Multiple objects detected in office corridor

```
┌─────────────────────────────────────────────────────────┐
│  Processing: 28ms | FPS: 35                             │
│                                                         │
│    ┌──────────┐                                        │
│    │ elevator │                                        │
│    │  0.91    │                                        │
│    │          │                                        │
│    └──────────┘                                        │
│                                                         │
│  ┌────────┐         ┌────────┐         ┌────────┐    │
│  │ door   │         │ door   │         │ door   │    │
│  │ 0.94   │         │ 0.89   │         │ 0.87   │    │
│  │        │         │        │         │        │    │
│  └────────┘         └────────┘         └────────┘    │
│                                                         │
│              [Office Hallway Scene]                     │
└─────────────────────────────────────────────────────────┘

Key Features:
- Multiple detections
- Varying confidence scores
- Processing time overlay
- Professional office setting
```

**How to Create:**
1. Find office hallway image with multiple doors
2. Run YOLO: `./darknet detect cfg/yolov3.cfg yolov3.weights hallway.jpg`
3. Add processing time text overlay
4. Crop to 700×400px

---

## 🎨 Image 4: OCR Room Number

**Concept:** Close-up of door with OCR detection

```
┌─────────────────────────────────────┐
│                                     │
│         ┌─────────────────┐         │
│         │                 │         │
│         │   ┌─────────┐   │         │
│         │   │ Room 304│   │  ← Door │
│         │   └─────────┘   │         │
│         │                 │         │
│         └─────────────────┘         │
│                                     │
│    ┌───────────────────────┐        │
│    │ Detected: "Room 304"  │        │
│    │ Confidence: 94%       │        │
│    └───────────────────────┘        │
│                                     │
└─────────────────────────────────────┘

Elements:
- Green box around text region
- Recognized text displayed
- Confidence percentage
- Clear, readable room number
```

**How to Create:**
1. Take photo of door with room number
2. Use Google ML Kit Text Recognition
3. Or Tesseract: `tesseract door.jpg output`
4. Add green bounding box in image editor
5. Add text overlay with results

---

## 🎨 Image 5: Keypoint Detection on Handle

**Concept:** Precise localization of door handle

```
┌─────────────────────────────────────┐
│                                     │
│    ┌─────────────────────────┐     │
│    │                         │     │
│    │                         │     │
│    │              🔴         │     │
│    │           (handle)      │     │
│    │                         │     │
│    │                         │     │
│    │         [DOOR]          │     │
│    │                         │     │
│    └─────────────────────────┘     │
│                                     │
│    Keypoint: (x:245, y:180)        │
│    Depth: 1.8m                      │
└─────────────────────────────────────┘

Elements:
- Red dot/circle on handle center
- Optional door bounding box (light color)
- Coordinate display
- Distance measurement
```

**How to Create:**
1. Take photo of door with visible handle
2. Use image editor (Photoshop, GIMP, Figma)
3. Add red circle (10-15px diameter) on handle
4. Add light blue box around door (optional)
5. Add text overlay with coordinates

---

## 🎨 Image 6: Visual Place Recognition

**Concept:** Query image matched to database image

```
┌──────────────────────┬──────────────────────┐
│   QUERY IMAGE        │   MATCHED IMAGE      │
│                      │                      │
│   [Hallway view 1]   │   [Hallway view 2]   │
│   Current location   │   Previous visit     │
│                      │                      │
│   • Different angle  │   • Same location    │
│   • Different light  │   • Different time   │
│   • Different people │   • Recognized!      │
│                      │                      │
└──────────────────────┴──────────────────────┘
         Similarity Score: 0.87 (87%)

Elements:
- Two views of same location
- Different viewpoint/lighting
- Similarity score displayed
- Optional: feature matching lines
```

**How to Create:**
1. Take two photos of same hallway from different angles
2. Or find similar images from dataset
3. Combine side-by-side
4. Add labels: "Query" and "Match"
5. Add similarity score text

---

## 🎨 Image 7: Landmark Graph

**Concept:** Topological map with nodes and edges

```
┌─────────────────────────────────────────────┐
│                                             │
│     🟢 (Start)                              │
│      │                                      │
│      │ 15m                                  │
│      │                                      │
│     🔵────8m────🔵────12m────🔵            │
│    Door       Door         Door            │
│      │                       │              │
│      │ 10m                   │ 6m           │
│      │                       │              │
│     🔴                      🔵              │
│  Elevator                 Door             │
│      │                       │              │
│      │ 8m                    │ 9m           │
│      │                       │              │
│     🔵────────────────────🔴              │
│    Door              (Destination)         │
│                                             │
│  Legend: 🔵 Door  🔴 Elevator/Dest  🟢 Start │
└─────────────────────────────────────────────┘

Elements:
- Nodes: circles (doors, elevators, intersections)
- Edges: lines with distance labels
- Path highlighting (thick line)
- Color coding: green=start, red=destination
```

**How to Create:**
1. Use draw.io or Graphviz
2. Create nodes for landmarks
3. Connect with edges (paths)
4. Highlight shortest path
5. Add distance labels
6. Export as PNG/JPG

---

## 🎨 Image 8: NavCog Interface

**Concept:** Smartphone app showing navigation

```
┌─────────────────────────┐
│  ☰  NavCog      🔊 ⚙️  │
├─────────────────────────┤
│                         │
│  📍 Current Location:   │
│     Near Main Lobby     │
│                         │
│  🎯 Destination:        │
│     Room 304            │
│                         │
│  ➡️  Next Instruction:  │
│                         │
│  "Walk forward 15m,     │
│   then turn right at    │
│   the next door"        │
│                         │
│  📏 Distance: 15m       │
│                         │
│  🚪 Detected:           │
│  • Door (left, 3m)      │
│  • Exit sign (ahead)    │
│                         │
│  [    Continue    ]     │
│                         │
└─────────────────────────┘

Elements:
- Clean mobile UI
- Navigation instructions
- Detected landmarks
- Distance information
- Professional design
```

**How to Create:**
1. Use Figma or Sketch for mockup
2. Create smartphone frame (375×667px)
3. Design UI with navigation elements
4. Export and crop to 600×400px
5. Or screenshot from NavCog paper

---

## 🎨 Image 9: Seeing AI Output

**Concept:** Microsoft Seeing AI app interface

```
┌─────────────────────────┐
│  Seeing AI      🔊 📷   │
├─────────────────────────┤
│                         │
│   [Camera View]         │
│                         │
│   ┌──────────┐          │
│   │  Door    │          │
│   │  0.89    │          │
│   └──────────┘          │
│                         │
│      ┌─────┐            │
│      │Chair│            │
│      │0.92 │            │
│      └─────┘            │
│                         │
│   ┌────────────┐        │
│   │ Room 304   │        │
│   └────────────┘        │
│                         │
│  💬 "I see a door,      │
│     a chair, and        │
│     text: Room 304"     │
│                         │
└─────────────────────────┘

Elements:
- Microsoft Seeing AI branding
- Object detection overlays
- Text recognition
- Audio description text
- Clean mobile interface
```

**How to Create:**
1. Use Figma for mockup
2. Create smartphone interface
3. Add detection overlays
4. Include text description
5. Or screenshot from Seeing AI website

---

## 🛠️ Tools for Image Creation

### 1. Object Detection
- **YOLOv3/v4:** https://github.com/AlexeyAB/darknet
- **Online Demo:** https://www.cv-foundation.org/openaccess/
- **Colab Notebook:** Search "YOLO Colab" on Google

### 2. OCR
- **Google ML Kit:** https://developers.google.com/ml-kit/vision/text-recognition
- **Tesseract:** `brew install tesseract` (Mac) or `apt install tesseract-ocr` (Linux)
- **Online OCR:** https://www.onlineocr.net/

### 3. Depth Maps
- **ARCore Depth Viewer:** Google Play Store (Android)
- **Intel RealSense Viewer:** https://www.intelrealsense.com/sdk-2/
- **Depth Anything:** https://github.com/LiheYoung/Depth-Anything

### 4. UI Mockups
- **Figma:** https://www.figma.com/ (Free)
- **Sketch:** https://www.sketch.com/ (Mac only)
- **Adobe XD:** https://www.adobe.com/products/xd.html
- **Canva:** https://www.canva.com/ (Easy to use)

### 5. Image Editing
- **GIMP:** https://www.gimp.org/ (Free Photoshop alternative)
- **Photopea:** https://www.photopea.com/ (Online Photoshop)
- **Paint.NET:** https://www.getpaint.net/ (Windows)

### 6. Diagram Creation
- **Draw.io:** https://app.diagrams.net/ (Free)
- **Graphviz:** https://graphviz.org/ (Graph visualization)
- **Lucidchart:** https://www.lucidchart.com/

---

## 📥 Quick Download Links

### Research Papers (for screenshots)
1. **NavCog:** https://dl.acm.org/doi/10.1145/2971648.2971750
2. **Seeing AI:** https://www.microsoft.com/en-us/ai/seeing-ai
3. **ARCore Depth:** https://ai.googleblog.com/2020/06/arcore-depth-api-new-dimension-for-ar.html
4. **NetVLAD:** https://www.di.ens.fr/willow/research/netvlad/

### Datasets
1. **COCO:** https://cocodataset.org/#explore
2. **Indoor Scenes:** http://web.mit.edu/torralba/www/indoor.html
3. **NYU Depth:** https://cs.nyu.edu/~silberman/datasets/nyu_depth_v2.html

### Stock Photos
1. **Unsplash:** https://unsplash.com/s/photos/office-hallway
2. **Pexels:** https://www.pexels.com/search/corridor/
3. **Pixabay:** https://pixabay.com/images/search/hallway/

---

## ✅ Quality Checklist

Before using an image:

- [ ] Correct dimensions (700×400 or 600×400)
- [ ] JPEG format, quality 85%
- [ ] File size under 200KB
- [ ] Clear, sharp focus
- [ ] Good lighting
- [ ] Professional appearance
- [ ] Relevant to content
- [ ] Proper attribution (if needed)
- [ ] No watermarks (unless from source)
- [ ] Matches specification requirements

---

## 🎯 Priority Order

If you can only create/find a few images, prioritize in this order:

1. **rgb-camera-detection.jpg** - Most important concept
2. **yolo-detection-example.jpg** - Algorithm demonstration
3. **depth-map-visualization.jpg** - Key technology
4. **navcog-interface.jpg** - Real system example
5. **seeing-ai-output.jpg** - Real system example
6. **ocr-room-number.jpg** - OCR demonstration
7. **vpr-matching.jpg** - Place recognition
8. **landmark-graph.jpg** - Navigation concept
9. **keypoint-door-handle.jpg** - Advanced technique

---

**For complete specifications, see IMAGE_SPECIFICATIONS.md**

