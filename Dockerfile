FROM python:3.12-alpine

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x run.sh
RUN pip install gunicorn
ENTRYPOINT [ "/bin/sh","./run.sh" ]