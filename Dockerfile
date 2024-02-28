FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install Flask Werkzeug
RUN pip install --upgrade Flask Werkzeug
EXPOSE 5001
CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]
