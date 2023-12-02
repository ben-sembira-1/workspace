# Workspace

## First steps

### Step 1: create a new ssh key
Create a new ssh key with ssh-keygen:
```bash
ssh-keygen
```
Then, add the content of the file `~/.ssh/id_rsa.pub` to your trusted ssh keys in your github profile.


### Step 2: Clone this repo and run the setup script:
```bash
sudo apt update
sudo apt install git
mkdir ~/clones
cd ~/clones
git clone git@github.com:ben-sembira-1/workspace.git
cd workspace
./setup_workspace.sh
```