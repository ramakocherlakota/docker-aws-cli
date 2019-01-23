# docker-aws-cli

Creates a docker container where you can run AWS python code (either
cli or python).

1. Build the container using ./build.sh (the image will be named aws-cli:latest)
2. To open up a shell in the container, execute ./bash-container.sh some-container-name
3. To run a python script use ./py-container.sh python-script-name.py arg1 arg2.  The container name will be the name of the script you're running so if you're trying to run the same script in multiple conteainers you'll run into trouble.

I've noticed on the Mac that if my current working directory (which gets mounted in the container) isn't on the list that can be mounted (see the Preferences dialog in the Docker app) then you get an error message like "directory exists".  Just add the directory (or one of its parents) to the list and restart the Docker daemon and it should resolve.

Also note that you need to authenticate to AWS and have the AWS_* environment variables, including aWS_DEFAULT_REGION, set for anything to work.


