variable "github_owner" {
  description = "The GitHub owner (user or organization) for the repository."
  type        = string
  default     = "makeitworkcloud"
}

variable "github_repositories" {
  description = "Set of GitHub repositories to manage"
  type        = set(string)
  default     = []
}

variable "github_visibility" {
  description = "Public, private, or internal visibility"
  type        = string
  default     = "public"
}
