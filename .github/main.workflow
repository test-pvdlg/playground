workflow "List environment variables" {
  on = "pull_request"
  resolves = ["shell"]
}

action "shell" {
  uses = "./"
  runs = "./script.sh"
  secrets = ["GITHUB_TOKEN"]
}
