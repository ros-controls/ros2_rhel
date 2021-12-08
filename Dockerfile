FROM almalinux:8
ARG ROS_DISTRO=rolling
ENV ROS_DISTRO=${ROS_DISTRO}

# install ros
ADD http://packages.ros.org/ros2/rhel/ros2.repo /etc/yum.repos.d/ros2.repo
RUN dnf install \
  'dnf-command(config-manager)' \
  epel-release \
  cmake \
  gcc-c++ \
  make \
  langpacks-en \
  git \
  -y --refresh
RUN dnf config-manager --set-enabled powertools 
RUN dnf install -y ros-${ROS_DISTRO}-ros-base \
python3-rosdep \
python3-colcon-common-extensions
RUN rosdep init
RUN pip3 install vcstool colcon-mixin colcon-coveragepy-result colcon-lcov-result

# set up sourcing of ros
COPY ./ros_entrypoint.sh /
ENTRYPOINT [ "/ros_entrypoint.sh" ]
CMD ["bash"]
