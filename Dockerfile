# https://www.freecodecamp.org/news/how-to-dockerize-a-flask-app/
# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

# Build it by running "sudo docker build -t python-docker ."
# Example: Run it by calling "docker run -d -p 8080:5000 python-docker" to run it locally on port 8080