
apt update

apt install -y tmux
apt install -y vim

apt install -y ros-galactic-navigation2
apt install -y ros-galactic-nav2-bringup
apt install -y ros-galactic-turtlebot3*
apt install -y ros-galactic-joint-state-publisher-gui
apt install -y ros-galactic-xacro
apt install -y ros-galactic-robot-localization

echo "source /opt/ros/galactic/setup.bash" >> ~/.bashrc
echo "export TURTLEBOT3_MODEL=waffle" >> ~/.bashrc
echo "export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/galactic/share/turtlebot3_gazebo/models" >> ~/.bashrc
source ~/.bashrc

apt install -y ros-galactic-rplidar-ros
cd /opt/ros/galactic/share/rplidar_ros/launch/
sed 's/laser/lidar_link/g' rplidar.launch.py > rplidar.launch.py

cd ~
mkdir -p ros_ws/src
cd ~/ros_ws/src
git clone https://github.com/ros-planning/navigation2_tutorials/
mv navigation2_tutorials/sam_bot_description/ .
rm -r navigation2_tutorials/

cd ~/ros_ws/src
git clone https://github.com/Adlink-ROS/rf2o_laser_odometry
cd rf2o_laser_odometry/launch/
sed 's/odom_rf2o/odom/g' rf2o_laser_odometry.launch.py > rf2o_laser_odometry.launch.py

cd ~/ros_ws
colcon build
echo "source ~/ros_ws/install/setup.bash" >> ~/.bashrc
source ~/.bashrc