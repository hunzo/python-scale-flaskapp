from flask import Flask
import socket

app = Flask(__name__)

@app.get("/")
def main():
    return {
        "container_id": f"{socket.gethostname()}"
    }
