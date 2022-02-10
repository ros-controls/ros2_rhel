This is a sample Dockerfile that show ros2 installed on almalinux based on the [binary installation instructions at docs.ros.org](https://docs.ros.org/en/galactic/Installation/RHEL-Install-Binary.html). My most recent public build can be found at docker.io/jaronl/ros2_alma on hub.docker.com.

The image tries to emulate the official ros2 images but on alma (downstream RHEL) linux. Therefore a few extra packages can be found within this repo that are not mentioned at the above link, i.e. colcon, etc.

Only supports galactic and later releases as that is what the ros2 buildfarm supports for RHEL.