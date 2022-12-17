terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.46"
    }
  }
}

provider "google" {
  credentials = file("C:\\Users\\steve\\OneDrive\\gcpfree\\myexperiments-371917-28adf09015cd.json")

  project = "myexperiments-371917"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
