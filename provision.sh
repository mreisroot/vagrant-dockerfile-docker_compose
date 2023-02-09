#!/bin/bash

# Executar o script inteiro como usuário root

sudo su - << EOF

  # Adicionar o repositório do Docker
  apt update
  apt install -y ca-certificates curl gnupg lsb-release

  mkdir -m 0755 -p /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

  echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
                    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

  chmod a+r /etc/apt/keyrings/docker.gpg
  apt update

  # Instalar o Docker
  apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

  # Executar o Docker Compose e implantar o serviço a API web
  docker compose up -d

EOF
