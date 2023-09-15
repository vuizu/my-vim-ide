FROM alpine:latest

MAINTAINER thq23333@gmail.com

WORKDIR /root

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk add --update --no-cache vim git nodejs npm clang-extra-tools tzdata

# 设置时区
ENV TZ=Asia/Shanghai

# CocInstall需要npm，故指定淘宝镜像
RUN npm config set registry https://registry.npm.taobao.org/

COPY root .

# --build-arg lang="c++" -> default
ARG lang=c++

RUN sh .lang_installer.sh $lang

CMD ["tail", "-F", "/dev/null"]
