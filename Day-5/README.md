# Day-5
# 90 Days DevOps Challange

## Advance Shell Scripting
In day 5 of 90 days challange we will study about the creation of **multiple directories** from a single command, **backup** of all the work and **creation of multiple users** 
### 1.Multiple Directory Creation
Following are the commands and script ```./createDirectories.sh``` :
```bash
              
#!/bin/bash 

# $1 : Name of Directory, $2 : Starting nuber of directory
# $3 : Ending number of directory
echo "Creating Directories $1 from $2 to S3"

# Eval is used because of the use of " "
eval mkdir "$1{$2..$3}"

echo "Directories created."
```
In the terminal write command in a way :
```bash
./createDirectories.sh <name> <start index> <end index>
```
**Note** : Remember the method used in previous days to [How to run the script First time?](../Day-4/README.md).

### 2.Backup of Any Directory
Now, we will move towards some partical usage of DevOps and the thing we will learn is how to take backup of the files ```./backup_scrip```:
```bash
#!/bin/bash

# Src represents the path of the directory of which I am going to take backup
# Tgt represents the path where I want to place the backup data
scr_dir=/home/ibrahim/BWT_DevOps 
tgt_dir=/home/ibrahim/backups

# I am storing the backup file by the time stamp of year-month-day-hour-min-sec
curr_timeStamp=$(date "+%Y-%m-%d-%H-%M-%S")
backup_file=$tgt_dir/$curr_timeStamp.tgz

echo "Taking backup on $curr_timeStamp and in $backup_file"
tar czf $backup_file $src_dir.
echo "Backup Completed on $(date "+%Y-%m-%d-%H-%M-%S")"
```

### 3.Creating users in the Linux operating system
Now, we will learn to create new users in the OS using basic command:
```bash
sudo useradd -m <username>
```
Below is the script to create two users by passing their names as arguments 
```./creatUsers.sh```:
```bash
#!/bin/bash

echo "Creating users.."

sudo useradd -m $1
sudo useradd -m $2

echo "Users created: "
echo $1
echo $2

```
We will run in the terminal like :
```bash
./createUsers.sh <username-1> <username-2>
```

### Refrences :
1. Watch video in case of any confusion : [Advance shell scripting](https://www.youtube.com/watch?v=UYstAfqkLtg&list=PLlfy9GnSVerQr-Se9JRE_tZJk3OUoHCkh&index=4)
