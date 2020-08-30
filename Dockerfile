FROM python:3.8.5-slim-buster
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN flask db init && flask db migrate && flask db upgrade
CMD flask run
EXPOSE 5000
#RUN apt update && apt install pip3
