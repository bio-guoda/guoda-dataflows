#!/bin/bash
#
# Syncronize NFS mounted HDFS file system to local computer
#
# No delete flag yet. Need to ponder contigencies

HDFS_PATH="/mnt/guoda-hdfs-nfs/home/mjcollin/"
LOCAL_PATH="/storage/guoda-hdfs/home/mjcollin/"

dt=`date --rfc-3339=seconds`
echo "Starting sync at $dt"

rsync -a $HDFS_PATH $LOCAL_PATH
e=$?

dt=`date --rfc-3339=seconds`
echo "Finished sync at $dt"

exit $e
