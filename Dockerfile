
FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install torch transformers datasets

CMD ["python", "train.py"]
