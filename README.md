## Laboratorio 0 : Creación de un wrapper REST sobre Twitter

La versión de partida de este repositorio es MVC. 
Se puede ver desplegada en [https://tmdad-lab0.herokuapp.com/](https://tmdad-lab0.herokuapp.com/).

Tu objetivo es *RESTificarla*.

```
heroku apps:create tmdad-lab0
heroku config:set twitter.consumerKey=<ask twitter for a key>
heroku config:set twitter.consumerSecret=<ask twitter for a key>
heroku config:set twitter.accessToken=<ask twitter for a key>
heroku config:set twitter.accessTokenSecret=<ask twitter for a key>
git push heroku master
```

## Lab-0 :
Check out my heroku deployment!! [https://pure-eyrie-95528.herokuapp.com/](https://pure-eyrie-95528.herokuapp.com/)

Check out my docker repository!! [https://hub.docker.com/r/ovrgv/lab0-twitter-rest](https://hub.docker.com/r/ovrgv/lab0-twitter-rest)


Get the docker image with:
```
docker pull ovrgv/lab0-twitter-rest

docker run 
-e twitter.consumerKey='<your twitter api consumer key>' 
-e twitter.consumerSecret='<your twitter api consumer secret>' 
-e twitter.accessToken='<your twitter api access token>' 
-e twitter.accessTokenSecret='<your twitter api access token secret>' 
-p 8080:8080 ovrgv/lab0-twitter-rest:latest
```
