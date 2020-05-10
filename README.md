# youtube-search-compose
Aplicação que cria o ambiente em docker das aplicações:
- server: https://github.com/renanbet/youtube-search-server
- client: https://github.com/renanbet/youtube-search-client (em desenvolvimento)

## Pré-requisitos

- git
- docker
- docker-compose 3.7


## Ambiente linux

- Clonar o repositório
```
git clone https://github.com/renanbet/youtube-search-compose.git
git checkout master
```


- Configurar os valores de ambiente no arquivo config.env
```
config.env
```

- Atribuir permissão de execução para o cli.sh
```
chmod 777 cli.sh
```

- Instalar o client e server
```
make setup
```

- Subir os ambientes
```
make up
```
ou
```
docker-compose up -d
```

- Buildar os ambientes
```
make build
```
ou
```
docker-compose build --no-cache
```

## Acessar a aplicação

```
http://localhost:8080


## Para parar aplicações

```
make down
```
ou
```
docker-compose down
```
