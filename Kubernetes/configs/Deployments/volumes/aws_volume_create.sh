#!/bin/bash

echo "aws cli command volume creates"

aws ec2 create-volume --size 10 --region us-east-2 --availability-zone us-east-2a --volume-type gp2 --tag-specifications 'ResourceType=volume, Tags=[{Key=K
ubernetesCluster, Value=Kubernetes.self.learning}]'