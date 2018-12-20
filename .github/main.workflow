workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "./action-a"
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello World, I'm $MY_NAME!\""
}
