CHROME=docker-compose.chrome.yaml
DATA_SCIENCE=docker-compose.data-science.yaml
POSTGRES=docker-compose.postgres.yaml
REDIS=docker-compose.redis.yaml
WATCH_TOWER=docker-compose.watch-tower.yaml

up:
	@docker compose -f ${CHROME} -f ${DATA_SCIENCE} -f ${POSTGRES} -f ${REDIS} up -d
.PHONY: up

down:
	@docker compose -f ${CHROME} -f ${DATA_SCIENCE} -f ${POSTGRES} -f ${REDIS} down
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

data-science-up:
	@docker compose -f ${DATA_SCIENCE} up -d
.PHONY: data-science-up

data-science-down:
	@docker compose -f ${DATA_SCIENCE} down
.PHONY: data-science-down

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
