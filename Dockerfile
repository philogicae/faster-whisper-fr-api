FROM python:3.11.1
RUN apt-get update --fix-missing
WORKDIR /app
COPY ./src/* ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
CMD ["uvicorn", "app:app", "--host", "::", "--port", "80", "--log-level", "info"]