1. 所采用的是vim + coc.nvim
    1. vim插件支持：`https://github.com/junegunn/vim-plug`
    2. .vimrc下配置所需插件名称
    3. 在vim中执行`:PlugInstall`命令安装配置的插件
2. 目录结构如下
  .
  ├── Dockerfile                 --> 构建镜像
  ├── daemon.json                --> 构建镜像加速(可选)
  └── root/                      --> 解决Dockerfile的COPY只拷贝指定目录下的文件和文件夹
   ├── .vim/
   │   ├── autoload/
   │   │   └── plug.vim       --> 安装vim-plug，提前下好了
   │   ├── coc-settings.json  --> 语言支持配置
   │   └── plugged/           --> :PlugInstall下载安装的插件目录，提前下好了
   │       └── coc.nvim/
   │           └── ...
   └── .vimrc                 --> vim的配置文件，其中指定了需要下载的插件

