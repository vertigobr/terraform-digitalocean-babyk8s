module "digital-ocean-nemo" {
  source = "git::https://github.com/poseidon/typhoon//digital-ocean/container-linux/kubernetes?ref=v1.10.1"

  providers = {
    digitalocean = "digitalocean.default"
    local        = "local.default"
    null         = "null.default"
    template     = "template.default"
    tls          = "tls.default"
  }

  # Digital Ocean
  cluster_name = "nemo"
  region       = "nyc3"
  dns_zone     = "k8s-dev-domain.vertigo.com.br"

  #controller_type = "s-2vcpu-2gb"

  # configuration
  ssh_fingerprints = "${var.ssh_keys}"
  asset_dir        = "/Users/andre/.secrets/clusters/nemo"
  # optional
  worker_count = 2
  worker_type  = "s-1vcpu-1gb"
}
