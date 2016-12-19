# Cloud Cache Superlogica v1.0

## Cacheamento de Licenças

Métodos

* POST /setcache - Seta uma licença no Cache (Agressivo)
```
  {'licenca':'nomedalicenca'}
```

* POST /varifyandset - Seta uma licenca no cache caso ela não exista
```
  {'licenca':'nomedalicenca'}
```

* POST /getcache - Retorna os dados da licença caso esteja cacheada
```
  {'licenca':'nomedalicenca'}
```

* GET /getcache/nomedalicenca - Retorna os dados da licença caso esteja cacheada


# TESTES

* Para testar o projeto, os testes devem ser escritos dentro da pasta /tests extendendo a classe WebTestCase

* Para todar os testes automatizados em ambiente de dev, basta pegar o name do container e executar o binário do phpunit

```
  docker ps
```

```
  docker exec cloudcache_api_1  php /var/www/html/vendor/bin/phpunit --colors --debug /var/www/html/tests
```
