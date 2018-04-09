# emplay
Python django web app

**Tech Stack** - Python, django, html, css, bootstrap

**Instructions to run this app**
1. `git clone https://github.com/parvez301/emplay.git`
2. `make new database, new database user and then dump emplay.sql into that database`
3. `set following environment variable, DB_NAME=<database-name>, DB_USER=<database user>, DB_PASSWORD=<db password>, LOCALHOST='localhost', PORT=5432`
4. `pip3 install -r requirements.txt`
5. `python3 manage.py makemigrations`
6. `python3 manage.py migrate`
7. `python3 manage.py runserver`

Open localhost:8000 in web browser
