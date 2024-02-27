# Allmänna steg för att puscha en app till intenetz

### 1. Gör valfri app

### 2. Bygg Docker - Se till att det fungerar lokalt

```bash
colima start

docker build . -t iss-locator
docker run -p 3000:3000 -it namn-på-app
docker ps -la
docker images
```

### 3. Aw init i relevant mapp

### 4. Git add/commit/push

```bash
git add .
gist status - gst
git commit -m "meddelande"
git push - gp
```

### 5. Bygg med awesom:

```bash
aw build

1. aw namespace:edit
2. Fick konfigurera om till /health
3. Sedan aw reload -e dev
4. Gör tillgänlig online - as access:enable
```

### 6. Exempel länk: https://iss-locator.dev.akind.tech/health

### 7. Console logga

```bash
aw log -s iss-locator -e dev
```
