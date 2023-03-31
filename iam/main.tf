# module "sa" {
#   source             = "../../modules/iam/service_account"
#   service_account_id = "test-sa-1"
#   display_name       = "Service Account created by terraform"
#   sa_role            = ""
# }


resource "google_service_account" "sa" {
  account_id   = "test-sa-1"
  display_name = "Service Account created by terraform"
}

resource "google_service_account_key" "sa_key" {
  service_account_id = google_service_account.sa.name
}

