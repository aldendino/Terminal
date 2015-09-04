folder() {
    local DATE=`date +%Y-%m-%d`
    local TIME=`date +%H:%M:%S`
    local FORMAT="$DATE $TIME"
    if [ ! -f "$FORMAT" ]; then
        mkdir "$FORMAT"
        echo "Folder \"$FORMAT\" created."
    else
        echo "Folder \"$FORMAT\" already exists!"
    fi
}
