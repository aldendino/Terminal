transfer() {
    NAME="$1"
    if [ $# -lt 1 ]
    then
        echo "Usage: $0 source"
        echo "Usage: $0 source destination"
    elif [ $# -eq 1 ]
    then
        scp -r "$NAME"@moon.scs.ryerson.ca:"$2" ~/Desktop
    elif [ $# -eq 2 ]
    then
        scp -r "$NAME"@moon.scs.ryerson.ca:"$2" "$3"
    fi
}
