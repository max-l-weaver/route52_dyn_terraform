provider "aws" {
  region = "eu-west-1"
}

resource "aws_route53_zone" "dotmedia" {
  name = "infectious.media"
}

resource "aws_route53_record" "media-ns" {
  zone_id = "${aws_route53_zone.dotmedia.zone_id}"
  name = "infectious.media"
  type = "NS"
  ttl = "86400"
  records = ["${aws_route53_zone.dotmedia.name_servers.0}", 
        "${aws_route53_zone.dotmedia.name_servers.1}", "ns1.p05.dynect.net.", "ns2.p05.dynect.net."]     
}

resource "aws_route53_record" "media-txt" {
  zone_id = "${aws_route53_zone.dotmedia.zone_id}"
  name = "infectious.media"
  type = "TXT"
  records = ["google-site-verification=pHIluP6Wns2eJMQEQKGhaKoGQZkG9kuvb9IdMoooGgk"]
  ttl = "3600"
}