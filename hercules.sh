buildah bud -t hercules:latest .
sudo podman run -v .:/marc:Z  -dt --name=hercules  -p 3270:3270 -p 8038:8038 localhost/hercules
