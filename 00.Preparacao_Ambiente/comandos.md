# 00 - Preparação do Ambiente

## Construir Container do Banco

### Via Docker Run

```bash
docker run --name apoena-mysql -e MYSQL_ROOT_PASSWORD=rootapoena -p 3307:3306 -d mysql:9.2
```

### Via Docker Compose

1. **Ir até o diretório raiz, onde está o arquivo `docker-compose.yaml`**

2. **Executar o comando:**

```bash
docker-compose up -d --build
```

## CLI MySQL

```bash
mysql -h 127.0.0.1 -P 3307 -u root -p
```
