FROM python:3.8-slim

RUN pip install aiohttp gunicorn

RUN mkdir -p /teacheetah
COPY app.py /teacheetah

WORKDIR /teacheetah

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:init_app", "--reload", "--worker-class", "aiohttp.GunicornWebWorker"]
