# distrotunnel

The best tunnel for your applications.

---

## Installation

First, install Git, Podman and Distrobox in your OS, for example, in Arch:

```bash
sudo pacman -S git podman distrobox
```

Add a DISTROTUNNEL variable in your shell with the path then you desires and
put in your file path. (for example, in bashrc or zshrc):

### !! WARNING !! NOT SET DISTROTUNNEL VARIABLE TO A ROOT FOLDER

```bash
export DISTROTUNNEL=/your/custom/path # for example, i use in ~/.local/share/distrobox/distrotunnel

# if you want to your host packages preferably, put the $DISTROTUNNEL/bin after $PATH
export PATH=$DISTROTUNNEL/bin:$PATH
```

**If you want to customize your installation (HIGHLY RECOMMENDED), make a  
fork of this repository and customize the `$DISTROTUNNEL/scripts/install`  
package list and setup commands.**

After it, you can install Distrotunnel using the follow command:

```bash
mkdir -p $DISTROTUNNEL
git clone https://github.com/<user>/distrotunnel.git --recursive $DISTROTUNNEL
$DISTROTUNNEL/scripts/setup
```

---

### Uninstallation

```bash
$DISTROTUNNEL/scripts/unsetup
rm -rf $DISTROTUNNEL
```
