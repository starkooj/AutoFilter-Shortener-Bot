FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN apt-get update --fix-missing && \
    apt-get install -y git gcc && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
