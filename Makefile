include .env
.PHONY=list_commands

list_commands: 
	./list-commands.sh

start_msql:
	@echo "starting mysql server...."
	@docker run  -v "${PWD}/mysql/data":/var/lib/mysql -p ${MYSQL_PORT}:3306  -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} ${RA_NETWORK} -d mysql:${MYSQL_VERSION}

stop_msql:
	docker stop ra-mysql

start_postgresql:
	docker run -v "${PWD}/postgres/data":/var/lib/postgresql/data  -e POSTGRES_USER=${POSTGRES_USER} -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} -p ${POSTGRES_PORT}:5432 -d   postgres:${POSTGRES_VERSION}

sm: start_msql	

stm: stop_msql

sp: start_postgresql

lc: list_commands
