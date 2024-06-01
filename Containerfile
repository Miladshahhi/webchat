FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN webchat create-db
RUN webchat populate-db
RUN webchat add-user -u admin -p admin
EXPOSE 5000
CMD ["webchat", "run"]
