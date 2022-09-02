FROM nginx/unit:1.27.0-python3.10

RUN mkdir /data

RUN apt-get update

ENV PIPENV_VENV_IN_PROJECT=1
#RUN apt-get -y install tzdata
# ENV TZ="Europe/Moscow"

COPY unit.json /docker-entrypoint.d/

WORKDIR /data

COPY Pipfile* /data/

RUN pip install --upgrade pip && pip install pipenv && pipenv sync --dev

COPY app /data
RUN pipenv run python manage.py collectstatic --noinput

WORKDIR /data

