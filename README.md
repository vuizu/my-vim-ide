1. 所采用的是vim + coc.nvim：
    1. vim插件支持: `https://github.com/junegunn/vim-plug`
    2. .vimrc下配置所需插件名称: `https://github.com/neoclide/coc.nvim`
    3. 在vim中执行`:PlugInstall`命令安装配置的插件
2. 目录结构如下：
    ```
    .
    ├── Dockerfile                 --> 构建镜像
    ├── daemon.json                --> 构建镜像加速(可选)
    └── root/                      --> 解决Dockerfile的COPY只拷贝指定目录下的文件和文件夹
        ├── .lang_installer.sh     --> 安装指定语言的SDK/库
        ├── .vim/
        │   ├── autoload/
        │   │   └── plug.vim       --> 安装vim-plug，提前下好了
        │   ├── coc-settings.json  --> 语言支持配置
        │   └── plugged/           --> :PlugInstall下载安装的插件目录，提前下好了
        │       └── coc.nvim/
        │           └── ...
        └── .vimrc                 --> vim的配置文件，其中指定了需要下载的插件
    ```
3. 如果需要安装其他语言的依赖，则需要执行如下VIM指令: 
    1. c/c++ -> 不需要安装插件，直接配置coc-settings.json即可
    2. python -> `:CocInstall coc-pyright` / `:CocInstall @yaegassy/coc-pylsp`，后者对新手更友好，有注释
    3. go -> todo...
    4. rust ->  todo...
    5. 其他语言参考coc.nvim的wiki页面
4. 用户可直接使用docker build构建自己的镜像，或者傻瓜式的执行foolish.sh脚本
