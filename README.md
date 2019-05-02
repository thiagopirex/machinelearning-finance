  # Exemplo de uso de Machine Learning para predizer um valor futuro de uma ação baseado em seu histórico. 

Os dados podem ser obtidos do Yahoo Finance em https://finance.yahoo.com/ 

## Instruções:

**Passo 1:** Build e execução da imagem:

```
docker-compose up -d
```

**Passo 2:** Obter o token:

```
docker-compose logs tensorflow-jupyter-notebook | grep token | tail -1
```

**Passo 3:** Acessar pelo navegador:

```
http://localhost:8888/?token=?????
``

