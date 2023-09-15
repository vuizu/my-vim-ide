cmd="apk add --update --no-cache "

function install() {
    case $1 in
        "c" | "c++")
            eval "$cmd g++ cmake clang"
            ;;
        "python")
            eval "$cmd python3"
            ;;
        "go")
            # eval "$cmd go"
            echo "todo"
            ;;
        "rust")
            # eval "$cmd curl"
            # curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
            echo "todo"
            ;;
        "*")
            ;;
    esac
}

for i in $@
do
    install $i
done
