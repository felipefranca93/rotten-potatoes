FROM python:3.8-slim-buster

WORKDIR /app/

COPY . /app/

RUN python -m pip install -r requirements.txt

EXPOSE 5000

CMD ["gunicorn", "--workers=3", "--bind", "0.0.0.0:5000", "-c", "config.py", "app:app"]