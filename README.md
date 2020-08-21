# DomOS Server
This is a smart home project for manage sensor installed in home rooms

## Installation
You can install this backend using Docker or creating a python virtual environment

### Run with docker
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
Create a .env file based on .env-template
```
FLASK_APP=app
FLASK_ENV=development
FLASK_DEBUG=1
FLASK_PORT=5000
MYSQL_ROOT_PASSWORD=rootpw
MYSQL_DATABASE=domos-db
MYSQL_USER=domos-user
MYSQL_PASSWORD=domos-user-password
```
Run with docker-compose
```
sudo docker-compose up -d --build
```

### Run in a python virtual environment
Prerequisites:
* Install python3 on your machine
* Install pip3 on your machine
* Install mysql server on your machine

Clone the repository
```
git clone https://github.com/RedHitMark/domos-server.git
```
Move in the folder of the repository
```
cd domos-server
```
Create a new python virtual environment 
```
python3 -m venv venv
```
Activate the new virtual environment 
```
source venv/bin/activate    # Linux and macOS
venv\Scripts\activate       # Windows
```
Upgrade pip version
```
python -m pip install --upgrade pip
```
Installing packages from requirements file
```
pip install -r --no-cache-dir requirements.txt
```
Set enviroment variable
```
# Linux and macOS
export FLASK_APP=app
export FLASK_ENV=development
export FLASK_DEBUG=1
export MYSQL_DATABASE=domos-db
export MYSQL_USER=domos-user
export MYSQL_PASSWORD=domos-user-password

# Windows - Command Prompt
set FLASK_APP=app
set FLASK_ENV=development
set FLASK_DEBUG=1
set MYSQL_DATABASE=domos-db
set MYSQL_USER=domos-user
set MYSQL_PASSWORD=domos-user-password

# Windows - Powershell
$env:FLASK_APP=app
$env:FLASK_ENV=development
$env:FLASK_DEBUG=1
$env:MYSQL_DATABASE=domos-db
$env:MYSQL_USER=domos-user
$env:MYSQL_PASSWORD=domos-user-password
```
Import mysql dump
```
# Linux and macOS
mysql.exe -u $MYSQL_USER --port=3306 -p$MYSQL_PASSWORD $MYSQL_DATABASE < mysql-dump/schema.sql

# Windows - Command Prompt
mysql.exe -u %MYSQL_USER% --port=3306 -p%MYSQL_PASSWORD% %MYSQL_DATABASE% < mysql-dump/schema.sql

# Windows - Powershell
mysql.exe -u $env:MYSQL_USER --port=3306 -p$env:MYSQL_PASSWORD $env:MYSQL_DATABASE < mysql-dump/schema.sql
```
Run flask server
```
python -m flask run --host=0.0.0.0 --port=5000
```
## API available
Endpoint | Method | Description
------------ | ------------ | -------------
/health-check/ | GET | Content from cell 2
