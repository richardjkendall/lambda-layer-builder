# lambda-layer-builder

Builds a AWS python lambda layer package using docker.

Takes one environment variable: REPO which points to the public repository containing the code to be packaged.

Package is placed in the /output folder.

## Install does the following steps

* pip install using requirements.txt

## How to run

```
docker run --rm -e REPO=<git url> -v <local folder where you want the output>:/output richardjkendall/lambda-layer-builder
```
