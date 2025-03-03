FROM python:3.12.7-slim

RUN apt update && apt install wget -y
RUN mkdir /root/.u2net 
COPY u2net.onnx /root/.u2net/u2net.onnx

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5100

CMD ["python", "app.py"]
