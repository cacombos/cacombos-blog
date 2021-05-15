# cacombos-blog

CA Combos Blog https://blog.cacombos.com. Based [Hexo Blog Framework](https://hexo.io/)

## Build

Build in Docker

```
docker build -t cacombos/cacombos-blog .
```

Run

```
docker run --rm -p 80:80 --name cacombos-blog cacombos/cacombos-blog
```

## Development

Start develop environment

```
docker-compose up -d
```

Wait few minutes to node module installation and then browse to http://localhost:4000