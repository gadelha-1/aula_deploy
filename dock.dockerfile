FROM python:3.9-slim

WORKDIR /app

COPY reque.txt

RUN pip install -r reque.txt

COPY api.py .

COPY vetorizador.pkl .

EXPOSE 5000

CMD ["python", "api.py"]