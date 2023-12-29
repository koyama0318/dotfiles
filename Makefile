build:
	docker-compose build

up:
	docker-compose up -d

buildup: build up

start: up
	docker exec -it my-vim-container bash

down:
	docker-compose down
