buildah bud -t hercules:latest .
sudo podman run -e DISPLAY  -v .:/marc:Z -v ~/.Xauthority:/root/.Xauthority:Z --net=host  -dt --name=hercules  -p 3270:3270 -p 8038:8038 localhost/hercules
