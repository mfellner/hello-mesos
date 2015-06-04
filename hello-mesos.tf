provider "digitalocean" {
    token = "${var.do_token}"
}

resource "digitalocean_droplet" "mesos-master" {
    image = "coreos-beta"
    name = "coreos1"
    region = "fra1"
    size = "512mb"
    private_networking = true
    ssh_keys = ["${digitalocean_ssh_key.default.id}"]
    user_data = "${file("${var.cloud_config}")}"
}

# Disable this section when using an existing ssh key.
resource "digitalocean_ssh_key" "default" {
    name = "Terraform"
    public_key = "${file("${var.public_key}")}"
}
