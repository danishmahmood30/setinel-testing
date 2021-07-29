provider "google" {
  credentials = file("my-serverless-project.json")
  project     = "single-odyssey-305316"
  region      = "us-central1"
  zone        = "us-central1-c"
}
