#!/bin/bash

composer install

# Copy environment file if not existing
if [ ! -f ".env" ]; then
    cp .env.example .env
fi

# Generate application key if it not set
APP_KEY=$(cat .env | sed -n 's/^APP_KEY=/ /p')
if [[ -z "${APP_KEY// }" ]]; then
    php artisan key:generate
fi
