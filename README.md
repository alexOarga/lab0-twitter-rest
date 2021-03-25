## Laboratorio 0 : Creación de un wrapper REST sobre Twitter

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

This repo is automatically deployed to Heroku:
[![Build Status](https://travis-ci.com/alexOarga/lab0-twitter-rest.svg?branch=master)](https://travis-ci.com/github/alexOarga/lab0-twitter-rest)

This docker image has an autobuild setup:
[https://hub.docker.com/r/ovrgv/lab0-twitter-rest/builds](https://hub.docker.com/r/ovrgv/lab0-twitter-rest/builds)


