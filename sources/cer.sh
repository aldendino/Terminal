cer ()
{
    shopt -u nocasematch # case sensitive
    # shopt -s nocasematch # case insensitive
    if [ $# -ne 1 ]
    then
        echo "Supply the File name, and only the File name."
        return 1
    else
        cid='.c'
        filename="$1$cid"
        if [ -e "$filename" ]
        then
            echo "File \"$filename\" already exists. Overwrite? (Y/n) (p to print file contents, x to quit)"
            read -e answer
            while [ "$answer" != "Y" -a "$answer" != "n" ]
            do
                if [ "$answer" = "p" ]
                then
                    cat "$filename"
                    echo
                elif [ "$answer" = "x" ]
                then
                    unset cid
                    unset filename
                    unset answer
                    return 1
                else
                    echo "Please input (Y/n/p), or x to quit."
                fi
                read -e answer
            done
            if [ "$answer" = "Y" ]
            then
                echo "File \"$filename\" overwritten."
                touch "$filename"
                echo "#include <stdio.h>" > "$filename"
                echo "#include <stdlib.h>" >> "$filename"
                echo "#include <string.h>" >> "$filename"
                echo "#include <ctype.h>" >> "$filename"
                echo >> "$filename"
                echo >> "$filename"
            elif [ "$answer" = "n" ]
            then
                echo "File \"$filename\" NOT overwritten."
            fi
        else
            touch "$filename"
            echo "#include <stdio.h>" > "$filename"
            echo "#include <stdlib.h>" >> "$filename"
            echo "#include <string.h>" >> "$filename"
            echo "#include <ctype.h>" >> "$filename"
            echo >> "$filename"
            echo >> "$filename"
        fi 
    fi
    unset cid
    unset filename
    unset answer
    return 0
}
