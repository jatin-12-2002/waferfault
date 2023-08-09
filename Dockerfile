FROM python:3.7
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip==23.2.1 --no-cache-dir
RUN pip install --verbose -r requirements.txt
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]