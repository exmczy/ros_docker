# ros_docker
Scripts for NVIDIA cudegl + ROS + gazebo
## NVIDIA Docker projects
https://gitlab.com/nvidia
## Run docker container
````bash
docker run --runtime=nvidia -ti -e DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ~/:/share -v $XAUTH:/root/.Xauthority nvidia/cudagl:10.0-base-ubuntu16.04 bash
````
## After build docker image, run this script in docker container
````bash
curl https://raw.githubusercontent.com/exmczy/ros_docker/master/ros_gazebo_install.sh | bash
````
## Set proxy for apt
````bash
sudo vi /etc/apt/apt.conf.d/proxy.conf
````
paste this 
```
Acquire::http::Proxy "http://192.168.1.2:31210/";
Acquire::https::Proxy "http://192.168.1.2:31210/";
```
