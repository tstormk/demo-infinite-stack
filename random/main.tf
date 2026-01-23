terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

resource "random_pet" "randome_one" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 4
}

resource "random_pet" "randome_two" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 4
}

resource "random_pet" "randome_three" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 4
}
