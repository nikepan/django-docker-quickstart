start:
		docker-compose build
		docker-compose up -d

restart:
		docker-compose down
		make start

update:
		git pull
		make start

serve:
		./runserver
