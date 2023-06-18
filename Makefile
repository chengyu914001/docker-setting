CHROME=docker-compose.chrome.yaml
GPU-JUPYTER=docker-compose.gpu-jupyter.yaml
POSTGRES=docker-compose.postgres.yaml
REDIS=docker-compose.redis.yaml
WATCH_TOWER=docker-compose.watch-tower.yaml

up:
	@docker compose -f ${CHROME} -f ${GPU-JUPYTER} -f ${POSTGRES} -f ${REDIS} up -d
.PHONY: up

down:
	@docker compose -f ${CHROME} -f ${GPU-JUPYTER} -f ${POSTGRES} -f ${REDIS} down
.PHONY: down

watchtower:
	@docker compose -f ${WATCH_TOWER} up
.PHONY: watchtower

chrome-up:
	@docker compose -f ${CHROME} up -d
.PHONY: chrome-up

chrome-down:
	@docker compose -f ${CHROME} down
.PHONY: chrome-down

gpu-jupyter-up:
	@docker compose -f ${GPU-JUPYTER} up -d
.PHONY: gpu-jupyter-up

gpu-jupyter-down:
	@docker compose -f ${GPU-JUPYTER} down
.PHONY: gpu-jupyter-down

postgres-up:
	@docker compose -f ${POSTGRES} up -d
.PHONY: postgres-up

postgres-down:
	@docker compose -f ${POSTGRES} down
.PHONY: postgres-down

redis-up:
	@docker compose -f ${REDIS} up -d
.PHONY: redis-up

redis-down:
	@docker compose -f ${REDIS} down
.PHONY: redis-down
