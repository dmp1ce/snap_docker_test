# Snap server in Docker test

To see if the Snap server works by building snap image

`docker build -t snap_docker_test .`

Run the docker container

`docker run --rm -p 8000:8000 snap_docker_test`

Try to access the site via a web browser.

`curl http://127.0.0.1:8000`
