provider "aws" {
  region = "eu-west-1"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_route53_record" "media-ns" {
  zone_id = "${aws_route53_zone.dotmedia.zone_id}"
  name = "infectious.media"
  type = "NS"
  ttl = "86400"
  records = ["${aws_route53_zone.dotmedia.name_servers.2}", 
        "${aws_route53_zone.dotmedia.name_servers.3}", "ns1.p05.dynect.net.", "ns2.p05.dynect.net."]    
}

resource "aws_route53_record" "name" {
  
}

resource "aws_route53_record" "media-txt" {
  zone_id = "${aws_route53_zone.dotmedia.zone_id}"
  name = "infectious.media"
  type = "TXT"
  records = ["google-site-verification=pHIluP6Wns2eJMQEQKGhaKoGQZkG9kuvb9IdMoooGgk"]
  ttl = "3600"
}