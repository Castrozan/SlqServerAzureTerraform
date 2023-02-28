# Lista de variaveis utilizadas nos arquivos de terraform

# Gere a área de recursos em: https://learn.microsoft.com/pt-br/training/modules/create-serverless-logic-with-azure-functions/5-add-logic-to-the-function-app?pivots=javascript&source=learn
# Após gerar, entre em https://portal.azure.com/#settings/directory e alterar para o diretório da Sandbox
# Por fim, entre em https://portal.azure.com/#view/HubsExtension/BrowseResourceGroups e copie e cole o nome do grupo de recursos aqui em baixo
variable "resource_group_name" {
  default = "learn-81e3d56a-55c3-4c5f-98e4-475b0c0f9c0b"  
}
# NÃO ESQUEÇA DE ALTERAR LÁ EM BAIXO O SEU IP


variable "location" {
  default = "Brazil South"
}

variable "usuario_admin" {
  default = "lucas1234"
}

variable "password" {
  default = "Adm-1234"
}

# Vai em https://meuip.com.br/ e cole ele aqui
variable "ip" {
  default = "189.8.209.3"
}

# INSTALE O AZURE CLI E RODE UM "AZ LOGIN" PARA LOGAR NA AZURE 
# RODE "TERRAFORM INIT" DPS, "TERRAFORM VALIDADE", SE DER ERRO, SE VIRE
# POR FIM, RODE "TERRAFORM PLAN" E "TERRAFORM APPLY"

# AGORA É SÓ ENTRAR NO BANCO QUE VOCÊ CRIOU NO PORTAL E ADICIONAR O SEU IP NO FIREWALL
# CLIQUE LÁ NO SERVER E PESQUISE POR REDE