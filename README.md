# Exemplo de criação instancia EC2 com terraform
Este exemplo cria uma instancia EC2 com terraform.
Este processo inclui:
- Arquivo de credentials (obsoleta, mas funcional)
- Utilização da VPC default criado pela AWS
- Criação de Security group personalizado
- Utilização de *user-data* através de um script shell (bootstrap.sh), que irá efetuar alguns comandos e instalação do APACHE após a criação da instância

# Executando
Primeiramente será necessário inserir os seguintes valores nos arquivos:
- Suas credenciais AWS no arquivo '.credentials'
- O nome da sua chave SSH no arquivo 'instance.tf' na tag *key_name*

Feito isso, efetuar o git clone, ou copiar manualmente os códigos deste repositório e executar os comandos terraform:
```
terraform init
terraform plan
terraform apply
```
Se nenhum erro for reportado, a instância será criada!

# Testando
Se tudo der certo, alguns minutos após a execução do 'terraform apply', você pode acessar sua instância via SSH ou acessar via web http://ipdasuainstancia
