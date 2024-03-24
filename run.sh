#!/bin/bash
exec gunicorn -w 2 -b 0.0.0.0:8000 main:app &
exec nohup python3 app.py