FROM nginx/unit:1.27.0-python3.10

RUN mkdir /data

RUN apt-get update

#RUN apt-get -y install tzdata
# ENV TZ="Europe/Moscow"

COPY unit.json /docker-entrypoint.d/

WORKDIR /data

COPY requirements.txt /data/

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY app /data
RUN python manage.py collectstatic --noinput

WORKDIR /data

