#### Save gcloud credentials

Click on Project settings > Service accounts > Create NEW > Role project owner > Furnish a new private key type JSON > and save the json in a folder in your workstation. Note its location and modify the contents of the credentials.tf as shown below.

    Notice: I saved my oceanic-isotope-233522-b030dceb4b1a.json in folder `~/btsync/config/.creds/`

#### Configure AWS cli

    aws configure

Provide your keys and select a region.

I chose

    us-west-2

Edit backends.tf and edit DynamoDB table name

#### Create your bucket

    aws s3 mb s3://cgterraform

I chose

    cgterraform

Check

    aws s3 ls | grep cgterraform

Edit backends.tf and edit bucket name

#### Create a DynamoDB table

    aws dynamodb create-table \
        --table-name cgterraform \
        --attribute-definitions AttributeName=LockID,AttributeType=S \
        --key-schema AttributeName=LockID,KeyType=HASH \
        --billing-mode "PAY_PER_REQUEST"

I chose

    cgterraform

Check

    aws dynamodb describe-table --table-name cgterraform

Edit backends.tf and edit DynamoDB table name

#### Initialize terraform and run

    terraform init
    terraform apply

#### Save kubeconfig in `~/.kube`

    gcloud container clusters get-credentials andromeda --zone us-west1-a --project oceanic-isotope-233522
