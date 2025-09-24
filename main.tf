data "sops_file" "secret_vars" {
  source_file = "${path.module}/secrets/secrets.yaml"
}

locals {
  secrets = {
    "onion_s3_bucket" = {
      name         = "AWS_S3_BUCKET"
      value        = data.sops_file.secret_vars.data["onion_s3_bucket"]
      repositories = ["onion"]
    }
    "onion_aws_region" = {
      name         = "AWS_REGION"
      value        = data.sops_file.secret_vars.data["onion_aws_region"]
      repositories = ["onion"]
    }
    "onion_access_key_id" = {
      name         = "AWS_ACCESS_KEY_ID"
      value        = data.sops_file.secret_vars.data["onion_aws_access_key_id"]
      repositories = ["onion"]
    }
    "onion_secret_access_key" = {
      name         = "AWS_SECRET_ACCESS_KEY"
      value        = data.sops_file.secret_vars.data["onion_aws_secret_access_key"]
      repositories = ["onion"]
    }
    "www_s3_bucket" = {
      name         = "AWS_S3_BUCKET"
      value        = data.sops_file.secret_vars.data["www_s3_bucket"]
      repositories = ["www"]
    }
    "www_aws_region" = {
      name         = "AWS_REGION"
      value        = data.sops_file.secret_vars.data["www_aws_region"]
      repositories = ["www"]
    }
    "www_access_key_id" = {
      name         = "AWS_ACCESS_KEY_ID"
      value        = data.sops_file.secret_vars.data["www_aws_access_key_id"]
      repositories = ["www"]
    }
    "www_secret_access_key" = {
      name         = "AWS_SECRET_ACCESS_KEY"
      value        = data.sops_file.secret_vars.data["www_aws_secret_access_key"]
      repositories = ["www"]
    }
    "cloudflare_auth_client_id" = {
      name  = "CLOUDFLARE_AUTH_CLIENT_ID"
      value = data.sops_file.secret_vars.data["cloudflare_auth_client_id"]
      repositories = [
        "cluster",
        "repos",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "cloudflare_auth_client_secret" = {
      name  = "CLOUDFLARE_AUTH_CLIENT_SECRET"
      value = data.sops_file.secret_vars.data["cloudflare_auth_client_secret"]
      repositories = [
        "cluster",
        "repos",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "openshift_server_url" = {
      name  = "OPENSHIFT_SERVER_URL"
      value = data.sops_file.secret_vars.data["openshift_server_url"]
      repositories = [
        "cluster",
        "repos",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "openshift_username" = {
      name  = "OPENSHIFT_USERNAME"
      value = data.sops_file.secret_vars.data["openshift_username"]
      repositories = [
        "cluster",
        "repos",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "openshift_password" = {
      name  = "OPENSHIFT_PASSWORD"
      value = data.sops_file.secret_vars.data["openshift_password"]
      repositories = [
        "cluster",
        "repos",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "openshift_token" = {
      name  = "OPENSHIFT_TOKEN"
      value = data.sops_file.secret_vars.data["openshift_token"]
      repositories = [
        "cluster",
        "repos",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "sops_age_key" = {
      name  = "SOPS_AGE_KEY"
      value = data.sops_file.secret_vars.data["sops_age_key"]
      repositories = [
        "cluster",
        "libvirt",
        "repos",
        "terraform-github-repos"
      ]
    }
    "ssh_private_key" = {
      name  = "SSH_PRIVATE_KEY"
      value = data.sops_file.secret_vars.data["ssh_private_key"]
      repositories = [
        "cluster",
        "libvirt"
      ]
    }
    "ssh_known_hosts" = {
      name  = "SSH_KNOWN_HOSTS"
      value = data.sops_file.secret_vars.data["ssh_known_hosts"]
      repositories = [
        "cluster",
        "libvirt"
      ]
    }
    "ssh_user" = {
      name  = "SSH_USER"
      value = data.sops_file.secret_vars.data["ssh_user"]
      repositories = [
        "cluster"
      ]
    }
    "ssh_host" = {
      name  = "SSH_HOST"
      value = data.sops_file.secret_vars.data["ssh_host"]
      repositories = [
        "cluster"
      ]
    }
  }
}
