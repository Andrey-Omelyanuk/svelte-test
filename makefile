PROJECT_NAME=svelte-test
DOCKER_COMPOSE_FILE=docker-compose.yml

build:
	export DOCKER_BUILDKIT=1 && \
	docker compose -p $(PROJECT_NAME) -f $(DOCKER_COMPOSE_FILE) build
run:
	docker compose -p $(PROJECT_NAME) -f $(DOCKER_COMPOSE_FILE) up
sh:
	docker compose -p $(PROJECT_NAME) -f $(DOCKER_COMPOSE_FILE) exec $(s) sh	