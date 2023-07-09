# distrotunnel

The best tunnel for your applications.

---

## Installation

**If you want to customize your installation (HIGHLY RECOMMENDED), make a  
fork of this repository and customize the `$DISTROTUNNEL/scripts/install`
using as a reference the `$DISTROTUNNEL/examples/devales_install`**

First, install Git, Podman and Distrobox in your OS, for example, in Arch:

```bash
sudo pacman -S git podman distrobox
```

Run the command above to run the build script:

```bash
bash <(curl https://raw.githubusercontent.com/DevAles/distrotunnel/develop/scripts/build)
```

or if you want install the develop version, you can run this instead:

```bash
DISTROTUNNEL_UNSTABLE=1;
bash <(curl https://raw.githubusercontent.com/DevAles/distrotunnel/develop/scripts/build)
```

This script will ask your `DISTROTUNNEL_USERNAME`, put the username of the
Distrotunnel repository that you want to use (for example, you can use my repository)

```bash
Set DISTROTUNNEL_USERNAME: DevAles
```

The script also ask what path you want to install Distrotunnel. If you
just press enter, the distrotunnel will be installed in ~/.local/share/distrobox/distrotunnel

### !! WARNING !! DON'T SET DISTROTUNNEL VARIABLE TO A ROOT FOLDER

Now, you can source the .zshrc to get the $DISTROTUNNEL variable and
use my install file example (and modify to put your favorite packages
in install list):

```bash
source ~/.zshrc # TODO: support for other shells
mv $DISTROTUNNEL/examples/devales_install $DISTROTUNNEL/scripts/install
```

After it, you can install Distrotunnel using the follow command:

```bash
distrotunnel_setup
```

---

### Uninstallation

```bash
distrotunnel_unsetup
rm -rf $DISTROTUNNEL
```
