# Docker Nessus
This repo contains the dockerfile to download and install Nessus 8.11 inside a ubuntu container.

# Usage Instructions
* Buy the licence or register as an individual user on [tenable.com](tenable.com)
* Pull this image from docker registry `docker run -p 8834:8834 --name nessus darshkpatel/nessus`
* Visit `https://localhost:8834`
* Note: If chrome throws invalid cert error you can click anywhere on the error page and type `thisisunsafe` to proceed, this happens due to the https cert being registered to the containers docker hostname instead of localhost

# Versions
darshkpatel/nessus:latest -  Nessus - 8.11.1


## Note
I'm in no way affiliated with Tenable or it's subsidiaries. This image is provided just to make life easier for other security researchers.
