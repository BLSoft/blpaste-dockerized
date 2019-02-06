# BLPaste-dockerized
Dockerized version of blpaste. ( [https://git.blsoft.hu/barrow099/blpaste](https://git.blsoft.hu/barrow099/blpaste) )

Docker repo: [https://hub.docker.com/r/blsoft/blpaste](https://hub.docker.com/r/blsoft/blpaste)

## Requirements
 - mysql server
 - web server
 - docker (optionally with docker-compose)

## Usage
 0. Set up the requirements
 1. Get `blpaste.env` and modify to suit your environment
 2. Run:
    ```
    docker run -d --name blpaste -v static_files_dir:/app/staticdir -p 8000:8000 --env-file blpaste.env blsoft/blpaste:latest
    ```
 3. Serve with web server (e.g. Apache or Nginx). Serve static files with the server, proxy all other requests to blpaste (default: port 8000)

<br><br><br>
 More sample config and all-in-one compose file will be available soon