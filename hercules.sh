buildah bud -t hercules:latest .
sudo podman run -v .:/marc:Z  -dt --name=hercules  -p 3270:3270 localhost/hercules
