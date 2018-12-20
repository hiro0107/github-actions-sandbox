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

workflow "New workflow 1" {
  on = "push"
  resolves = ["Hello World-1"]
}

action "Hello World-1" {
  uses = "./action-a"
}
