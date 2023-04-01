Como configuirar e provisionar um banco de dados SQL Server via Terraform

Gere a área restrita em: 

https://learn.microsoft.com/pt-br/training/modules/create-serverless-logic-with-azure-functions/5-add-logic-to-the-function-app?pivots=javascript&source=learn
ou
https://learn.microsoft.com/pt-br/training/modules/build-api-azure-functions/2-exercise-setup-project

Ela vai permitir que você tenha espaço na nuvem da Microsoft de forma gratuita.

Após gerar a área restrita, entre em https://portal.azure.com/#settings/directory e altere o diretório de trabalho para o diretório da Sandbox
 
Por fim, entre em https://portal.azure.com/#view/HubsExtension/BrowseResourceGroups e copie e cole o nome do grupo de recursos no arquivo variables.tf

variable "resource_group_name" {
  default = "learn-81e3d56a-55c3-4c5f-98e4-475b0c0f9c0b"  <--- aqui
}

No mesmo arquivo, altere a variável de IP para o seu IP atual 

Consulte seu ip em https://meuip.com.br/ e cole ele aqui
variable "ip" {
  default = "189.8.209.3"    <--- aqui
}

Exclua os arquivos:
terraform.tfstate
.terraform.lock.hcl

INSTALE O AZURE CLI E RODE UM "AZ LOGIN" PARA LOGAR NA AZURE

Você pode baixar o Azuer Cli com o comando 

winget install -e --id Microsoft.AzureCLI
 
RODE "TERRAFORM INIT" DPS, "TERRAFORM VALIDADE", SE DER ERRO, SE VIRE
 
POR FIM, RODE "TERRAFORM PLAN" E "TERRAFORM APPLY"

Você pode baixar o terraform com o comando abaixo

winget install terraform
