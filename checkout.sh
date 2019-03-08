#!/bin/bash

git clone git@github.com:AfeefaDe/afeefa-backend-api.git ../backend-api

git clone git@github.com:AfeefaDe/afeefa-backend-ui.git ../backend-ui

git clone git@github.com:AfeefaDe/afeefa-ui-data.git ../ui-datastore

git clone git@github.com:AfeefaDe/afeefa-frontend-api.git ../frontend-api

git clone git@github.com:AfeefaDe/afeefa-frontend.git ../frontend-ui

git clone git@github.com:AfeefaDe/afeefa-messaging.git ../message-api

git clone git@github.com:AfeefaDe/afeefa-wisdom-api.git ../wisdom-api

find .. -maxdepth 1 -mindepth 1 -type d -exec sh -c "(echo {} && cd {} && git pull --rebase && echo)" \;

cp -n config/database.yml ../backend-api/config/database.yml
