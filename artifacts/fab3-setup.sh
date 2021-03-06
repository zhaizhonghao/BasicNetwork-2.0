  # Environment Variables for Fab3:
  export FAB3_CONFIG=./first-network-sdk-config.yaml # Path to a compatible Fabric SDK Go config file
  export FAB3_USER=User1 # User identity being used for the proxy (Matches the users names in the crypto-config directory specified in the config)
  export FAB3_ORG=Org1  # Organization of the specified user
  export FAB3_CHANNEL=basicchannel # Channel to be used for the transactions
  export FAB3_CCID=evmcc # ID of the EVM Chaincode deployed in your fabric network. If not provided default is evmcc.
  export FAB3_PORT=5000 # Port the proxy will listen on. If not provided default is 5000.

  ./fab3

