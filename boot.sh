#!/bin/sh
source venv/bin/activate
flasky deploy
exec gunicorn -b :5000 --access-logfile - --error-logfile - flasky:app