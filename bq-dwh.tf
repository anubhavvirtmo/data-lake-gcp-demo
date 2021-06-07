
# Data warehouse
resource "google_bigquery_dataset" "dwh-bq-system1" {
  dataset_id                  = "SYSTEM1"
  description                 = ""
  project = google_project.data-warehouse.project_id
  location                    = local.region
  # Order of access matters
  # WRITER -> OWNER -> READER
  access {
    role          = "WRITER"
    group_by_email = "${local.unique_id}-ds@gmail.com"
  }
  access {
    role           = "OWNER"
    group_by_email = "${local.unique_id}-de@gmail.com"
  }
  access {
    role           = "READER"
    group_by_email = "${local.unique_id}-da@gmail.com"
  }
}

resource "google_bigquery_dataset" "dwh-bq-system2" {
  dataset_id                  = "SYSTEM2"
  description                 = ""
  project = google_project.data-warehouse.project_id
  location                    = local.region
  access {
    role          = "WRITER"
    group_by_email = "${local.unique_id}-ds@gmail.com"
  }
  access {
    role           = "OWNER"
    group_by_email = "${local.unique_id}-de@gmail.com"
  }
  access {
    role           = "READER"
    group_by_email = "${local.unique_id}-da@gmail.com"
  }
}

resource "google_bigquery_dataset" "dwh-bq-system3" {
  dataset_id                  = "SYSTEM3"
  description                 = ""
  project = google_project.data-warehouse.project_id
  location                    = local.region
  access {
    role          = "WRITER"
    group_by_email = "${local.unique_id}-ds@gmail.com"
  }
  access {
    role           = "OWNER"
    group_by_email = "${local.unique_id}-de@gmail.com"
  }
  access {
    role           = "READER"
    group_by_email = "${local.unique_id}-da@gmail.com"
  }
}
