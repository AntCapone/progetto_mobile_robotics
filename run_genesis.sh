xhost +
docker run -it --rm --net host --ipc host --privileged \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ~/.Xauthority:/root/.Xauthority \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -v ./genesis_ws/:/root/genesis_workspace \
    --name genesis_container \
    genesis:progetto bash
    
