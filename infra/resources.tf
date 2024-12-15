

# Data Lake: Cloud Storage
resource "google_storage_bucket" "dl" {
  name          = var.gcs_bucket_name
  location      = var.location
  force_destroy = true


  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}


# Data Warehouse: BigQuery
resource "google_bigquery_dataset" "dw" {
  dataset_id = var.bq_dataset_name
  location   = var.location
}