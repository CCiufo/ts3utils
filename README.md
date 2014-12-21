# ts3utils

ts3utils provides a collection of scripts, configuration files and other utilities to fulfill a server administrator requirements of a server software.
Teamspeak 3 Server lacks some distributed files or has some other unwanted behavior we try to fix.

This repository is designed to be kept on the destination server by symlinking the prepared files. There's a simple configuration file for various variables.
Namely the following features are provided:

* Startup scripts and configuration files
* Autoupdate scripts
* Merging teamspeak log files directly into a single combined log file
* Logrotation configuration for handling log files

## Requirements

* Following packages installed:
  * sudo
  * logrotate
* Teamspeak 3 Server installed with its own system user
  * (Providing an install script may be added later)
* A recent debian based operating system, e.g. Ubuntu 14.10

## Configuration

Once cloned this repository copy `config.example.sh` to `config.sh`. Change the variables in `config.sh` accordingly.

Symlink following files to the right place:

	sudo ln -s /path/to/ts3utils/init/ts3.sh /etc/init.d/ts3
	sudo ln -s /path/to/ts3utils/init/ts3.conf /etc/init/ts3.conf
	sudo ln -s /path/to/ts3utils/update/cron.sh /etc/cron.weekly/ts3_update
	sudo ln -s /path/to/ts3utils/logrotate/ts3.conf /etc/logrotate.d/ts3.conf
