#!/bin/bash

set -x

if [ ! -f .env ]; then
    cp .env.ci .env
fi

pip install --no-cache-dir -r requirements.txt

uvicorn main:app --host 0.0.0.0 --port 8001 --reload