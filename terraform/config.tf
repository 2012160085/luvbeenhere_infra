terraform {
  required_version = "~> 0.12.26" //테라폼 버전 지정

  backend "s3" {
    bucket = "tfstate-luvbeenhere"
    key    = "tfstate-lhb-dev"
    region = "ap-northeast-2"
  }
}
provider "aws" {region = "ap-northeast-2"} 

resource "aws_key_pair" "lbh_key" {
  key_name   = "aws_key_pair"
  public_key = file("~/.ssh/lbh.pub")
}

