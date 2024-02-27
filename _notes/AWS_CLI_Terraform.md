# Amazon CLI

### Installera Amazon CLI

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

### AWS Iam

- Skapa en role i Iam roles samt en user med admin-rättigheter (ej root-användare)
- Skapa Access-nycklar under den nya användaren

### Miljövariabler

```bash
export AWS_ACCESS_KEY_ID=publik
export AWS_SECRET_ACCESS_KEY=secret
```

### Konfigurera miljövariabler i AWS-Config

```bash
$ aws configure

AWS Access Key ID [****************VCM6]:
AWS Secret Access Key [****************DpyD]:

Skippa de två sista
```

<br>

# Terraform

### Kommandon

```bash
$ terraform init
$ terragorm fmt
$ terraform validate
$ terraform apply
```

Glöm ej .gitignore
