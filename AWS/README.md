# Ansible and AWS

A practice project to implement a simple [web application](./aws_web_application.drawio.svg) in aws.

## Pre-requisite

- May need to install the AWS collection is using ansible-core. (`ansible-galaxy collection install amazon.aws`)
- `botocore` and `boto3` are required for AWS modules to run.
- AWS credentials must be set as environmental variables.

## AWS Credentials

For ansible credentials are expected to be environmental variables[`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`](https://docs.ansible.com/ansible/latest/collections/amazon/aws/docsite/guide_aws.html#authentication), source the file `load_aws_creds.sh` to extract access keys from AWS cli.

## Usage

`ansible-playbook playbook.yml`
