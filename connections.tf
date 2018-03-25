# Project settings > Service accounts > Create NEW > Role project owner > Furnish a new private key type JSON > and save the json

provider "google" {

  version = "~> 1.8"
  
  credentials = "${file("~/.creds/lvnilesh-cloudgeniuslabs-123.json")}"
  project     = "cloudgeniuslabs-123"
  region      = "us-west1"
}
