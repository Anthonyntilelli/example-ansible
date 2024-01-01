# Ansible and AWS

A practice project to implement a simple [3 tier web application](./aws_3_tier.drawio.svg) in aws.

## AWS Credentials

For ansible credentials are expected to be environmental variables[`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`](https://docs.ansible.com/ansible/latest/collections/amazon/aws/docsite/guide_aws.html#authentication), source the file `load_aws_creds.sh` to extract access keys from AWS cli.

