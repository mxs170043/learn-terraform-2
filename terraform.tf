terraform {

  cloud {
    organization = "hashicorp-trainingqwr"

    workspaces {
      name = "learn-terraform"
    }
  }
  required_version = "~> 1.2"
}

