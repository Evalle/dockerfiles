dockerfiles-opensuse-redis
========================

OpenSUSE Dockerfile for Redis - open source, advanced key-value cache and store.  

To build:

    # sudo docker build -t <username>/redis .

To run:

    # sudo docker run -d -p 6379 --name redis <username>/redis

To test:

  check ports:

    # sudo docker port redis 6379
  
  and via redis-cli
  
    # redis-cli -h 127.0.0.1 -p <port>
    redis 127.0.0.1:<port>ping
    PONG
  
 
