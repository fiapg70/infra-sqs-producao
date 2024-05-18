terraform apply -var="access_key=YOUR_ACCESS_KEY" -var="secret_key=YOUR_SECRET_KEY"

sudo apt-get install -y python3-dotenv

#!/bin/bash
export $(cat .env | xargs)

chmod +x load_env.sh

source ./load_env.sh
terraform init
terraform apply
# infra-sqs-producao
