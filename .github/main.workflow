workflow "List environment variables" {
  on = "pull_request"
  resolves = ["shell"]
}

action "shell" {
  uses = "./"
  runs = "env && cat /github/workflow/event.json"
  env = {
    MY_SECRET = "secret_value"
  }
}
