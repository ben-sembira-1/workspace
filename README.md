# Workspace

## First steps

### Step 1: create a new ssh key
Create a new ssh key with ssh-keygen:
```bash
ssh-keygen
```
Then, add the content of the file `~/.ssh/id_***.pub` to your trusted ssh keys in your github profile.


### Step 2: Clone this repo and run the setup script:
```bash
sudo apt update
sudo apt install git
mkdir ~/clones
cd ~/clones
git clone git@github.com:ben-sembira-1/workspace.git
```

### Step 3: Run the setup script
```bash
bash ~/clones/workspace/setup_workspace.sh
```

### Aditional things to do using GUI:
1. Download google-chrome using the web-browser.
1. Download VS code using the web-browser