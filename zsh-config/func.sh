
# 打开 Xcode 工程
function xc() {
    if [[ -n "$@" ]]; then
        (cd "$@" && xcode)
    else
        if ls *.xcworkspace 2>&1 1>/dev/null; then
            for i in *.xcworkspace;open "$i"
        elif ls *.xcodeproj 2>&1 1>/dev/null; then
            for i in *.xcodeproj;open "$i"
        else
            echo "ERROR, xcode project not exists in '$(pwd)' !"
            echo "Use this in xcode project directory or use 'ow <DIRECTORY>'"
        fi
    fi
}

function vsc() {
    if [ "$#" -eq 0 ]; then
        code .
    elif [ "$#" -eq 1 ]; then
        if [ -f $1 ]; then
            code $1
        elif [ -d $1 ]; then
            (cd $1 && code .)
        else
            (j $1 && code .)
        fi
    else
        echo "Usage: c or c path"
    fi
}

