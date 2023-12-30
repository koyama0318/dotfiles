build:
	# systemctl start docker
	docker-compose build

up:
	alacritty
	docker-compose up -d

buildup: build up

start: up
	docker exec -it my-vim-container bash

down:
	docker-compose down
