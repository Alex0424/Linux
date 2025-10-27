# Linux

[Linux Page](https://alex0424.github.io/Linux/)


## INFO for Developers

This page is built with MkDocs Material

### Host Locally

1. Install dependencies (recommended inside a venv)
   ```bash
   python3 -m venv .venv
   . .venv/bin/activate
   pip install mkdocs mkdocs-material
   ```
   Or if you already have a requirements file:
   ```bash
   pip install -r requirements.txt
   ```

2. Serve the site for live preview (bind to all interfaces for dev containers):
   ```bash
   mkdocs serve -a 0.0.0.0:8000
   ```
   Open the preview in the host browser:
   ```bash
   "$BROWSER" http://localhost:8000
   ```