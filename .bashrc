dEBUG=0

# To test whether .bashrc file is being read...
if [ $DEBUG -eq 1 ] ; then
    echo -e "\033[33mreading .bashrc ...\033[m"
fi

# Sets vi functionality in terminal
set -o vi

# Set tab width to 4
tabs -4

# Mask for file creation
umask 0027

# Sources all readable files in ~/sources
if [ $DEBUG -eq 1 ] ; then
    echo -n "    "
    echo -e "\033[31msourcing ...\033[m"
fi

for f in ~/sources/*
do
    if [ -f "$f" -a -r "$f" ]
    then
        if [ $DEBUG -eq 1 ] ; then
            echo -n "    "
            echo -e "\033[31msourcing\033[m $f ..."
        fi
        source "$f"
    fi
done
if [ $DEBUG -eq 1 ] ; then
    echo -n "    "
    echo -e "\033[36m... done sourcing.\033[m"
fi

# To test whether .bashrc file has been read...
if [ $DEBUG -eq 1 ] ; then
    echo -e "\033[32m... and done.\033[m"
fi

# Where am I?
if [ $DEBUG -eq 1 ] ; then
    echo -e "\033[34mworking directory:\033[m"
    echo -n "    "
    pwd
fi

# If you want to start with a blank slate...
clear

