# Compose Rails

## Build the project

You need to build the image:

`docker compose build`

## Connect  the database
Rails expects a database. Change the database and username.

You can now boot app:

`docker compose up`

You need the database. In another, run:

`docker compose run web rake db:create`

## Rebuild the application

Some change require only:

`docker compose up --build`

Full rebuild require: 

`docker compose run web bundle install`

`docker compose up --build`