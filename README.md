
# GeoLayers Deploy

## Configurations for Deploy GeoLayers. 

### Application For Processing Geospatial Layers.

### Services that will be deployed:
- [Frontend](https://github.com/igor-rodrigues-ss/geolayers_fe) ([ReactJS](https://pt-br.reactjs.org/) / [Typescript](https://www.typescriptlang.org/) / [OpenLayers](https://openlayers.org/))
- [Backend](https://github.com/igor-rodrigues-ss/geolayers_be) ([Python3.8](https://www.python.org/) / [FastAPI](https://fastapi.tiangolo.com/) / [VectorIO](https://pypi.org/project/vectorio/))
- [Database](https://github.com/igor-rodrigues-ss/geolayers_be/blob/master/fixtures/db.sql) ([PostgresSQL](https://www.postgresql.org/) / [PostGIS](https://postgis.net/))
- [RabbitMQ](https://www.rabbitmq.com/)
- [Celery](https://docs.celeryproject.org/en/stable/userguide/workers.html)
- [Celery Flower](https://flower.readthedocs.io/en/latest/)
- [MemCached](https://memcached.org/)

#### OS
- Linux

### Features
- Shapefile Upload
- Mapbox Vector Tile Generator
- Download shapefile templates
- View executing uploads

## Deploy

- The next tutorial will deploy all services for Geolayers execution.

### Requirements
- git: 2.25.1
- Docker: 20.10.6, build 370c289
- Docker-compose: 1.28.5, build c4eb3a1f

```shell
./deploy

# after deploying go to: http://localhost:3000
```