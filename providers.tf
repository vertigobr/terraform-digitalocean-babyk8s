variable "do_token" {}

variable "ssh_keys" {
  default = []
}

provider "digitalocean" {
  version = "0.1.3"
  token   = "${var.do_token}"
  alias   = "default"
}

provider "local" {
  version = "~> 1.0"
  alias   = "default"
}

provider "null" {
  version = "~> 1.0"
  alias   = "default"
}

provider "template" {
  version = "~> 1.0"
  alias   = "default"
}

provider "tls" {
  version = "~> 1.0"
  alias   = "default"
}
