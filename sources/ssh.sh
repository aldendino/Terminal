function sshrye {
    NAME="$1"
    if [ $# -eq 0 ] ; then
        ssh -q "$NAME"@moon.scs.ryerson.ca
    elif [ $# -eq 1 ] ; then
        ssh -q "$NAME"@$2.scs.ryerson.ca
    else
        echo "usage: $FUNCNAME [moon]"
    fi
}
