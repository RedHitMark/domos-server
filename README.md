# DomOS Server
This is a smart home project for manage sensor installed in home rooms

## Run with docker

Prerequisites:
* Install docker on your raspberry
* Install docker compose

Clone the repository
```
git clone https://github.com/RedHitMark/domos-server.git
```
Move in the folder of the repository
```
cd domos-server
```
Create a .env file 
```
FLASK_APP=app
FLASK_ENV=development
FLASK_DEBUG=1
MYSQL_ROOT_PASSWORD=rootpw
MYSQL_DATABASE=domos-db
MYSQL_USER=domos-user
MYSQL_PASSWORD=domos-user-password
```
Run with docker compose
```
sudo docker compose up -d
```