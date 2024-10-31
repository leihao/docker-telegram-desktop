# 基础镜像
FROM jlesage/baseimage-gui:alpine-3.17-v4
# 一些环境参数
ENV APP_NAME="telegram-desktop"
ENV KEEP_APP_RUNNING="1"
# 安装APP,写APP启动脚本
RUN add-pkg telegram-desktop font-droid-nonlatin --repository https://mirrors.tuna.tsinghua.edu.cn/alpine/edge/testing \
&& echo '#!/bin/sh' >> /startapp.sh && echo "telegram-desktop" >> /startapp.sh && chmod 755 /startapp.sh
