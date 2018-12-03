#!bash

export DEBIAN_FRONTEND=noninteractive

apt-get install -y tzdata
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt-get install -y lsb-release gnupg
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt update
DEBIAN_FRONTEND=noninteractive sudo apt install -y ros-melodic-desktop-full

sudo rosdep init
rosdep update

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential

mkdir -p ~/catkin_ws/src

