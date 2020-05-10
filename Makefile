.PHONY: up

up:
	docker-compose up -d

.PHONY: down

down:
	docker-compose down

.PHONY: logs

logs:
	docker-compose logs -f

.PHONY: build

build:
	docker-compose build --no-cache

.PHONY: setup

setup:
	./cli.sh setup

.PHONY: pull

pull:
	./cli.sh pull