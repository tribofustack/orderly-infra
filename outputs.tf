output "db_info" {
  value     = module.database.db_info
  sensitive = true
}
output "cluster_info" {
  value     = module.cluster.cluster_info
  sensitive = true
}