DIR=docker-compose-yaml

GPU_JUPYTER=${DIR}/gpu-jupyter.yaml
SELENIUM=${DIR}/selenium.yaml
POSTGRES=${DIR}/postgres.yaml
REDIS=${DIR}/redis.yaml
WATCH_TOWER=${DIR}/watch-tower.yaml

ifeq ($(project), all)
	compose-file-item := -f $(GPU_JUPYTER) -f ${SELENIUM} -f $(POSTGRES) -f $(REDIS)
else ifeq ($(project), jupyter)
	compose-file-item := -f $(GPU_JUPYTER)
else ifeq ($(project), selenium)
	compose-file-item := -f $(GPU_JUPYTER)
else ifeq ($(project), postgres)
	compose-file-item := -f $(POSTGRES)
else ifeq ($(project), redis)
	compose-file-item := -f $(REDIS)
else ifeq ($(project), watch-tower)
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
