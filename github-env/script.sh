#!/bin/bash

echo "My Repo: $REPO"
echo "Environment Name: $ENV_NAME"

ENV_VARS=$(gh variable list --json name,value -R $REPO -e $ENV_NAME) 
echo "$ENV_VARS" >> env_var.json

var_count=$(cat env_var.json | jq 'length')

if [ $var_count -gt 0 ]; then
    echo "Number of variables retrieved: $var_count"
    echo "$ENV_VARS" | jq -r '.[]|"\(.name)=\(.value)"' >> $GITHUB_ENV  
else
    echo "No variables retrieved: $var_count"
fi
