provider "kubernetes" {
  config_path = "~/.kube/config"
}

module "redis" {
  source = "../../modules/redis"
  env = "prod"
}