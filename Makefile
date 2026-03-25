FILE=./src/docker-compose.yml

up:
	docker compose -f $(FILE) up
build:
	docker compose -f $(FILE) up --build
down:
	docker compose -f $(FILE) down
erase:
	docker compose -f $(FILE) down -v
ps:
	docker compose -f $(FILE) ps

.PHONY: up build down clear ps