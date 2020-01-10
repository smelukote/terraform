provider "google" {
  version = "~> 2.0, >= 2.5.1"
  alias   = "tokengen"
}

data "google_client_config" "default" {
  provider = "google.tokengen"
}

data "google_service_account_access_token" "sa" {
  provider               = "google.tokengen"
  target_service_account = "${var.terraform_service_account}"
  lifetime               = "1200s"

  scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
  ]
}

/******************************************
  GA Provider configuration
 *****************************************/
provider "google" {
  version       = "~> 2.0, >= 2.5.1"
  access_token  = "${data.google_service_account_access_token.sa.access_token}"
  project       = "${var.project_id}"
  region        = "${var.region}"
}

/******************************************
  Beta Provider configuration
 *****************************************/
provider "google-beta" {
  version       = "~> 2.0, >= 2.5.1"
  access_token  = "${data.google_service_account_access_token.sa.access_token}"
  project       = "${var.project_id}"
  region        = "${var.region}"
}

/******************************************
  Provider backend store
  You must set the local application credentials using :
  gcloud auth application-default login
 *****************************************/
terraform {
  backend "gcs" {
    bucket = "jenkins-123-terraform-state"
    prefix = "jenkins-123-terraform"
  }
}