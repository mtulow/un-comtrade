# Create and set the following roles to IaC service account:
# - Storage Admin
# - Storage Object Admin
# - BigQuery Admin

# Create the IaC service account
gcloud iam service-accounts create iac-service-account \
    --description="Service account to use for the terraform client." \
    --display-name="iac-service-account"

# Storage Admin
gcloud projects add-iam-policy-binding un-global-trade \
    --member="serviceAccount:iac-service-account@un-global-trade.iam.gserviceaccount.com" \
    --role="roles/storage.admin"

# Storage Object Admin
gcloud projects add-iam-policy-binding un-global-trade \
    --member="serviceAccount:iac-service-account@un-global-trade.iam.gserviceaccount.com" \
    --role="roles/storage.objectAdmin"

# BigQuery Admin
gcloud projects add-iam-policy-binding un-global-trade \
    --member="serviceAccount:iac-service-account@un-global-trade.iam.gserviceaccount.com" \
    --role="roles/bigquery.admin"

# Create and set the following roles to the Mage service account:
#  - Artifact Registry Read
#  - Artifact Registry Writer
#  - Cloud Run Admin
#  - Service Account Token Creator
#  - Service Account User

# Creates the Mage service account
gcloud iam service-accounts create mage-service-account \
    --description="Service account to use for the Mage client." \
    --display-name="mage-service-account"

# Artifact Registry Read
gcloud projects add-iam-policy-binding un-global-trade \
    --member="serviceAccount:mage-service-account@un-global-trade.iam.gserviceaccount.com" \
    --role="roles/artifactregistry.reader"

# Artifact Registry Writer
gcloud projects add-iam-policy-binding un-global-trade \
    --member="serviceAccount:mage-service-account@un-global-trade.iam.gserviceaccount.com" \
    --role="roles/artifactregistry.writer"

# Cloud Run Admin
gcloud projects add-iam-policy-binding un-global-trade \
    --member="serviceAccount:mage-service-account@un-global-trade.iam.gserviceaccount.com" \
    --role="roles/run.admin"

# Service Account Token Creator
gcloud projects add-iam-policy-binding un-global-trade \
    --member="serviceAccount:mage-service-account@un-global-trade.iam.gserviceaccount.com" \
    --role="roles/iam.serviceAccountTokenCreator"

# Service Account User
gcloud projects add-iam-policy-binding un-global-trade \
    --member="serviceAccount:mage-service-account@un-global-trade.iam.gserviceaccount.com" \
    --role="roles/iam.serviceAccountUser"

