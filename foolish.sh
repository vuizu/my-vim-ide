# 使用虚拟化技术qemu + kvm -> todo
# 检查是否安装了docker -> todo
docker build --build-arg lang="python c++" -t ide:latest -f ./Dockerfile .
if [ $? -eq 0 ];then 
    docker run --name vim_ide -d --privileged=true ide
    if [ $? -eq 0 ]; then
        docker exec -it vim_ide /bin/sh
    fi
fi
