### Como configurar e provisionar um banco de dados SQL Server via Terraform

Gere a área restrita em: 

https://learn.microsoft.com/pt-br/training/modules/create-serverless-logic-with-azure-functions/5-add-logic-to-the-function-app?pivots=javascript&source=learn
ou
https://learn.microsoft.com/pt-br/training/modules/build-api-azure-functions/2-exercise-setup-project

// this has ubuntu permission
https://learn.microsoft.com/pt-br/training/modules/create-first-aks-edge-essentials/3-exercise-deploy-aks-edge-essentials

connect with ssh using 
```bash
ssh -i C:\Users\lucas.69412/.ssh/id_rsa.pom
```

Ela vai permitir que você tenha espaço na nuvem da Microsoft de forma gratuita.

Após gerar a área restrita, entre em https://portal.azure.com/#settings/directory e altere o diretório de trabalho para o diretório da Sandbox
 
Entre em https://portal.azure.com/#view/HubsExtension/BrowseResourceGroups e copie e cole o nome do grupo de recursos no arquivo variables.tf

```hcl
variable "resource_group_name" {
  default = "learn-81e3d56a-55c3-4c5f-98e4-475b0c0f9c0b"  <--- aqui entre as aspas
}
```

No mesmo arquivo, altere a variável de IP para o seu IP atual 

Consulte seu ip em https://meuip.com.br/ e cole ele aqui

```hcl
variable "ip" {
  default = "189.8.209.3"  <--- aqui entre as aspas
}
```

Exclua os arquivos:
terraform.tfstate
.terraform.lock.hcl

Siga os passos em https://learn.microsoft.com/pt-br/cli/azure/install-azure-cli para baixar o Azure CLI

Ao baixar abra um terminal e rode o comando `AZ LOGIN`

Para identificar seu grupo de recurso criado use o comando  `az group list`
 
Siga os passos em https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli para baixar o Terraform

Ao baixar abra um terminal acesse a pasta com os arquivos do repositório do git e rode o comando `TERRAFORM INIT`

Agora é só rodar um `TERRAFORM APPLY` e aceitar o script com um `yes`

Seu servidor e banco de dados SQL Server está funcional

Instale o SSMS pelo link https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16

E faça as configurações de conexão conforme a imagem abaixo.

![alt text](https://github.com/Castrozan/SlqServerAzureTerraform/blob/master/img/MSSMS.png)

Divirta-se
