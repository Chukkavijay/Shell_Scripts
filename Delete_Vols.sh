#!/bin/bash
#Deleting Unattached Volumes
delete_unattached_vols() {
    vols=$(aws ec2 describe-volumes | jq ".Volumes[].VolumeId" | tr -d '"')
    for vol in $vols; do
        state=$(aws ec2 describe-volumes --volume-ids $vol | jq ".Volumes[].Attachments[].State" -r)
        if [ "${state}" == 'attached' ]; then
            echo "$vol is a Attached To EC2 Instance. It cannot be Delete"
        else
            echo "Deleting Volume $vol"
            aws ec2 delete-volume --volume-id $vol
        fi
    done
}

delete_unattached_vols
