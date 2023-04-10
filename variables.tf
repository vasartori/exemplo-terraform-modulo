variable "service_account_file" {
  description = "path com o arquivo para a service account"
  type        = string
}

variable "project" {
  description = "Google Project"
  type        = string
}

variable "region" {
  description = "regiao para criar os recursos"
  type        = string
  default     = "us-east1"
}
variable "zona" {
  description = "regiao para criar os recursos"
  type        = string
  default     = "us-east1-a"
}

variable "size" {
  description = "quantidade de vms que serão criadas"
  default     = 1
}

variable "prefixo_da_vm" {
  description = "prefixo do nome da vm"
  type        = string
  default     = "vm-name"
}
variable "tipo_de_vm" {
  description = "flavor da vm"
  type        = string
  default     = "f1-micro"
}
variable "network_tags" {
  description = "tags de rede que serão repassadas para a vm"
  type        = list(any)
  default     = ["ssh", "http", "https"]
}
variable "imagem" {
  description = "imagem de SO que a vm será criada"
  type        = string
  default     = "ubuntu-22.04"
}
variable "metadata_startup_script" {
  description = "metadata startup"
  type        = string
  default     = ""
}
variable "network" {
  description = "network onde a vm será atachada"
  type        = string
  default     = "default"
}

