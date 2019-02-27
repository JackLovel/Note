#!/bin/bash

check_directory()
{
    directory="./100_empty_file/"
    if [ ! -d $directory ]; then
        mkdir $directory
    fi
}

create_100_file()
{
    #file_prefix=".c"
    file_prefix=".txt"
    for name in {1..100}$file_prefix
    do
        touch $name
    done
}


main()
{
    directory="./100_empty_file/"
    check_directory
    cd $directory
    create_100_file
}

main
