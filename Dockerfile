# ��������
FROM jlesage/baseimage-gui:alpine-3.17-v4
# һЩ��������
ENV APP_NAME="telegram-desktop"
ENV KEEP_APP_RUNNING="1"
# ��װAPP,дAPP�����ű�
RUN add-pkg telegram-desktop wqy-zenhei --repository https://mirrors.tuna.tsinghua.edu.cn/alpine/edge/testing \
&& echo '#!/bin/sh' >> /startapp.sh && echo "telegram-desktop" >> /startapp.sh && chmod 755 /startapp.sh