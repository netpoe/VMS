# phpEnv

Hi!

This repo is used to provide an easy php environment. The fastest way to get started is by running

`docker-compose up`

We've left an `index.php` file for testing purposes. It will spit out the command `phpinfo()` so you cane easily tell if all modules are installed.

## getting started

>Dockerfile

This file will build the base image for our app to run in. It will also try to add the application to the servers `Documentroot` _/app_ by copying the directory `/frontend`.

> docker-compose.yml

This file describes the _application_ at a process level. Basically defines the environment variables for the application to run in.
Please look at the file for the most relevant `environment variables` you can set.

> docker-compose.withDb.yml

An additional compose file in case you want to run the app with a dockerized mysql db.

`docker-compose up -f docker-compose.yml -f docker-compose.withDb.yml`

> docker-compose.local.yml

Helper file to easily run a locally available version of the app

`docker-compose up -f docker-compose.yml -f docker-compose.local.yml`

### Environment variables

A list of some possible relevant environment variables used by this image

- APPLICATION_USER
- HOSTNAME
- WEB_DOCUMENT_INDEX
- WEB_DOCUMENT_ROOT
- APPLICATION_PATH
- LC_ALL
- LANG
- DOCKER_CONF_HOME
- SUPERVISOR_ENABLED
- HOME
- SHLVL
- WEB_PHP_SOCKET
- APPLICATION_UID
- SUPERVISOR_PROCESS_NAME
- WEB_ALIAS_DOMAIN
- SUPERVISOR_SERVER_URL 
