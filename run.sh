ros2 launch rplidar_ros view_rplidar.launch.py &
ros2 launch sam_bot_description display.launch.py use_sim_time:=False &
ros2 launch rf2o_laser_odometry rf2o_laser_odometry.launch.py &
ros2 launch nav2_bringup navigation_launch.py &
ros2 launch slam_toolbox online_async_launch.py &