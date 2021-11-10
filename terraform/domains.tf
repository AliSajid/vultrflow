resource "vultr_dns_domain" "cdrlprojects" {
  domain = "cdrlprojects.org"
}

resource "vultr_dns_domain" "cdrlut" {
  domain = "cdrl-ut.org"
}

resource "null_resource" "update_name_servers_projects" {
  provisioner "local-exec" {
    command = "aws-vault exec cdrl-admin -- aws route53domains update-domain-nameservers --region us-east-1 --domain-name ${vultr_dns_domain.cdrlprojects.domain} --nameservers Name=ns1.vultr.com Name=ns2.vultr.com"
  }
}

resource "null_resource" "update_name_servers_ut" {
  provisioner "local-exec" {
    command = "aws-vault exec cdrl-admin -- aws route53domains update-domain-nameservers --region us-east-1 --domain-name ${vultr_dns_domain.cdrlut.domain} --nameservers Name=ns1.vultr.com Name=ns2.vultr.com"
  }
}
