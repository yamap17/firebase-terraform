# firebase-terraform

.env コピー

```
$ mv .env.example .env
```

tfvars コピー

```
$ mv ./terraform/{環境}/.terraform.tfvars.example ./terraform/{環境}/.terraform.tfvars

ex)
$ mv ./terraform/production/.terraform.tfvars.example ./terraform/production/.terraform.tfvars
```

各環境のコンテナ内に入る

```
$ docker compose run --rm terraform-production
```

```
$ terraform plan
```
