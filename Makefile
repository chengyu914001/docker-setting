GPU_JUPYTER=docker-compose.gpu-jupyter.yaml
POSTGRES=docker-compose.postgres.yaml
REDIS=docker-compose.redis.yaml
WATCH_TOWER=docker-compose.watch-tower.yaml

ifeq ($(args), all)
	compose-file-item := -f $(GPU_JUPYTER) -f $(POSTGRES) -f $(REDIS)
else ifeq ($(args), GPU-JUPYTER)
	compose-file-item := -f $(GPU_JUPYTER)
else ifeq ($(args), POSTGRES)
	compose-file-item := -f $(POSTGRES)
else ifeq ($(args), REDIS)
	compose-file-item := -f $(REDIS)
else ifeq ($(args), WATCH_TOWER)
	compose-file-item := -f $(WATCH_TOWER)
endif

up:
	@docker compose $(compose-file-item) up -d
.PHONY: up

stop:
	@docker compose $(compose-file-item) stop
.PHONY: stop

down:
	@docker compose $(compose-file-item) down
.PHONY: down
