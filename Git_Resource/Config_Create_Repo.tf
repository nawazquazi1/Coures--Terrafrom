provider "github" { 
}

resource "github_repository" "Terra_From" {
  name        = "Repo_From_Terraform"
  description = "My First Repo From TerraFrom"
  visibility = "public"
  auto_init=true
}