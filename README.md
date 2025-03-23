# Terraform


**Terraform installation on ubuntu using apt**


sudo -i

apt-get update

apt-get install -y gnupg software-properties-common     _// need to be install necessary packages_

**To install the HashiCorp GPG key. Run below commands**

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null


**Verify the gpg key**

gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint


**_Add Hashicorp repository to our system_** 

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list


**Update packages**

apt update

**Install Terraform**

apt-get install terraform


**You can check Terraform**

terraform --version


