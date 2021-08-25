# BasicNetwork-2.0

The project BasicNetwork-2.0 can help us build a test hyperledger network automatically and quickly.

This project refer to [the wonderful work](git clone https://github.com/adhavpavan/BasicNetwork-2.0.git)

## Usage

* Create necessary identity materials using `create-artifacts.sh`

  ```shell
  #Enter the channel folder
  cd artifacts/channel
  #Create the identity materials
  ./create-artifacts.sh
  ```
  
   `create-artifacts.sh` will help us automatically generate
  
  (1) **crypto-config** folder which contains all necessary identity materials for participants in the network
  
  (2) the **genesis.block** for the system channel
  
  (3) the **[channelName].tx** for creating the channel
  
* Start the participants' docker containers

  ```shell
  # Enter the artifacts folder
  cd ..
  # Start the docker containers in the background
  docker-compose up -d
  ```

  This command will start all the **orderers** and **peers** in the network.

* Create the channel and join all the peers into the channel

  ```shell
  # Enter the BasicNetwork-2.0 folder
  cd ..
  # Create and join the channel
  ./createChannel.sh
  ```

  `createChannel.sh` helps us create the channel using **[channelName].tx** and joins all the peers into this newly created channel.

* Deploy the chaincode

  ```shell
  # Enter the BasicNetwork-2.0 folder before using following tool
  ./deployChaincode.sh
  ```

  `deployChaincode.sh` will help us install、approve、instantiate、initialize the chaincode automatically.


## Extension

[HyperledgerHelper-front-end](https://github.com/zhaizhonghao/HyperledgerHelper-front-end) provides friendly user interface to help us create the basic hyperledger network step by step. Please go to the [HyperledgerHelper-front-end](https://github.com/zhaizhonghao/HyperledgerHelper-front-end) for details.

Before using the [HyperledgerHelper-front-end](https://github.com/zhaizhonghao/HyperledgerHelper-front-end), we need to copy the [configtxTool](https://github.com/zhaizhonghao/HyperledgerHelper)  into `BasicNetwork-2.0/artifacts` folder and run the configtxTool.