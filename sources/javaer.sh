javaer ()
{
    shopt -u nocasematch # case sensitive
    # shopt -s nocasematch # case insensitive
    if [ $# -ne 1 ]
    then
        echo "Supply the Class name, and only the Class name."
        return 1
    else
        javaid='.java'
        class="$1"
        filename="$class$javaid"
        if [ -e "$filename" ]
        then
            echo "File \"$filename\" already exists. Overwrite? (Y/n) (p to print file contents, x to quit)"
            read -e answer
            while [ "$answer" != "Y" -a "$answer" != "n" ]
            do
                if [ "$answer" = "p" ]
                then
                    cat "$filename"
                elif [ "$answer" = "x" ]
                then
                    unset javaid
                    unset class
                    unset filename
                    unset answer
                    return 1
                else
                    echo "Please input (Y/n/p), or x to quit"
                fi
                read -e answer
            done
            if [ "$answer" = "Y" ]
            then
                echo "File \"$filename\" overwritten."
                touch "$filename"
                echo "public class $class" > "$filename"
                echo -e -n "{\n\n}" >> "$filename"
                echo >> "$filename"
            elif [ "$answer" = "n" ]
            then
                echo "File \"$filename\" NOT overwritten."
                
            fi
        else
            touch "$filename"
            echo "public class $class" > "$filename"
            echo -e -n "{\n\n}" >> "$filename"
            echo >> "$filename"
        fi
    fi
    unset javaid
    unset class
    unset filename
    unset answer
    return 0
}
