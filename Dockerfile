FROM python:3.9.10

EXPOSE 25587

WORKDIR /app.py
COPY . /app.py

RUN pip3 install -U pip
COPY needss.txt .
RUN pip3 install -r needss.txt

CMD ["python", "app.py"]
