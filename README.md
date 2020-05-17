# youtube-search-compose

For a weekly schedule of time in minutes dedicated to watching YouTube videos, the system searches for up to 200 videos. The system show the number of days taht you need to watch them and the 5 most common words in their descriptions and titles. The calc of total time, considers that the video can only be watched if it ends on the same day.

Docker applciation to build and up:
- server: https://github.com/renanbet/youtube-search-server
- client: https://github.com/renanbet/youtube-search-client 

## Requirements

- git
- docker
- docker-compose 3.7


## Linux enviroment

- Clone the repository
```
git clone https://github.com/renanbet/youtube-search-compose.git
git checkout master
```


- Set the enviroment variables on
```
config.env
```

- Add execution permission on cli.sh
```
chmod +x cli.sh
```

- Install the client and server
```
make setup
```

- Services up
```
make up
```
or
```
docker-compose up -d
```

- Build service (not necessary on first time of compose up)
```
make build
```
or
```
docker-compose build --no-cache
```

## Application access

```
http://localhost:8080
```

## Services stop

```
make down
```
or
```
docker-compose down
```


## Tests
```
cd tests
make up
make logs
```
