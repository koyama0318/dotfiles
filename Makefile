build:
	# systemctl start docker
	docker-compose build

build-no-cache:
	docker-compose build --no-cache

up:
	docker-compose up -d

start: up
	docker exec -it my-vim-container zsh

restart: build start

down:
	docker-compose down
