FROM python:3.9-slim
WORKDIR /app
COPY hello.py .
RUN pip install flask
ENV FLASK_APP=hello.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

