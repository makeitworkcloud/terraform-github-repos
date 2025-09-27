data "sops_file" "secret_vars" {
  source_file = "${path.module}/secrets/secrets.yaml"
}

locals {
  github_repositories = toset([
    ".github",
    "aap-libvirt-infra",
    "ansible-site-cluster",
    "ansible-role-crc",
    "ansible-role-ksops",
    "gitops-cluster",
    "cflan",
    "terraform-aws-infra",
    "terraform-github-repos",
    "terraform-libvirt-infra",
    "terraform-runner",
    "www"
  ])
  secrets = {
    "onion_s3_bucket" = {
      name         = "ONION_AWS_S3_BUCKET"
      value        = data.sops_file.secret_vars.data["onion_s3_bucket"]
      repositories = ["www"]
    }
    "onion_aws_region" = {
      name         = "ONION_AWS_REGION"
      value        = data.sops_file.secret_vars.data["onion_aws_region"]
      repositories = ["www"]
    }
    "onion_access_key_id" = {
      name         = "ONION_AWS_ACCESS_KEY_ID"
      value        = data.sops_file.secret_vars.data["onion_aws_access_key_id"]
      repositories = ["www"]
    }
    "onion_secret_access_key" = {
      name         = "ONION_AWS_SECRET_ACCESS_KEY"
      value        = data.sops_file.secret_vars.data["onion_aws_secret_access_key"]
      repositories = ["www"]
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
        "ansible-site-cluster",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "cloudflare_auth_client_secret" = {
      name  = "CLOUDFLARE_AUTH_CLIENT_SECRET"
      value = data.sops_file.secret_vars.data["cloudflare_auth_client_secret"]
      repositories = [
        "ansible-site-cluster",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "openshift_server_url" = {
      name  = "OPENSHIFT_SERVER_URL"
      value = data.sops_file.secret_vars.data["openshift_server_url"]
      repositories = [
        "ansible-site-cluster",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "openshift_username" = {
      name  = "OPENSHIFT_USERNAME"
      value = data.sops_file.secret_vars.data["openshift_username"]
      repositories = [
        "ansible-site-cluster",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "openshift_password" = {
      name  = "OPENSHIFT_PASSWORD"
      value = data.sops_file.secret_vars.data["openshift_password"]
      repositories = [
        "ansible-site-cluster",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "openshift_token" = {
      name  = "OPENSHIFT_TOKEN"
      value = data.sops_file.secret_vars.data["openshift_token"]
      repositories = [
        "ansible-site-cluster",
        "terraform-github-repos",
        "terraform-runner"
      ]
    }
    "sops_age_key" = {
      name  = "SOPS_AGE_KEY"
      value = data.sops_file.secret_vars.data["sops_age_key"]
      repositories = [
        "aap-libvirt-infra",
        "ansible-site-cluster",
        "terraform-aws-infra",
        "terraform-github-repos",
        "terraform-libvirt-infra"
      ]
    }
    "ssh_private_key" = {
      name  = "SSH_PRIVATE_KEY"
      value = data.sops_file.secret_vars.data["ssh_private_key"]
      repositories = [
        "ansible-site-cluster",
        "terraform-libvirt-infra"
      ]
    }
    "ssh_known_hosts" = {
      name  = "SSH_KNOWN_HOSTS"
      value = data.sops_file.secret_vars.data["ssh_known_hosts"]
      repositories = [
        "ansible-site-cluster",
        "terraform-libvirt-infra"
      ]
    }
    "ssh_user" = {
      name  = "SSH_USER"
      value = data.sops_file.secret_vars.data["ssh_user"]
      repositories = [
        "ansible-site-cluster"
      ]
    }
    "ssh_host" = {
      name  = "SSH_HOST"
      value = data.sops_file.secret_vars.data["ssh_host"]
      repositories = [
        "ansible-site-cluster"
      ]
    }
  }
}
