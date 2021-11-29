FROM almalinux
ARG ROS_DISTRO=rolling
ENV ROS_DISTRO=${ROS_DISTRO}

# install ros
ADD http://packages.ros.org/ros2/rhel/ros2.repo /etc/yum.repos.d/ros2.repo
RUN dnf install \
  'dnf-command(config-manager)' \
  epel-release \
  -y --refresh
RUN dnf config-manager --set-enabled powertools 
RUN dnf install -y ros-${ROS_DISTRO}-ros-base

# set up sourcing of ros
COPY ./ros_entrypoint.sh /
ENTRYPOINT [ "/ros_entrypoint.sh" ]