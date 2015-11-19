#!/bin/bash
# only for macusers

$reload_flag=$1

function main {
    if [[ $reload_flag == "--reload" ]]; then
      reload_process
    else
      start_process
    fi
}

function reload_process {
    echo "reloading process..."
    docker-machine restart default
    echo "read and execute the dockerfile"
    docker-compose build .
    echo "set the bridge virtual machine like a host env"
    docker-machine env default
    echo "set the bridge virtual machine like a host env one more time"
    eval "$(docker-machine env default)"
    echo "start the application"
    docker-compose up
}

function start_process {
    echo "Initializing process"
    echo "create a bridge virtual machine to deal with docker"
    docker-machine start default
    echo "read and execute the dockerfile"
    docker-compose build .
    echo "set the bridge virtual machine like a host env"
    docker-machine env default
    echo "set the bridge virtual machine like a host env one more time"
    eval "$(docker-machine env default)"
    echo "start the application"
    docker-compose up
}

main
