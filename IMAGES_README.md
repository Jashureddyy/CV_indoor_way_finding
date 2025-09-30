# Image Requirements - Quick Reference

This is a quick reference guide for the 9 images needed in the Indoor Navigation Tutorial.

---

## 📋 Complete Image List

| # | Filename | Page | Size | Type | Description |
|---|----------|------|------|------|-------------|
| 1 | `rgb-camera-detection.jpg` | sensors.html | 700×400 | Detection | RGB camera with object detection boxes |
| 2 | `depth-map-visualization.jpg` | sensors.html | 700×400 | Comparison | RGB vs Depth map side-by-side |
| 3 | `yolo-detection-example.jpg` | techniques.html | 700×400 | Detection | YOLO detecting doors/elevators |
| 4 | `ocr-room-number.jpg` | techniques.html | 600×400 | OCR | Text recognition on door plate |
| 5 | `keypoint-door-handle.jpg` | techniques.html | 600×400 | Keypoint | Precise handle localization |
| 6 | `vpr-matching.jpg` | context.html | 700×400 | Matching | Place recognition comparison |
| 7 | `landmark-graph.jpg` | context.html | 700×400 | Diagram | Navigation graph topology |
| 8 | `navcog-interface.jpg` | review.html | 600×400 | UI | NavCog app screenshot |
| 9 | `seeing-ai-output.jpg` | review.html | 600×400 | UI | Seeing AI app screenshot |

---

## 🎯 Quick Specifications

### Technical Requirements
- **Format:** JPEG (.jpg)
- **Quality:** 85%
- **Sizes:** 700×400px or 600×400px
- **File Size:** <200KB each
- **Color Space:** sRGB
- **Location:** `images/` directory

### Visual Requirements
- Sharp focus, no blur
- Good lighting
- High contrast
- Professional appearance
- Clear subject matter
- No watermarks (unless from source)

---

## 📚 Documentation Files

Three comprehensive guides have been created:

### 1. **IMAGE_SPECIFICATIONS.md** (Main Reference)
Complete technical specifications for each image including:
- Exact dimensions and format requirements
- Detailed content requirements
- Visual style guidelines
- Caption text for each image
- Where to find/download images
- Creation workflow options
- Quality checklist

**Use this for:** Detailed requirements and specifications

### 2. **IMAGE_VISUAL_GUIDE.md** (Visual Reference)
Visual mockups and examples including:
- ASCII art representations of each image
- Layout diagrams
- Color schemes
- Key elements to include
- Tools for creation
- Priority order
- Quick download links

**Use this for:** Understanding what each image should look like

### 3. **download-real-images.sh** (Helper Script)
Executable script that:
- Downloads improved placeholder images
- Provides guidance on finding real images
- Lists all required images
- Verifies current image status
- Shows next steps

**Use this for:** Quick setup and verification

---

## 🚀 Quick Start

### Option 1: Use Current Placeholders (Fastest)
The website already has placeholder images. You can deploy immediately:

```bash
# Verify images exist
ls -lh images/

# Test locally
python3 -m http.server 8000

# Deploy to GitHub Pages (see QUICKSTART.md)
```

### Option 2: Download Better Placeholders
```bash
# Run the helper script
./download-real-images.sh

# This downloads improved placeholder images with descriptive text
```

### Option 3: Create Real Images (Best Quality)
```bash
# 1. Read the specifications
open IMAGE_SPECIFICATIONS.md

# 2. Review visual examples
open IMAGE_VISUAL_GUIDE.md

# 3. Create/download images following specifications

# 4. Place in images/ directory with correct filenames

# 5. Verify
./download-real-images.sh
```

---

## 🔍 Where to Find Images

### Research Papers (Best Source)
- **NavCog Paper:** https://dl.acm.org/doi/10.1145/2971648.2971750
- **Seeing AI:** https://www.microsoft.com/en-us/ai/seeing-ai
- **ARCore Depth:** https://ai.googleblog.com/2020/06/arcore-depth-api-new-dimension-for-ar.html
- **NetVLAD:** https://www.di.ens.fr/willow/research/netvlad/

### Open Datasets
- **COCO Dataset:** https://cocodataset.org/
- **NYU Depth:** https://cs.nyu.edu/~silberman/datasets/nyu_depth_v2.html
- **Indoor Scenes:** http://web.mit.edu/torralba/www/indoor.html

### Create Your Own
- **YOLO Demo:** https://pjreddie.com/darknet/yolo/
- **Google ML Kit:** https://developers.google.com/ml-kit
- **Figma (UI Mockups):** https://www.figma.com/

### Stock Photos (Base Images)
- **Unsplash:** https://unsplash.com/s/photos/office-hallway
- **Pexels:** https://www.pexels.com/search/corridor/
- **Pixabay:** https://pixabay.com/images/search/hallway/

