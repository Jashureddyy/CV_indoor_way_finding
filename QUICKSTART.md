# Quick Start Guide

Get your Indoor Navigation Tutorial live on GitHub Pages in 5 minutes!

## Prerequisites

- GitHub account
- Git installed on your computer
- Terminal/Command Prompt access

## Step-by-Step Deployment

### 1. Navigate to Project Directory

```bash
cd /Users/jashwanthreddy/Desktop/Cvproject-1
```

### 2. Initialize Git Repository

```bash
git init
git add .
git commit -m "Initial commit: Indoor Navigation Tutorial"
git branch -M main
```

### 3. Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `indoor-navigation-tutorial` (or your choice)
3. Description: "Graduate-level tutorial on CV for blind navigation"
4. Keep it **Public**
5. **Do NOT** initialize with README, .gitignore, or license
6. Click "Create repository"

### 4. Push to GitHub

Replace `YOUR-USERNAME` with your GitHub username:

```bash
git remote add origin https://github.com/YOUR-USERNAME/indoor-navigation-tutorial.git
git push -u origin main
```

### 5. Enable GitHub Pages

1. Go to your repository: `https://github.com/YOUR-USERNAME/indoor-navigation-tutorial`
2. Click **Settings** (top right)
3. Click **Pages** (left sidebar)
4. Under "Source":
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**

### 6. Access Your Live Site

Wait 1-2 minutes, then visit:

```
https://YOUR-USERNAME.github.io/indoor-navigation-tutorial/
```

🎉 **Done!** Your tutorial is now live!

---

## Local Testing (Before Deployment)

Test the site on your computer first:

```bash
# Start local server
python3 -m http.server 8000

# Open browser to: http://localhost:8000
```

Press `Ctrl+C` to stop the server.

---

## Verification Checklist

After deployment, verify:

- [ ] Homepage loads at `https://YOUR-USERNAME.github.io/indoor-navigation-tutorial/`
- [ ] All 7 pages accessible via sidebar navigation
- [ ] Images display correctly
- [ ] Quiz on "Detection Techniques" page works
- [ ] Citations link to bibliography
- [ ] Site is responsive (test on mobile)

---

## Troubleshooting

### "Repository not found" error

**Solution**: Make sure you replaced `YOUR-USERNAME` with your actual GitHub username.

### Images not loading

**Solution**: Images are already set up! If you see broken images, run:

```bash
./setup-images.sh
git add images/
git commit -m "Add placeholder images"
git push
```

### GitHub Pages not enabled

**Solution**: 
1. Go to Settings → Pages
2. Make sure "Source" is set to `main` branch, `/ (root)` folder
3. Click Save and wait 2 minutes

### Changes not showing on live site

**Solution**:
1. Wait 2-5 minutes for GitHub to rebuild
2. Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
3. Check that you pushed changes: `git push origin main`

---

## Next Steps

### Optional Enhancements

1. **Add Audio Tracks**
   - Record 2-3 minute summaries for each page
   - Save as MP3 files in `audio/` directory
   - Replace audio placeholders in HTML

2. **Replace Placeholder Images**
   - Find real images from research papers
   - Replace files in `images/` directory
   - See `images/README.md` for sources

3. **Customize Design**
   - Edit colors in `styles.css`
   - Modify content in HTML files
   - Add your own branding

---

## File Overview

- **index.html** - Introduction and problem definition
- **sensors.html** - Sensor analysis (RGB, depth, LiDAR, IMU)
- **techniques.html** - Detection techniques + interactive quiz
- **context.html** - Place recognition and navigation
- **review.html** - System review (NavCog, Seeing AI)
- **future.html** - Challenges and future directions
- **bibliography.html** - Annotated references
- **styles.css** - Global styling

---

## Getting Help

- **README.md** - Comprehensive documentation
- **DEPLOYMENT.md** - Detailed deployment guide
- **PROJECT_SUMMARY.md** - Complete project overview
- **images/README.md** - Image setup instructions

---

## Quick Commands Reference

```bash
# View local site
python3 -m http.server 8000

# Add changes
git add .
git commit -m "Your commit message"
git push

# Check git status
git status

# View commit history
git log --oneline
```

---

## Success Criteria

Your tutorial is successfully deployed when:

✅ Site loads at `https://YOUR-USERNAME.github.io/indoor-navigation-tutorial/`  
✅ All 7 pages are accessible  
✅ Navigation works smoothly  
✅ Images display correctly  
✅ Quiz is functional  
✅ Citations link properly  

---

## Support

If you encounter issues:

1. Check the troubleshooting section above
2. Review DEPLOYMENT.md for detailed instructions
3. Check GitHub Pages status in repository Settings
4. Verify all files are committed and pushed

---

**Estimated Time**: 5-10 minutes from start to live site

**Good luck with your deployment! 🚀**

