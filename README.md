
## Description
This is a handy project to allow anyone to get started using any database of their choice(MYsql and postgres) with their side projects. Just clone this repo, update the .env file and you are good to go.
I will be updating this repo in the future to accommodate other databases and config files

## Prerequisites
* Docker must be installed and running
* Platform should have been started. To start platform read readme in platform dir

## Setup
Set the right execution permission for our simple sh script
- `chmod +x list-commands.sh`
We need directories to store our database files and mount them. Execute the command below
-  `mkdir -p mysql/data postgres/data`

## Todo
[ * ] Mysql database \
[ * ] PostgreSQL database \
[ ] Include phpmyadmin for mysql and postgres. This should reduce the need to download extra binaries to manage databases.\
[ ] MongoDB implementation \
[ ] Redis implementation \