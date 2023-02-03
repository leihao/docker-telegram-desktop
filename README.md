# docker-telegram-desktop
[![ci](https://github.com/leihao/docker-telegram-desktop/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/leihao/docker-telegram-desktop/actions/workflows/docker-publish.yml)

Run telegram in docker with vnc support
### GitHub:

[https://github.com/leihao/docker-telegram-desktop/](https://github.com/leihao/docker-telegram-desktop/)
### ImageBase:

[https://github.com/jlesage/docker-baseimage-gui](https://github.com/jlesage/docker-baseimage-gui "https://github.com/jlesage/docker-baseimage-gui")                                       

### Setup
1. Terminal

   ```bash
   docker create \
      --name=telegram-desktop \
      -p 5800:5800 \
      -p 5900:5900 \
      -v /PATH_TO_YOUR_CONFIG:/config \
      --restart unless-stopped \
      leihaocn/docker-telegram-desktop:latest
   ```

2. Docker compose

   ```yaml
    version: '2.4'
    services:
      telegram-desktop:
        image: leihaocn/docker-telegram-desktop:latest
        network_mode: bridge
        hostname: telegram-desktop
        container_name: telegram-desktop
        ports:
          - '5800:5800'
          - '5900:5900'
        volumes:
          - ./:/config
        environment:
          TZ: Asia/Shanghai
          USER_ID: 1026
          GROUP_ID: 100
          WEB_LISTENING_PORT: 5800
          VNC_LISTENING_PORT: 5900
          VNC_PASSWORD:
          KEEP_APP_RUNNING: '1'
   ```
