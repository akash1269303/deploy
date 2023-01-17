FROM python:3.8.13-slim-buster
WORKDIR /app
COPY ./project1 ./

RUN pip install --upgrade pip --no-cache-dir

RUN pip install -r /app/requirements.txt --no-cache-dir

# RUN pip install django
# RUN pip install pillow
# RUN pip install django-storages
# RUN pip install boto3
# RUN pip install gunicorn
# RUN pip install waitress
# RUN pip install psycopg2-binary

# CMD ["python","manage.py","runserver","0.0.0.0:8000"]

#CMD ["waitress-serve","--listen=*:8000","project1.wsgi:application"]

CMD [ "gunicorn","project1.wsgi:application","--bind","0.0.0.0:8000"]

# waitress-serve --listen=*:8000 project1.wsgi:application