# FROM gcr.io/distroless/python3
FROM python:3.10-alpine

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-w", "2", "--threads", "2", "wsgi:app", "-b", "0.0.0.0:8080", "--log-level", "debug"]
