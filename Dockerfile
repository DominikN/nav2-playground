# choose ROS distribudion based on build argument
FROM ros:galactic-ros-core

SHELL ["/bin/bash", "-c"]

ENV RMW_IMPLEMENTATION=rmw_fastrtps_cpp

RUN apt update && apt install -y \
        ros-$ROS_DISTRO-rmw-fastrtps-cpp \
        ros-$ROS_DISTRO-slam-toolbox \
        ros-$ROS_DISTRO-navigation2 \
        ros-$ROS_DISTRO-nav2-bringup && \
    rm -rf /var/lib/apt/lists/*
