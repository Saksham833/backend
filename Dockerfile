FROM python:3.10-slim

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .


CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "10000"]
