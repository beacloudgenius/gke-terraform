#### Save gcloud credentials

Click on Project settings > Service accounts > Create NEW > Role project owner > Furnish a new private key type JSON > and save the json in a folder in your workstation. Note its location and modify the contents of the credentials.tf as shown below.

    Notice: I saved my oceanic-isotope-233522-b030dceb4b1a.json in folder `~/creds/`

#### Run

    terraform init .
    terraform apply

#### Save kubeconfig in `~/.kube`

    gcloud container clusters get-credentials andromeda --zone us-west1-a --project oceanic-isotope-233522
