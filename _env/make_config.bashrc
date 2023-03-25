#!/bin/bash


if [ -f ~/project_config.bashrc ] ; then
    source ~/project_config.bashrc
    source ~/machine_config.bashrc
elif [ -f ./_env/project_config.bashrc ] ; then
    source ./_env/project_config.bashrc
    source ./_env/machine_config.bashrc
fi


export OPTIONS_DOCKER_RUN="
    --rm
    --gpus=all
    --ipc=host
    --net=host
    -w $PROJECT_DN
    -e DISPLAY=$DISPLAY
    -v /dev/shm:/dev/shms
    -v $PROJECT_DN:$PROJECT_DN
    -v $PROJECT_DN/_env/project_config.bashrc:/root/project_config.bashrc
    -v $PROJECT_DN/_env/machine_config.bashrc:/root/machine_config.bashrc
    -v $PROJECT_DN/_env/make_config.bashrc:/root/make_config.bashrc
    -v $PROJECT_DN/_env/home/bin:/root/bin
    -v $PROJECT_DN/_env/home/.bashrc:/root/.bashrc
    -v $PROJECT_DN/_env/home/.sensitive:/root/.sensitive
"

export OPTIONS_SINGULARITY_EXEC="
    --nv
    --no-home
    --containall
    --home /root
    -W $PROJECT_DN
    --env DISPLAY=$DISPLAY
    -B /tmp:/tmp
    -B /var/tmp:/var/tmp
    -B $PROJECT_DN:$PROJECT_DN
    -B $PROJECT_DN/_env/project_config.bashrc:/root/project_config.bashrc
    -B $PROJECT_DN/_env/machine_config.bashrc:/root/machine_config.bashrc
    -B $PROJECT_DN/_env/make_config.bashrc:/root/make_config.bashrc
    -B $PROJECT_DN/_env/home/bin:/root/bin
    -B $PROJECT_DN/_env/home/.bashrc:/root/.bashrc
    -B $PROJECT_DN/_env/home/.sensitive:/root/.sensitive
"








