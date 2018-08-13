#!/bin/bash
#
# Syncronize NFS mounted HDFS file system to local computer
#
# No delete flag yet. We will be "archiving" data from HDFS, which is too small for all things of interest,
# to moose so leave things. Consider a more robust long-term data management plan.

HDFS_PATH="/mnt/guoda-hdfs-nfs/home/"
LOCAL_PATH="/storage/guoda-hdfs/home/"

dt=`date --rfc-3339=seconds`
echo "Starting sync at $dt"

rsync -a $HDFS_PATH $LOCAL_PATH
e=$?

dt=`date --rfc-3339=seconds`
echo "Finished sync at $dt"

exit $e
