# docker-redis

## Build
```
docker build -t redis
```

## Docker Run
```
docker run --name=redis -d -v data:/data -t redis
```

## Docker Compose
```
docker-compose up -d
```

## Test
```
docker exec -it redis redis-cli ping
```