---

## 🛠️ Tools for Creation

### Object Detection
- **YOLOv3/v4:** https://github.com/AlexeyAB/darknet
- **Online YOLO Demo:** Various available online
- **Google Colab:** Search "YOLO Colab notebook"

### OCR
- **Google ML Kit:** https://developers.google.com/ml-kit/vision/text-recognition
- **Tesseract:** `brew install tesseract` (Mac)
- **Online OCR:** https://www.onlineocr.net/

### Depth Maps
- **ARCore Depth Viewer:** Google Play Store (Android)
- **Intel RealSense:** https://www.intelrealsense.com/
- **Depth Anything:** https://github.com/LiheYoung/Depth-Anything

### UI Mockups
- **Figma:** https://www.figma.com/ (Free, recommended)
- **Canva:** https://www.canva.com/ (Easy to use)
- **Adobe XD:** https://www.adobe.com/products/xd.html

### Image Editing
- **GIMP:** https://www.gimp.org/ (Free)
- **Photopea:** https://www.photopea.com/ (Online)
- **Paint.NET:** https://www.getpaint.net/ (Windows)

### Diagrams
- **Draw.io:** https://app.diagrams.net/ (Free, recommended)
- **Graphviz:** https://graphviz.org/
- **Lucidchart:** https://www.lucidchart.com/

---

## 📝 Image Descriptions

### 1. RGB Camera Detection (700×400)
Indoor hallway with green bounding boxes around detected objects (doors, exit signs, room numbers). Shows confidence scores.

### 2. Depth Map Visualization (700×400)
Side-by-side comparison: RGB image on left, color-coded depth map on right. Blue=near, red=far.

### 3. YOLO Detection Example (700×400)
Office hallway with YOLO detecting multiple doors and elevator. Shows processing time (28ms).

### 4. OCR Room Number (600×400)
Close-up of door with room number plate. Green box around text, recognized text displayed with confidence.

### 5. Keypoint Door Handle (600×400)
Door with red dot precisely marking handle location. Shows coordinates and depth.

### 6. VPR Matching (700×400)
Two views of same location from different angles/lighting. Shows similarity score (0.87).

### 7. Landmark Graph (700×400)
Top-down graph visualization with nodes (doors, elevators) and edges (paths). Shortest path highlighted.

### 8. NavCog Interface (600×400)
Smartphone screen showing NavCog app with turn-by-turn instructions and detected landmarks.

### 9. Seeing AI Output (600×400)
Smartphone screen showing Seeing AI app with object detection and text recognition.

---

## ✅ Verification Checklist

Before deploying, verify:

- [ ] All 9 images present in `images/` directory
- [ ] Correct filenames (exact match required)
- [ ] Correct dimensions (700×400 or 600×400)
- [ ] JPEG format (.jpg extension)
- [ ] File sizes under 200KB
- [ ] Images load correctly in browser
- [ ] Professional appearance
- [ ] Clear and readable content

**Run verification:**
```bash
./download-real-images.sh
```

---

## 🎯 Priority Recommendations

If you can only create/find some images, prioritize:

### Must-Have (Critical)
1. **rgb-camera-detection.jpg** - Core concept
2. **yolo-detection-example.jpg** - Algorithm demo
3. **depth-map-visualization.jpg** - Key technology

### Important (High Priority)
4. **ocr-room-number.jpg** - OCR demonstration
5. **navcog-interface.jpg** - Real system
6. **seeing-ai-output.jpg** - Real system

### Nice-to-Have (Medium Priority)
7. **keypoint-door-handle.jpg** - Advanced technique
8. **vpr-matching.jpg** - Context awareness
9. **landmark-graph.jpg** - Navigation concept

---

## 📞 Need Help?

### For Detailed Specifications
→ Read **IMAGE_SPECIFICATIONS.md**

### For Visual Examples
→ Read **IMAGE_VISUAL_GUIDE.md**

### For Quick Setup
→ Run **./download-real-images.sh**

### For Deployment
→ Read **QUICKSTART.md**

---

## 🎉 Current Status

✅ **Placeholder images are already in place**  
✅ **Website works with current images**  
✅ **Ready for deployment to GitHub Pages**

You can:
1. **Deploy now** with placeholder images
2. **Replace later** with real images (no code changes needed)
3. **Gradually improve** images over time

The website is fully functional with the current placeholder images. Replacing them with real images will enhance visual quality but is not required for deployment.

---

**Quick Commands:**

```bash
# Verify images
ls -lh images/

# Test website
python3 -m http.server 8000

# Download better placeholders
./download-real-images.sh

# Deploy to GitHub Pages
# (See QUICKSTART.md for instructions)
```

---

**All image documentation is complete and ready to use!** 🎨

