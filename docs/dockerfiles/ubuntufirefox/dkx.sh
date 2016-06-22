export XSOCK=/tmp/.X11-unix
    export XAUTH=/tmp/.docker.xauth

    if [ ! -f $XAUTH ]; then
        touch $XAUTH
        xauth nlist $DISPLAY | sed -e "s/^..../ffff/" | xauth -f $XAUTH nmerge -
    fi

    docker run -i -t -e DISPLAY -e USER -e XAUTHORITY=$XAUTH -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH \
        --net=host $@

