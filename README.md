# Implantação de API web usando Docker Compose e Dockerfile

Neste projeto, uma API web é implantada usando o Docker Compose, que criará uma imagem personalizada do servidor web NGINX e criará um container a partir desta imagem.

A máquina virtual Vagrant é provisionada pelo shell.

## Executando o provisionamento

Após a criação da máquina, será executado o arquivo provision.sh, que realizará as seguintes etapas:

1. Atualizar os repositórios do Ubuntu

2. Adicionar o repositório do Docker

3. Instalar o Docker

4. Executar as instruções do arquivo docker-compose.yml

O arquivo docker-compose.yml especifica a criação da imagem Docker personalizada do NGINX, a criação de um container chamado viacep baseado nesta imagem personalizada e a criação de uma rede para este container.

## Resultados

Após a criação e provisionamento, o resultado final será um container da API web do site [VIACEP](https://viacep.com.br)

## Como usar este projeto

Para criar a máquina virtual Vagrant, execute o comando:

`vagrant up`

Para acessar a API web, digite na barra de pesquisa de um navegador web:

`192.168.56.11:8080`
