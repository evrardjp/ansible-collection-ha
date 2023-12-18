#!/usr/bin/env bash

git subtree pull --prefix roles/keepalived https://github.com/evrardjp/ansible-keepalived.git master --squash
git subtree pull --prefix roles/haproxy https://github.com/Rosa-Luxemburgstiftung-Berlin/ansible-role-haproxy.git main --squash
