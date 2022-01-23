FROM python:3.8-slim-buster

COPY /src/ /app/

WORKDIR /app/

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["gunicorn", "--workers=3", "--bind", "0.0.0.0:5000", "-c", "config.py", "app:app"]
