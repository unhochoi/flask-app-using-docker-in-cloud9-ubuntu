FROM python:3

RUN apt-get update
RUN apt-get install python3-pip -y

WORKDIR /home/ubuntu/
RUN git clone https://github.com/unhochoi/flask-web-application-in-ec2.git
WORKDIR flask-web-application-in-ec2

RUN mkdir -p static/uploads

RUN pip3 install -r requirements.txt

EXPOSE 80

CMD ["python", "main.py"]
