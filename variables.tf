variable "do_token" {}
variable "public_key" {
    default = "~/.ssh/id_rsa.pub"
}
variable "cloud_config" {
    default = "cloud-config.yml"
}
