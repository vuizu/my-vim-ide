FROM alpine:latest

WORKDIR /root

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk add --update --no-cache vim git nodejs npm clang-extra-tools g++ cmake

# CocInstall需要npm，故指定淘宝镜像
# RUN npm config set registry https://registry.npm.taobao.org/

# COPY plug.vim .vim/autoload/
# COPY .vimrc .
# COPY coc-settings.json .vim/
# COPY .vim/ .
COPY root .

# 手动创建~/.vim/autoload目录，同时下载plug.vim文件
# https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# :PlugInstall -> ~/.vim/plugged目录
# :CocConfig -> 添加内容后生成coc-settings.json文件

CMD ["tail", "-F", "/dev/null"]
