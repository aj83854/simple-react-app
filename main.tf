terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.23.0"
    }
  }
}

# Connect to local Unix socket docker daemon listens on
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pull image
resource "docker_image" "simple_react_app" {
  name = "simple-react-app:prd"
}
# Since we're not publishing to Docker hub, first
# build w/ 'docker build -t simple-react-app:prd .'

# Launch container w/ pulled image
resource "docker_container" "TFTest" {
  image = docker_image.simple_react_app.image_id
  name  = "TFTest"
  
  ports {
    internal = "80"
    external = "8080"
  }

}
