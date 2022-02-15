# infra - WIP

## Overview

My homelab IaC efforts.

## Terraform

See the [terraform/README.md](terraform/README.md) for more information.


## Ansible

Install the requirements with:

```
make requirements
```

### Bootstrap

```bash
ansible-playbook bootstrap.yml -k -K --extra-vars "user=root" --limit ungrouped
```
