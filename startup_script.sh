#!/bin/bash

cd http-status
sudo gunicorn --bind :80 src.main:app