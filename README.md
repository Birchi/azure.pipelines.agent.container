# General
## Description
## Scripts
### Build
```
./scripts/build.sh --name github-actions-runner --version latest --build-file-path "./Dockerfile"
```
### Cleanup
```
./scripts/cleanup.sh --name github-actions-runner --version latest
```
### Deploy
```
./scripts/deploy.sh --name github-actions-runner --version latest --registry my.registry.com --registry-username username --registry-password password
```
### Start
```
./scripts/start.sh --name github-actions-runner --image github-actions-runner --version latest
```
### Enter
```
./scripts/enter.sh --name github-actions-runner --workdir /home/runner --shell /bin/bash
```