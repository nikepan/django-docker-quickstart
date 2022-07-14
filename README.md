# Django docker quickstart
Simple bootstrap django project with docker-compose for easy start on server

## Local Requirements
- Python 3.10
- PostgreSQL


## Install
Clone and start:
```
git clone git@github.com:nikepan/django-docker-quickstart.git  
cd django-docker-quickstart  
docker-compose build  # repeat it after changes in project
docker-compose up  
```
See http://youserver/

## Options
You can add SSL certificates in docker-compose.yml and nginx/nginx.conf (uncomment and edit lines)

