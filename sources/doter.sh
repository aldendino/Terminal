doter ()
{
    shopt -u nocasematch # case sensitive
    # shopt -s nocasematch # case insensitive

    if [ $# -ne 1 ]
    then
        echo "Supply only one file name to be doted"
        return 1
    else
        if [ -e $1 ]
        then
            dot='.'
            filename="$dot$1"
            if [ -e "$filename" ]
            then
                echo "File \"$filename\" already exists. Overwrite? (Y/n)"

                read -e answer
                while [ "$answer" != "Y" -a "$answer" != "n" ]
                do
                    if [ "$answer" = “n” ]
                    then
                        unset dot
                        unset filename
                        unset answer
                        return 1
                    fi
                    read -e answer
                done
                if [ "$answer" = "Y" ]
                then
                    mv "$1" "$filename"
                    echo "File $filename overwritten."
                fi
            else
                mv "$1" "$filename"
            fi
        else
            echo "File \"$1\" does not exist"
        fi
    fi
    unset dot
    unset filename
    unset answer
    return 0
}
