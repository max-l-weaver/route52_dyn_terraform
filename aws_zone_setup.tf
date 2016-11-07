resource "aws_route53_zone" "dotmedia" {
  name = "infectious.media"
}

resource "aws_route53_zone" "mediafr" {
  name = "infectiousmedia.fr"
}

resource "aws_route53_zone" "mediaeu" {
  name = "infectiousmedia.eu"
}

resource "aws_route53_zone" "impdesk" {
  name = "impdesk.com"
}

resource "aws_route53_zone" "inmz" {
  name = "inmz.net"
}

resource "aws_route53_zone" "infectiousdigital" {
  name = "infectiousdigital.com"
}

resource "aws_route53_zone" "dotcom" {
  name = "infectiousmedia.com"
}

resource "aws_route53_zone" "impressiondesk" {
  name = "impressiondesk.com"
}