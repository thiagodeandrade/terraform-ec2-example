# Define qual provider será utilizado
# a opção de shared_credentials_file está obsoleta, pode gerar um alerta, mas não um erro.
provider "aws" {
    region  = "us-east-1"
    shared_credentials_file = ".credentials"
    profile = "awsterraform"
}
