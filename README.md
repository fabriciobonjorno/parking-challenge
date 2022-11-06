# Parking Challenge =)

This is a Parking API.

It was designed thinking about controlling a parking lot, where it is possible to make the entry, payment and exit of vehicles, it is also possible to generate reports by the plate.

## Stack

- Rails 7.0.4
- ruby 3.1.2
- Postgres

## How to use it?

Basically we have four endpoints, register the entry, make the payment, register the car and list the car's activities by the license plate.

## Building application

Ok, so first you must have:

1. Postgres installed.

2. Ruby >= 3.1.2 installed.

3. As we're on the beginning of project, don't forget to right configure your `datatabe.yml`. In the project there are 2 database examples, one for use with Docker and one without Docker.

As soon as you have everything done you can follow


### 1. Building everything

If you want to rock and create your dev environment and data, it's possible to go through the usual way

1. And to *bundle* it with command:
```
bundle install
```

2. Create databases
```
rails db:create
```

3. Run migrations
```
rails db:migrate
```

### 2. Building everything with docker

If you want to use Docker to create your development and data environment, you can follow the path below.

#### Necessary documentation:
- [Docker](https://docs.docker.com/engine/install/ubuntu/)
- [Docker Compose](https://docs.docker.com/compose/install/)

1. Building the project
```
docker-compose build
```

2. Start the application
```
docker-compose up
```

3. Create database
```
docker-compose run web rails db:create
```

4. Run migrations
```
docker-compose run web rails db:migrate
```

If you want to run tests: 
```
bundle exec rspec
```

## How can I use API?

Well, we here a file if you want to import on Postman

[Parking Challenge](https://github.com/fabriciobonjorno/parking-challenge/files/9946546/Parking.Challenge.postman_collection.zip)

### Scopes

We have 4 base scopes: 
- **/parkings** <br>
  ![new](https://user-images.githubusercontent.com/28460996/200188752-2e8ccc89-ab52-4b19-8ae2-0c8f0ff56742.png)

- **/parkings/out/:id'** <br>
  ![exit](https://user-images.githubusercontent.com/28460996/200188768-626da579-c48f-4a92-a3a7-17981aaf8438.png)
  
- **/parkings/pay/:id'** <br>
  ![pay](https://user-images.githubusercontent.com/28460996/200188800-8cda8fe5-a8c8-4651-bb6a-0e6cd0bb1a2f.png)
  
- **/parkings/:plate'** <br>
  ![report](https://user-images.githubusercontent.com/28460996/200188784-18dc064f-5a2c-4a20-a642-03f45e47d4e3.png)
