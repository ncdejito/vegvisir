# vegvisir
<img src="assets/Vegvisir.svg" alt="logo" width="100" height="100" align="right"/>

Create 2D maps of physical spaces using Nav2 and RPLidar

ᚹᚨᚾᛞᛖᚱᛁᛜ ᛒᚢᛏ ᚾᛟᛏ ᛚᛟᛊᛏ

## Tech Used
* ROS2 Galactic
* Nav2
* RPLidar A1

## Demo
![](assets/proof.jpeg)

## Usage

```
docker run --rm -it --net=host --device /dev/dri/ --device /dev/ttyUSB0 -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority:ro vegvisir:latest
```

## Next steps
* Decouple scanner from nav2 brain to 2 containers

## References
* Planar Odometry from a Radial Laser Scanner. A Range Flow-based Approach. ICRA 2016 [paper](http://mapir.isa.uma.es/work/rf2o)
* [linorobot2](https://github.com/linorobot/linorobot2)