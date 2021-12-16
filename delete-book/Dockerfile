FROM python:alpine3.7
COPY delete.py .
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT [ "python" ]
CMD [ "delete.py" ]
