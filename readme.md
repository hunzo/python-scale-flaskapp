# scale flask + gunicorn + nginx
```bash
docker compose up --build -d --scale app=5; docker compose logs -f
```
