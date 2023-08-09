FROM python:3.7
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install --verbose -r requirements.txt
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]