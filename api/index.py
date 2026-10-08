import sys
import os

# Add root directory to sys.path so backend module is discovered
root_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if root_dir not in sys.path:
    sys.path.insert(0, root_dir)

try:
    from backend.main import app
except Exception as e:
    from fastapi import FastAPI
    app = FastAPI(title="CineMatch Fallback")
    @app.get("/api/health")
    def health():
        return {"status": "error", "error": str(e)}
