#!/usr/bin/env bash
 gpg --keyserver 79.140.41.143 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
 curl -sSL https://get.rvm.io | bash -s $1
