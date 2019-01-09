workflow "List environment variables" {
  on = "pull_request"
  resolves = ["shell"]
}

action "shell" {
  uses = "./"
  runs = "git push --dry-run https://${GITHUB_TOKEN}@github.com/pvdlg/playground.git HEAD:master"
  env = {
    MY_SECRET = "secret_value"
  }
  secrets = ["GITHUB_TOKEN"]
}
