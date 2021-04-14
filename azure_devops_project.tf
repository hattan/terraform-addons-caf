module "azure_devops_projects" {
  source          = "./modules/azure-devops"
  for_each        = var.azure_devops_projects
  project         = each.value
}

output azure_devops_projects {
  value = module.azure_devops_projects
}
