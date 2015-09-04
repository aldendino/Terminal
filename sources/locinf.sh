locinf ()
{
    echo -e -n "DATE:      \033[31m"
    date "+%Y-%m-%d"
    echo -e -n "\033[m"
    echo -e -n "TIME:      \033[31m"
    date "+%H:%M:%S"
    echo -e -n "\033[m"
    echo
    echo -n "WORKDIR:   "
    echo -e "\033[31m$PWD\033[m"
    echo -n "EDITOR:    "
    echo -e "\033[31m$EDITOR\033[m"
    echo
    echo -n "USER:      "
    echo -e "\033[31m$USER\033[m"
    echo -n "HOSTNAME:  "
    echo -e "\033[31m$HOSTNAME\033[m"
    echo -n "SHELL:     "
    echo -e "\033[31m$SHELL\033[m"
    echo -n "TERM:      "
    echo -e "\033[31m$TERM\033[m"
    echo
    echo -n "OSTYPE:    "
    echo -e "\033[31m$OSTYPE\033[m"
    echo -n "MACHTYPE:  "
    echo -e "\033[31m$MACHTYPE\033[m"
}
