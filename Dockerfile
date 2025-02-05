FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install poetry

RUN poetry install

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
