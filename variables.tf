/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
variable "project_id" {
  description = "The project id"
  default     =  "jenkins-123-264620"
}

variable "machine_type" {
  description = "The machine type to create"
  default = "f1-micro"
}

variable "zones" {
  type   = "list"
  description = "List of zones with in the region to deply the instances in"
  default = ["us-central1-a"]
}

variable "region" {
  type   = "string"
  description = "List of regions to deploy the instances in"
  default = "us-central1"
}

variable "boot_disk_size" {
  description = "The boot disck size to create"
  default = "10"
}
variable "terraform_service_account" {
  description = "terraform SA for creating jumpbox"
  default = "terraform-service-account@jenkins-123-264620.iam.gserviceaccount.com"
}