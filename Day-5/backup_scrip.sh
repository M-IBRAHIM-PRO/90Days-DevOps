

#!/bin/bash

scr_dir=/home/ibrahim/BWT_DevOps
tgt_dir=/home/ibrahim/backups

curr_timeStamp=$(date "+%Y-%m-%d-%H-%M-%S")
backup_file=$tgt_dir/$curr_timeStamp.tgz

echo "Taking backup on $curr_timeStamp and in $backup_file"
tar czf $backup_file $src_dir.
echo "Backup Completed on $(date "+%Y-%m-%d-%H-%M-%S")"
