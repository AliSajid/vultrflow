resource "vultr_instance" "bastion" {
  plan             = "vhf-2c-2gb"
  region           = "ewr"
  os_id            = "452"
  label            = "bastion"
  tag              = "staging"
  hostname         = "bastion.cdrlprojects.org"
  activation_email = false
  ssh_key_ids      = [vultr_ssh_key.asimami_vultr_key.id]
}
