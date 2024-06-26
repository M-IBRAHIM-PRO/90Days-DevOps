#!/bin/bash

echo "Creating users.."
sudo useradd -m $1
sudo useradd -m $2

echo "Users created: "
echo $1
echo $2

