# Deployment Guide

## Quick Start: Deploy to GitHub Pages in 5 Minutes

### Step 1: Create GitHub Repository

```bash
# Initialize git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Indoor Navigation Tutorial"

# Create main branch
git branch -M main
```

### Step 2: Push to GitHub

```bash
# Replace YOUR-USERNAME and YOUR-REPO-NAME with your GitHub username and desired repository name
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub: `https://github.com/YOUR-USERNAME/YOUR-REPO-NAME`
2. Click on **Settings** (top right)
3. Scroll down to **Pages** section (left sidebar)
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**
6. Wait 1-2 minutes for deployment
7. Your site will be live at: `https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/`

## Local Testing

Before deploying, test the site locally:

### Option 1: Python HTTP Server (Recommended)

```bash
# Python 3
python3 -m http.server 8000

# Then open: http://localhost:8000
```

### Option 2: Node.js HTTP Server

```bash
# Install http-server globally (one time)
npm install -g http-server

# Run server
http-server

# Then open: http://localhost:8080
```

### Option 3: VS Code Live Server Extension

1. Install "Live Server" extension in VS Code
2. Right-click on `index.html`
3. Select "Open with Live Server"

## Verification Checklist

Before deploying, verify:

- [ ] All 7 HTML pages load correctly
- [ ] Navigation sidebar works on all pages
- [ ] All internal links work (citations, navigation)
- [ ] All 9 images display (even if placeholders)
- [ ] Interactive quiz on techniques.html works
- [ ] CSS styling is consistent across pages
- [ ] Pages are responsive (test on mobile view)
- [ ] No console errors in browser developer tools

## Post-Deployment Tasks

### 1. Add Audio Tracks

Create audio summaries for each page:

```bash
mkdir audio
# Add your MP3 files: intro-audio.mp3, sensors-audio.mp3, etc.
```

Then replace the audio placeholder sections in each HTML file with:

```html
<audio controls style="width: 100%; margin: 20px 0;">
    <source src="audio/PAGE-NAME-audio.mp3" type="audio/mpeg">
    Your browser does not support the audio element.
</audio>
```

### 2. Replace Placeholder Images

Replace the placeholder images in the `images/` directory with real images:

- Screenshots from research papers (with attribution)
- Real YOLO/OCR detection outputs
- Photos from open datasets
- Custom visualizations

See `images/README.md` for detailed instructions.

### 3. Customize Content

If needed, customize:

- **Colors**: Edit CSS variables in `styles.css`
- **Content**: Update HTML files with additional information
- **References**: Add more references to `bibliography.html`

## Troubleshooting

### Images Not Loading

**Problem**: Images show broken link icon

**Solution**:
- Verify images exist in `images/` directory
- Check image filenames match exactly (case-sensitive)
- Run `./setup-images.sh` to download placeholders

### CSS Not Applied

**Problem**: Pages show unstyled HTML

**Solution**:
- Verify `styles.css` exists in root directory
- Check browser console for 404 errors
- Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)

### Quiz Not Working

**Problem**: Quiz submit button does nothing

**Solution**:
- Check browser console for JavaScript errors
- Verify `techniques.html` includes the `<script>` section
- Ensure JavaScript is enabled in browser

### GitHub Pages Not Updating

**Problem**: Changes not visible on live site

**Solution**:
- Wait 2-5 minutes for GitHub Pages to rebuild
- Clear browser cache
- Check GitHub Actions tab for build errors
- Verify you pushed changes: `git push origin main`

## Advanced Configuration

### Custom Domain

To use a custom domain (e.g., `navigation.yourdomain.com`):

1. Add a `CNAME` file to repository root:
   ```
   navigation.yourdomain.com
   ```

2. Configure DNS with your domain provider:
   - Add CNAME record pointing to `YOUR-USERNAME.github.io`

3. In GitHub Settings → Pages, enter your custom domain

### Analytics

Add Google Analytics to track visitors:

1. Create Google Analytics account
2. Get tracking ID
3. Add tracking code to `<head>` section of all HTML files

### SEO Optimization

Improve search engine visibility:

1. Add meta descriptions to each page:
   ```html
   <meta name="description" content="Graduate-level tutorial on computer vision for indoor navigation">
   ```

2. Create `sitemap.xml`:
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
     <url><loc>https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/</loc></url>
     <url><loc>https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/sensors.html</loc></url>
     <!-- Add all pages -->
   </urlset>
   ```

3. Create `robots.txt`:
   ```
   User-agent: *
   Allow: /
   Sitemap: https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/sitemap.xml
   ```

## Maintenance

### Regular Updates

- Update content as new research is published
- Replace placeholder images with real ones
- Add new references to bibliography
- Fix any broken links or typos

### Monitoring

- Check GitHub Pages status regularly
- Monitor for broken links using tools like [W3C Link Checker](https://validator.w3.org/checklink)
- Test on different browsers and devices

## Support Resources

- **GitHub Pages Docs**: https://docs.github.com/en/pages
- **HTML/CSS Reference**: https://developer.mozilla.org/en-US/
- **Web Accessibility**: https://www.w3.org/WAI/
- **Responsive Design**: https://web.dev/responsive-web-design-basics/

## License and Attribution

This tutorial is provided for educational purposes. When using:

- Cite appropriately in academic contexts
- Maintain attribution to original sources
- Follow licensing terms for any external images/content used

---

**Questions?** Check the main README.md or create an issue in the GitHub repository.

