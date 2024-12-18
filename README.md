# Django docker quickstart
Simple bootstrap django project with docker-compose for easy start on server  
Created for friends but may help you  

## Local Requirements
- docker
- docker-compose
- Python 3.10
- PostgreSQL


## Install on server
Clone and start:
```
git clone git@github.com:nikepan/django-docker-quickstart.git  
cd django-docker-quickstart  
docker-compose build  # repeat it after changes in project
docker-compose up  # or `docker-copmpose up -d` for daemonized start
```
See http://youserver/  
**Attention:** *Remove DEBUG=1 from docker-compose.yml before public start*
You can also use make commands
```
make start   # build and start daemonized
make update  # pull, build and start 
```

## Run on localhost
```
git clone git@github.com:nikepan/django-docker-quickstart.git  
cd django-docker-quickstart
python -m venv env
env/bin/activate
python app/manage.py migrate
./runserver  # or `DEBUG=1 python app/manage.py runserver` or `make serve`  
```

## Go to production
Change domain and email in caddy/Caddyfile, and uncomment tls line   

## Make your app
Django app in the **app** directory. Make your features there.
