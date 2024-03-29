#!/bin/bash

echo "To delete a specific volume use: 'aws ec2 delete-volume --volume-id <vol-ids>' "
sleep 5

echo "Delete all volumes"

aws ec2 describe-volumes | egrep "VolumeId" | awk '{print $NF}' | sed 's/\"//g;s/\,//' > vol_ids

sleep 3

for id in `cat vol_ids`
do
    aws ec2 delete-volume --volume-id $id
done

echo "Volumes has been successfully deleted"
