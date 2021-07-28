docker build -t wutzebaer/mantis:latest .
docker push wutzebaer/mantis:latest

docker run --rm -v testnet-ipc:/ipc -v %cd%:/work -w /work wutzebaer/mantis mantis chain-scripts sample-testnet.mantis --output /work/scripts