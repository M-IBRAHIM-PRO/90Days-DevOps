#!//bin/bash

addUser(){
USER=$1
PASS=$2

useradd -m -p $PASS $USER && echo "Sucessfully added user"
}

#MAIN
addUser test_user 1234
