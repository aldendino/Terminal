mag ()
{
    shopt -u nocasematch
    if [ $# -ne 1 ]
    then
        echo "Supply only one argument, the name of the directory to create and enter."
    else
        if [ -e "$1" ]
        then
            echo "Folder "$1" already exists!"
            cd "$1"
        else 
            mkdir "$1"
            cd "$1"
        fi
    fi
}
