# ANSIBLE JENKINS

This folder contains the infrastructure as a code for Jenkins server.
This Jenkins is 100% configured and managed 'as code'.
It is not intended to do any configuration in the UI.

## Requirements

To run this jenkins-playbook an 'ansible' sudo user is needed.

## Press Play

```bash
ansible-playbook jenkins-playbook.yml
```

(`--ask-become-pass` for the first `sudo`)

## Testing and development

Ansible provides two modes of execution that validate tasks: check mode and diff mode.
Check mode is just a simulation, great for validating configuration management playbooks that run on one node at a time.
Diff mode reports the changes made or, if used with --check, the changes that would have been made.

Use them together at best:

```bash
ansible-playbook jenkins-playbook.yml --diff --check
```

## Note

Configuration that is not possible with plugins and Jenkins CLI may be done with XML config files.
Copy those files to Jenkins `xml_config`.

## ANSIBLE Usage 💡

0. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) and cd to ./ansible 📁 !
1. Check if hosts.cfg file was created during Terraform apply ✔️
2. Add hosts to your inventory:

```bash
ansible-playbook -i ansible-hosts.cfg jenkins-playbook.yml
```

## Contribution

> Have a look at the code for how to update any of the deploys

# Made by

rojberr 👷‍♂️
