#!/bin/bash

   # Substitua com sua região e ID da conta AWS
   AWS_REGION="us-east-1"
   AWS_ACCOUNT_ID="AKIAWMFUPCZ5ZGGU3NUJ"

   # Obtenha a senha e faça login no Docker
   aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com

   # Verifique se o login foi bem-sucedido
   if [ $? -eq 0 ]; then
       echo "Login no ECR bem-sucedido"
   else
       echo "Falha no login no ECR"
   fi
 
