FROM telkomindonesia/debian:python-3.7


WORKDIR /opt


COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python3", "main.py"]
