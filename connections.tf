# Project settings > Service accounts > Create NEW > Role project owner > Furnish a new private key type JSON > and save the json

provider "google" {
  version = "~> 2.20"

  credentials = file("~/btsync/config/.creds/oceanic-isotope-233522-44ccd78389de.json")
  project     = "oceanic-isotope-233522"
  region      = var.region
}
