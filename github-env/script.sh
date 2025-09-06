#!/bin/bash

echo "Inside Script > My Repo: $REPO"

# ENV_VARS=$(gh variable list --json name,value -R ${{ inputs.repo }} -e ${{ inputs.env_name }}) 
# echo "$ENV_VARS" >> env_var.json
# echo "$ENV_VARS" | jq -r '.[]|"\(.name)=\(.value)"' >> $GITHUB_ENV  