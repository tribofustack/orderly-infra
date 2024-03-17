module "database" {
  source = "git::https://github.com/tribofustack/cloudsql-iac.git"

  depends_on = google_project_service.serviceusage

  project_id  = var.project_id
  zone        = var.zone
  region      = var.region
  instance_name = var.instance_db_name
  db_name       = var.db_name
  db_username   = var.db_username
  db_pass       = var.db_pass
}

module "cluster" {
  source = "git::https://github.com/tribofustack/kubernetes-engine-iac.git"
  
  depends_on = [ google_project_service.serviceusage ]

  project_id  = var.project_id
  zone        = var.zone
  region      = var.region  
  cluster_name = var.cluster_name
}