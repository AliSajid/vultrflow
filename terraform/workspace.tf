terraform {
  backend "remote" {
    organization = "CogDisResLab"

    workspaces {
      name = "VultrFlow"
    }
  }
}
