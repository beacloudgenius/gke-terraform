# Project settings > Service accounts > Create NEW > Role project owner > Furnish a new private key type JSON > and save the json

provider "google" {
  version = "~> 2.11"

  credentials = file("~/.creds/oceanic-isotope-233522-7f5fe62b1e0f.json")
  project     = "oceanic-isotope-233522"
  region      = var.region
}
