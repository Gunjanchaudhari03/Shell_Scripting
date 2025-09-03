#!/bin/bash

read -p "Enter your username " username
echo "you have entered $username"
sudo useradd -m $username
echo "New user added"

