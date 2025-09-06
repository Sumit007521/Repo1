#!/bin/bash

echo "My Repo: $REPO"
echo "Environment Name: $ENV_NAME"

ENV_VARS=$(gh variable list --json name,value -R $REPO -e $ENV_NAME) 
echo "$ENV_VARS" >> env_var.json
# echo "$ENV_VARS" | jq -r '.[]|"\(.name)=\(.value)"' >> $GITHUB_ENV  