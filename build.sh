packer build  \
    -var 'aws_access_key=REDACTED' \
    -var 'aws_secret_key=REDACTED' \
    -var 'aws_region=us-east-1'  \
    -var 'subnet_id=subnet-e754e6c6'  \
    -var 'ami_users=359410113455' \
    -var 'source_ami=ami-03d315ad33b9d49c4'  \
    ami.json