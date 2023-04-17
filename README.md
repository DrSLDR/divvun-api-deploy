# divvun-api-deploy
This repository reworks the older
[ci-divvun-api](https://github.com/divvun/ci-divvun-api) repository and playbook to
match the new API server.

## Requirements
Controller (local machine):
- If using a Mac, it must have an Intel processor. **M1 Macs are not supported yet.**
- Python 3.x with Ansible (Built on Python 3.8.10, Ansible 2.11; YMMV on other versions)
- Docker
- Node.js (`npm`, specifically)

Server (remote machine):
- Ubuntu 20.04 LTS
- A (non-root) user with sudo rights

## Usage

First, run the `build_dist.sh` script. This compiles and prepares the docker image that
will be deployed.

Once that has run its course, run the Ansible playbook `playbook.yml`, of course after
editing the `inventory` to match your setup. Please note that the server **must** have a
resolvable DNS address, or the docker image will fail to start (Caddy requires a DNS
address to get Let's Encrypt certificates and will not start without them).
