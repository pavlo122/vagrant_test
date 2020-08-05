
## Requirements

First, make sure your development machine has
[VirtualBox](https://www.virtualbox.org/)
and
[Ansible]https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
installed. After this install:
[Vagrant](https://www.vagrantup.com/downloads.html).

You also need to have free subnet 192.168.1.0/24(or you need to change all "192.168.1." to your free subnet in Vagrantfile) and you need to have 65534 port free(or change it in Vagrantfile)

## Getting Started
In console you should paste these commands:
    git clone github.com/pavlo122/vagrant_test.git
    cd vagrant_test
    vagrant up
If it finished without errors you should be able to paste localhost:65534(or 192.168.1.10:8080) and see hostname of one of 2 nodes running under lb
