# Project settings > Service accounts > Create NEW > Role project owner > Furnish a new private key type JSON > and save the json

provider "google" {
  version = "~> 2.11"

  credentials = file("~/.creds/oceanic-isotope-233522-9faaa81f7372.json")
  project     = "oceanic-isotope-233522"
  region      = var.region
}
