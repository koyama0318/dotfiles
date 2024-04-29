build:
	# systemctl start docker
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

restart: build up
