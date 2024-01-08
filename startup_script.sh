#!/bin/bash

sudo gunicorn --bind :80 --chdir /opt/http-status/src main:app