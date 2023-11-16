# Define Docker image resource
resource "docker_image" "nginx_image" {
  name         = "nginx:latest"
  keep_locally = false
}

# Define Docker container resource
resource "docker_container" "nginx_container" {
  name  = "nginx-container"
  image = docker_image.nginx_image.latest

  ports {
    internal = 80
    external = 8080
  }

  # You can mount volumes or make other container configurations here
}
