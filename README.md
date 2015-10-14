CoderVault Development Environment
----------------------------------
This repository provides a `Vagrantfile` to create a
[CoderVault](https://github.com/codervault/codervault) development environment
using VirtualBox. After setup is complete you will have a _Ubuntu 14.04 (LTS)_
VM running on your local machine and available at `192.168.33.10`.

## Setup
1. Download and install the latest version of the following tools for your platform.

    - [Git](https://www.git-scm.com/downloads)
    - [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
    - [Vagrant](https://www.vagrantup.com/downloads.html)

2. Clone the repository on your computer.

        git clone https://github.com/codervault/Vagrantfile CoderVault

3. Clone the source code repositories and let the magic begin.

        cd CoderVault
        git clone https://github.com/codervault/codervault ./src
        vagrant up

### Shared Folders
The source code folder located in `./src` are shared with the virtual machine
under `/home/vagrant`. **The contents of this folder will not be included in this repository.**

### Vagrant Cheat Sheet
Almost all interaction with Vagrant is done through the _command-line interface_.

The interface is available using the `vagrant` command, and comes installed with Vagrant automatically. The `vagrant` command in turn has many subcommands:

- `vagrant init`: initializes the current directory to be a Vagrant environment by creating an initial Vagrantfile if one doesn't already exist.
- `vagrant up`: creates and configures guest machines according to your Vagrantfile.
- `vagrant ssh`: SSH into a running Vagrant machine and give you access to a shell.
- `vagrant destroy`: stops the running machine Vagrant is managing and destroys all resources that were created during the machine creation process.
- `vagrant status`: tells you the state of the machines Vagrant is managing.
- `vagrant halt`: shuts down the running machine Vagrant is managing.
- `vagrant reload`: the equivalent of running a halt followed by an up.

Consult the [Vagrant Command-Line Interface](https://docs.vagrantup.com/v2/cli/index.html) documentation for more.
