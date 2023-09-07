# Containerized Cloud and Software Development Environment

## Features
* Kubernetes Command Line Tool (kubectl).
* Terraform (setting up a GKE cluster, GCP Cloud Storage, or a Google Container Registry).
* Helm (deploying Nginx chart to GKE).
* C++ (g++, Clang, Google Test, Microsoft C++ Rest SDK, Boost).
* Go (Golang)
* Rust + Cargo
* Python + PIP
* Node + npm
* AWS CLI
* Azure CLI

## Getting Started
* Install Docker via [Docker.com](https://docs.docker.com/install/) or use [build.sh](https://github.com/christimiller/dev/blob/master/install.sh).
* Configure [vimrc](https://github.com/christimiller/dev/blob/master/vimrc), [tmux.conf](https://github.com/christimiller/dev/blob/master/tmux.conf), [bashrc.sh](https://github.com/christimiller/dev/blob/master/bashrc.sh) to taste.

## Example Workflow
  * Shell into the running container.
  * Within src, clone a C++ repo, compile.
  * Modify Terraform in src, tfinit(), tfplan(), tfapply() -- these can be customized and added to in [bashrc.sh](https://github.com/christimiller/dev/blob/master/bashrc.sh).
  * Helm deploy from the charts loaded in the repos listed in [Dockerfile](https://github.com/christimiller/dev/blob/master/Dockerfile) **You can temporarily add another repo while in shell, but to be available in subsequent shell sessions, add the repos to the Dockerfile.**

## Environment Variables
Added to .gitignore, and intended (along with volume mounts) to house all private data.  While this is not intended to run outside of a local machine, no private should live in the container itself.

All else in custom.env (as example):
```
TZ=America/Los_Angeles
GOPATH=/home/me/src/go
GOBIN=/home/me/src/go/bin
APIPORT=8080
SNOWSQL_ACCOUNT=replaceme e.g. xyz12345.us-east-2.aws
SNOWSQL_USER=replaceme
SNOWSQL_PWD=replaceme
SNOWSQL_DATABASE=optional
SNOWSQL_SCHEMA=optional
SNOWSQL_ROLE=optional
SNOWSQL_WAREHOUSE=optional
SNOWSQL_HOST=optional
SNOWSQL_PORT=optional
SNOWSQL_PRIVATE_KEY_PASSPHRASE=optional
```
