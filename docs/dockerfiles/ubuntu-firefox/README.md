### Objetivo: 

  - Permita utilizar o firefox em um container.

### Build:

  - docker build -t ubuntu/firefox:xenial .

### Executar:

```sh
docker run \
    --net=host \
    --rm \
    -it \
    -e DISPLAY=$DISPLAY \
    -v $HOME/.Xauthority:/root/.Xauthority \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.firefox/cache:/root/.cache/mozilla \
    -v $HOME/.firefox/mozilla:/root/.mozilla \
    -v $HOME/Downloads:/root/Downloads \
    -v $HOME/Pictures:/root/Pictures \
    -v $HOME/Torrents:/root/Torrents \
    --device /dev/snd \
    tiusjc/ubuntu-firefox
```

