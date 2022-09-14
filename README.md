This is a sample Dockerfile that show ros2 installed on almalinux based on the [binary installation instructions at docs.ros.org](https://docs.ros.org/en/galactic/Installation/RHEL-Install-Binary.html). The most recent public build can be found with the docker tag: ghcr.io/ros-controls/ros:<ROS_DISTRO>-rhel where <ROS_DISTRO> is replaced with the ros distribution you are targeting.

The image tries to emulate the official ros2 images but on alma (downstream RHEL) linux. Therefore a few extra packages can be found within this repo that are not mentioned at the above link, i.e. colcon, etc.

Only supports galactic and later releases as that is what the [ros2 buildfarm supports for RHEL](https://ros.org/reps/rep-2000.html#galactic-geochelone-may-2021-november-2022).