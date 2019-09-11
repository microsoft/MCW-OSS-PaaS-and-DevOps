workflow "Build, Test, and Publish" {
  on = "push"
  resolves = ["npm install and build"]
}

action "Install" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  args = "install"
}

action "npm install and build" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  needs = ["Install"]
  args = "cd \"Hands-on lab/lab-files\" && npm install && npm run build"
}
