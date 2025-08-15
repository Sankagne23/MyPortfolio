FROM alpine:latest
RUN apk add --no-cache python3 py3-pip
RUN pip install --no-cache py3-flask
RUN mkdir /app
WORKDIR /app
COPY . /app
EXPOSE 5000

# Run the app
CMD ["python3", "app.py"]