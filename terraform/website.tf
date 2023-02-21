module "website" {
  source      = "./static-site"
  domain_name = var.domain_name
}