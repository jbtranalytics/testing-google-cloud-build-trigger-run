FROM python:3.9-slim

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PYTHONPATH $APP_HOME/src

CMD bash -c "echo $CREDENTIALS > credentials.json && uvicorn --host=0.0.0.0 --port=$PORT src.main:app"