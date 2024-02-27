# Bygg databas mha postgresQL och Docker

steg 1 ./run-docker<br>
steg 3 Kör appen pg.js<br>
steg 2 ./check-table

### Starta docker med miljö-variabler

```js
docker run -e POSTGRES_PASSWORD=pass -e POSTGRES_USER=awesome -e POSTGRES_DB=iss-db -p 5432:5432 -it (-d) postgres
```

### Mounta en volume:

```js
docker run --rm -e POSTGRES_PASSWORD=pass -e POSTGRES_USER=awesome -e POSTGRES_DB=iss-db -p 5432:5432 -v pgdata:/var/lib/postgresql/data -d postgres
```

### Kör docker containern:

```js
docker exec -i 28b018b49dd0 psql -U awesome -d iss-db -c "SELECT * FROM iss_locate;"
```

### Klienten nedan använder ovan varables.

```js
const dbConfig = {
  host: "127.0.0.1",
  port: 5432,
  database: "iss-db",
  user: "awesome",
  password: "pass",
};
```

### Allmänna kommandon

```js
Lyssna på tex docker:
nc -zv 127.0.0.1 5432

docker stop <dockernamn>
docker rm <dockernamn>

Visa allt i tabellen
select * from iss_locate;
```
