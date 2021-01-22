#! /bin/bash

sudo screen -ls
sudo chmod 777 /var/run/screen
python3 -m venv venv
. venv/bin/activate
flask db init
flask db migrate
flask db upgrade
export FLASK_ENV=development
export FLASK_APP=app
flask run
