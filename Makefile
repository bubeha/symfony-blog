up:
	CURRENT_UID=$(shell id -u):$(shell id -g) docker-compose up -d

build:
	CURRENT_UID=$(shell id -u):$(shell id -g) docker-compose up --build -d

down:
	docker-compose down
