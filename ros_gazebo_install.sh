apt-get update && \
  apt-get -y install sudo apt-utils

apt-get install -y vim tmux x11-apps wget
apt install -y build-essential cmake python3-dev

apt-get install -y lsb-release gnupg
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt update
sudo apt install -y ros-melodic-desktop-full

sudo rosdep init
rosdep update

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
