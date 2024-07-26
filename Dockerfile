FROM python:3.9.10

WORKDIR /app.py
COPY . /app.py

RUN pip3 install -U pip
COPY needs.txt .
RUN pip3 install -r needs.txt

CMD ["python", "app.py"]
