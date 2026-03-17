FROM python:3.9

WORKDIR /app

# Old versions with known CVEs - good for scanner demo
RUN pip install flask==2.0.0 Jinja2==3.0.0 Werkzeug==2.0.0

COPY app.py .
COPY templates/index.html templates/index.html

CMD ["python", "app.py"]