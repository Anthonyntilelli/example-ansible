#!/usr/bin/env bash
################ Script metadata ###############################################
#: Title        : Loads aws creds
#: Author       : Anthony Tilelli
#: Description  : Loads credentials from AWS cli creds file (sourse this file)
#: Requirements : BASH 4.0+
#: Version      : 0.0.4 (https://semver.org/)
################ Script metadata ###############################################
TIMESTAMP="$(date)"
AWS_CRED_FILE="$HOME/.aws/credentials"

if [ -f "$AWS_CRED_FILE" ]; then
  AWS_ACCESS_KEY_ID=$(grep -oP 'aws_access_key_id = \K.*' "$AWS_CRED_FILE")
  AWS_SECRET_ACCESS_KEY=$(grep -oP 'aws_secret_access_key = \K.*' "$AWS_CRED_FILE")
  if [[ -z "$AWS_ACCESS_KEY_ID" ]] || [[ -z "$AWS_SECRET_ACCESS_KEY" ]]; then
    printf "FATAL %d: %s: %s\\n" "4" "$TIMESTAMP" "Unable to find the AWS_ACCESS_KEY_ID or AWS_SECRET_ACCESS_KEY" >&2
  else
    export AWS_ACCESS_KEY_ID
    export AWS_SECRET_ACCESS_KEY
  fi
else
    printf "FATAL %d: %s: %s\\n" "3" "$TIMESTAMP" "$AWS_CRED_FILE does not exist" >&2
fi



