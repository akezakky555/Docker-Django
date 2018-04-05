FROM python:3.6.5

ENV APPLICATION_ROOT /app/

RUN apt-get update
RUN pip install --upgrade pip

RUN mkdir -p $APPLICATION_ROOT
WORKDIR $APPLICATION_ROOT
ADD Apps $APPLICATION_ROOT


RUN pip install -r requirements.txt

EXPOSE 8000

#ENTRYPOINT ["python", "Apps/manage.py", "runserver", "0.0.0.0:8000"]
ENTRYPOINT ["uwsgi", "--ini", "app.ini"]
