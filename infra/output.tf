# Data Lake: Cloud Storage
output "gcp_data_lake_bucket_name" {
  value = google_storage_bucket.dl.name
}

# Data Warehouse: BigQuery
output "gcp_data_warehouse_dataset_name" {
  value = google_bigquery_dataset.dw.dataset_id
}