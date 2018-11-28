workflow "List environment variables" {
  on = "pull_request"
  resolves = ["shell"]
}

action "shell" {
  uses = "./Dockerfile"
  runs = "env"
}
