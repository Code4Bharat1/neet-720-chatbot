FROM python:3.10-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "run_chatbot.py"]
