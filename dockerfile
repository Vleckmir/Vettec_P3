FROM python:3.9.12-buster

ENV FLASK_APP='app.py'
ENV FLASK_ENV='development'

WORKDIR /app

COPY requirements.txt requirements.txt
COPY app.py .

RUN pip install -r requirements.txt

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
