# Ansible Collection - evrardjp.ha

Documentation for the collection.


## Installing the collection

### From this local folder

1. Build the collection (see below, in 'releasing' section).
2. `VERSION=1.0.0 ansible-galaxy collection install evrardjp-ha-$VERSION.tar.gz -p ./collections`

### From git

`ansible-galaxy collection install git+https://github.com/evrardjp/ansible-collection-ha.git,main

## How to contribute

### Adding a role

0. Create a new branch in your own fork of this collection.
1. Define ROLENAME, ROLE_GIT_REPO_URL, ROLE_GIT_REPO_BRANCH for your case
2. Run the following command:

`git subtree add --prefix roles/$ROLENAME $ROLE_GIT_REPO_URL $ROLE_GIT_REPO_BRANCH --squash`

3. replace the "add" in previous command by "pull", and add that line into the `update-upstream.sh` shell script. git add update-upstream.sh, git commit.
4. Push to your own fork your 3 commits (those two commits should be generated for you by git in step 2).
5. Submit a PR.

### Updating an upstream role

1. run the `update-upstream.sh`. This will update the code for the roles.
2. Read the changes into the roles. Bump the version of the galaxy in `galaxy.yml` if necessary.

### Releasing the collection

Currently, only evrardjp has the rights to do this. If you want those rights, please contact him.

1. Run `ansible-galaxy collection build`
2. Check that the version generated looks correct (not duplicate of an existing version, and version number is matching expectations described below).
   It's useful in case someone forgot to bump the collection version number.
3. Run `ansible-galaxy collection publish`

### Expectations for version numbers

https://docs.ansible.com/ansible/latest/dev_guide/developing_collections_distributing.html#collection-versions

### Directory structure

https://docs.ansible.com/ansible/latest/dev_guide/developing_collections_structure.html

### Changelogs

This is not yet implemented.
The intent is to use https://docs.ansible.com/ansible/latest/dev_guide/developing_collections_changelogs.html .

### Documentation and documentation fragments

Currently, the only documentation is this README.
