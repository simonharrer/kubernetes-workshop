
provider "google" {
    credentials = "${file("secrets.json")}"
    project     = "dsg-sem-m-sose-2019"
    region      = "europe-west3"
}