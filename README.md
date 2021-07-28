# mantis-docker

## build

```bash
docker build -t wutzebaer/mantis:latest .
```

## run

Adapt /ipc mount to a volume where a cardano-node shares it's unix socket.

```bash
docker run --rm -v testnet-ipc:/ipc -v %cd%:/work -w /work wutzebaer/mantis mantis chain-scripts sample-testnet.mantis --output /work/scripts
```
