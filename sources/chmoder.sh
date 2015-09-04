chmoder ()
{
    if [ $# -ne 1 ]
    then
        echo $0 ": one arg, the file to add user executability."
        exit 1
    fi

    if [ -e "$1" ]
    then
        chmod u+x $1
        exit 0
    else
        echo $0 ": file $1 does not exist!"
        exit 1
    fi
}
