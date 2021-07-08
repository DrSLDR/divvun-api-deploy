# divvun-api-deploy
This repository reworks the older
[ci-divvun-api](https://github.com/divvun/ci-divvun-api) repository and playbook to
match the new API server.

## Requirements
Controller (local machine):
- Python 3.x with Ansible (Built on Python 3.8.10, Ansible 2.11; YMMV on other versions)
- Docker
- Node.js (`npm`, specifically)

Server (remote machine):
- Ubuntu 20.04 LTS
- A (non-root) user with sudo rights
