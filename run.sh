docker run \
    -d \
    -v $(pwd)/ethereum_frontier:/root/.ethereum \
    -p 127.0.0.1:8545:8545 \
    -p 0.0.0.0:30303:30303 \
    go-ethereum geth --rpc --rpcaddr 0.0.0.0 --maxpeers 200
