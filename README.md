# Technology Documentation

[View the page](https://docs.alexanderlindholm.net/)

### Host Locally

1. Install dependencies (recommended inside a venv)
   requirements file:
   ```bash
   python -m venv .venv && . .venv/bin/activate && pip install -r requirements.txt
   ```

2. Serve the site for live preview (bind to all interfaces for dev containers):
   ```bash
   mkdocs serve -a 0.0.0.0:8000
   ```
   Open the preview in the host browser:
   ```bash
   "$BROWSER" http://localhost:8000
   ```
