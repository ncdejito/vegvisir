FROM osrf/ros:galactic-desktop

COPY . .

RUN sh install.sh

CMD sh run.sh