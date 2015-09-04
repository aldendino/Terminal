vimer ()
{
    shopt -u nocasematch # case sensitive
    # shopt -s nocasematch # case insensitive
    echo "Enter the file name"
    read -e name
    if [ -e "$name" ]
    then
        echo "$name already exists" 0>&2
        echo "continue? (Y/n) (Or anything else to quit without overwriting...)"
        read -e ans
        if [ "$ans" = "Y" ]
        then
            echo "File $name overwritten"
            touch "$name"
            chmod u+x "$name"
            echo "#!/bin/bash" > "$name"
            echo "#Source: $name" >> "$name"
            echo "" >> "$name"
            echo "" >> "$name"
            vim "$name"
        else
            echo "File $name NOT overwritten"
        fi
    else
        touch "$name"
        chmod u+x "$name"
        echo "#!/bin/bash" > "$name"
        echo "#Source: $name" >> "$name"
        echo "" >> "$name"
        echo "" >> "$name"
        vim "$name"
    fi
    return 0
}
