# Project settings > Service accounts > Create NEW > Role project owner > Furnish a new private key type JSON > and save the json

provider "google" {

  version = "~> 2.2.0"

  credentials = "${file("~/.creds/oceanic-isotope-233522-b030dceb4b1a.json")}"
  project     = "oceanic-isotope-233522"
  region      = "${var.region}"
}
