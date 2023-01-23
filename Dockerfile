FROM python:3.10.6

WORKDIR /app

COPY . /app

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

RUN pip install --no-cache-dir -r requirements.txt
RUN flask init-db

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
