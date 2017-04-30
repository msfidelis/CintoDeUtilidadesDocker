# Build de Desenvolvimento

```
# docker-compose build
$ docker-compose up 
```

# Build de Deploy

```
$ docker build -t flask-app:latest .
```

```
$ docker run -d -p 5000:5000 flask-app
```
