FROM python:3

RUN apt-get update
RUN apt-get install python3-pip -y

WORKDIR /home/ubuntu/
RUN git clone https://github.com/unhochoi/flask-app-in-ec2-ubuntu.git
WORKDIR flask-app-in-ec2-ubuntu

RUN mkdir -p static/uploads

RUN pip3 install -r requirements.txt

CMD ["python", "main.py"]
