#!/bin/sh

if [ ! -z "$VERBOSE" ]; then
  set -x
fi

credentials_uri=$AWS_CONTAINER_CREDENTIALS_RELATIVE_URI

if [ -z "$DUMMY_CRED" ]; then
  creds=`curl --connect-timeout 1 169.254.170.2$credentials_uri`
else
  echo "using dummy"
  read -r -d '' creds << EOF
{
  "AccessKeyId": "$AWS_ACCESS_KEY_ID",
  "Expiration": "EXPIRATION_DATE",
  "RoleArn": "TASK_ROLE_ARN",
  "SecretAccessKey": "$AWS_SECRET_ACCESS_KEY",
  "Token": ""
}
EOF

fi

s3_access_key_id=`echo $creds | jq -r '.AccessKeyId'`
s3_secret_access_key=`echo $creds | jq -r '.SecretAccessKey'`
s3_security_token=`echo $creds | jq -r '.Token'`

export S3_ACCESS_KEY="$s3_access_key_id"
export S3_SECRET_KEY="$s3_secret_access_key"
if [ ! -z "$s3_security_token" ]; then
  export S3_SECURITY_TOKEN="$s3_security_token"
fi

set -- /usr/local/bin/entrypoint.sh "$@"

exec "$@"
