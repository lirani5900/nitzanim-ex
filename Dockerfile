FROM python:3.10.6

COPY . /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
