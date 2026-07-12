group "default" {
  targets = ["ubuntu-22", "ubuntu-24"]
}

target "ubuntu-24" {
  context = "ubuntu"
  args = { VERSION = "24.04" }
  tags = [
    "ghcr.io/pako-23/molecule-ubuntu:24.04",
    "ghcr.io/pako-23/molecule-ubuntu:latest"
  ]
}

target "ubuntu-22" {
  context = "ubuntu"
  args = { VERSION = "22.04" }
  tags = ["ghcr.io/pako-23/molecule-ubuntu:22.04"]
}
