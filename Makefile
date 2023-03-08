ID = xxx
CMD = xxx

start:
	docker-compose up -d

start_log:
	docker-compose up

stop:
	docker-compose stop

restart:
	docker-compose restart

build_all:
	docker-compose build

build:
	docker-compose build ${ID}

con:
	docker ps -a

con_prune:
	docker ps -aq | xargs docker rm

img:
	docker images

img_prune:
	docker images -aq | xargs docker rmi

vol:
	docker volume ls

rm:
	docker rm ${ID}

rmi:
	docker rmi ${ID}

rmv:
	docker volume rm ${ID}

cmd_svelte:
	docker-compose exec svelte bash

log_all:
	docker-compose logs -tf

log_svelte:
	docker-compose logs -tf svelte