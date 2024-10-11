# Adding AWS credentials ans set the region 
provider "aws" {
  profile = "abdelhadi"
  region  = var.region
}