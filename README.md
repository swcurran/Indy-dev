## Descriptions
This is an easy to configure development environment to play around with Hyperledger Indy. Files can be written in an IDE or text editor like VSCode on the host machine, while being able to have a consistent docker environment to run files in a simple way. It uses docker and docker images that are pre-configured to setup a pool (indy_pool) and a Indy development environment (indy_dev) and allow the devlopment environment to interact with the pool of indy_nodes. This is not intended to allow for indy-plenum, plenum-plugin, or  indy-node development. If you'd like to do that, check out sovrin's [token-plugin](https://github.com/sovrin-foundation/token-plugin#org003878b) repository.

## Prerequisites
1. [Docker](https://docs.docker.com/install/#supported-platforms)
2. [Git](https://git-scm.com/downloads)
3. A Bash shell.  Bash is standard for Mac and Linux. For Windows, when you installed git from the downloads link above, you will also have installed git-bash.

## Manage Script

The repo includes the executable `manage` script to control the basic docker-compose commands you will need to use. Use it to do the following from the repo root directory:

- Build the containers: `./manage build`
  - To force a full rebuild use: `./manage rebuild`
- Run the Indy ledger and ledger browser web server: `./manage start`
- Stop the ledger - ctrl-c from where you started it, or `./manage stop` from another terminal session
- Remove persistent storage/reset the environment - `./manage rm`

Note that this is all covered in the ./manage script usage. Run it with no parameters to see the parameters.

## Access the Indy CLI, bash and Python

- Build the containers - `./manage build`
- Start the indy ledger - `./manage start`
  - access the Ledger Browser Web Server at `http://localhost:9000`
- In a separate terminal session (same directory), run `./manage cli` to go into the `indy-cli`
  - To run `bash` run `./manage bash`. From there you can run `indy-cli` or python.
  - In both cases, you are running in the client docker container. Within that is a `python` folder with getting started code (see below). The `python` folder is directly mounted from the `python` folder in this repo, so you can do code edits in your favourite editor and see the affects within the container without having to restart the project.

## Test Python environment
Once inside the docker shell (started in step 2 of "how to start"):

```
cd python
python3 getting_started.py
```

If the getting started guide completes through the end of cleanup everything is working correctly.

## Going through the IndySDK How-to guides

Details to be added shortly

## improvement plans
* Fix Python How-to guides
* Finish DID-Auth example
* Add support for different versions of SDKs
* Add Node.js wrapper support (help wanted)
* Add Java wrapper support (help wanted)
* Add .net wrapper support (help wanted)
* Add Objective C wrapper support (help wanted)

