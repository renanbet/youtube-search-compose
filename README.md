# O app
- Para uma agenda semanal de tempo em minutos dedicado à assistir vídeos do youtube, o sistema busca até 200 vídeos, informando a quantidade de dias necessários para assisti-los e as 5 palavras mais presentes em suas descrições e títulos. O cáculo de tempo total, considera que o vídeo só poderá ser assistido se o mesmo terminar no mesmo dia. 


# youtube-search-compose
Aplicação que cria o ambiente em docker das aplicações:
- server: https://github.com/renanbet/youtube-search-server
- client: https://github.com/renanbet/youtube-search-client 

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

- Buildar os ambientes (não é necessário quando subir o ambiente pela primeira vez)
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
```

## Para parar aplicações

```
make down
```
ou
```
docker-compose down
```


## Testes
```
cd tests
make up
make logs
```
