# Hello Mesos

Basic example of Apache Mesos on CoreOS and Digital Ocean, using [Terraform](https://www.terraform.io/).

#### Usage

    terraform plan
    terraform apply

The pulling of Docker containers for Mesos on CoreOS can take a few minutes.

#### Prerequisites

Create a file `terraform.tfvars` for the following variables:

* do_token (required)
* public_key (optional, default is *~/.ssh/id_rsa.pub*)

#### Get Digital Ocean SSH key IDs (when using an existing key)

    curl -X GET -H 'Content-Type: application/json' \
        -H 'Authorization: Bearer $DO_TOKEN' \
        "https://api.digitalocean.com/v2/account/keys"

#### Generate a New Discovery URL (for cloud-config.yml)

    curl -w "\n" https://discovery.etcd.io/new

Replace *discovery* in cloud-config.yml with the generated URL.

## Resources

* https://www.digitalocean.com/community/tutorials/how-to-set-up-a-coreos-cluster-on-digitalocean
* https://docs.mesosphere.com/tutorials/mesosphere-on-a-single-coreos-instance
