FROM python:3.9.10

EXPOSE 25587

WORKDIR /app.py
COPY . /app.py

RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install -r requirements.txt

EXPOSE 8080 

CMD ["python", "app.py"]
