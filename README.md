# General
## Description
## Scripts
### Build
```
./scripts/build.sh --name azure-pipelines-agent --version latest --build-file-path "./Dockerfile"
```
### Cleanup
```
./scripts/cleanup.sh --name azure-pipelines-agent --version latest
```
### Deploy
```
./scripts/deploy.sh --name azure-pipelines-agent --version latest --registry my.registry.com --registry-username username --registry-password password
```
### Start
```
./scripts/start.sh --name azure-pipelines-agent --image azure-pipelines-agent --version latest
```
### Enter
```
./scripts/enter.sh --name azure-pipelines-agent --workdir /home/runner --shell /bin/bash
```