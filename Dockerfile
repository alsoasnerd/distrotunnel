FROM archlinux:latest

# Update the system and install necessary dependencies
RUN pacman -Syu --noconfirm base-devel git sudo go

# Create a new non-root user
RUN useradd -m builduser

# Set the user and working directory
USER builduser
WORKDIR /home/builduser

# Clone the PKGBUILD and build the package
RUN git clone https://aur.archlinux.org/yay.git
WORKDIR /home/builduser/yay
RUN makepkg --noconfirm

# Switch back to the root user
USER root

# Install the built package using pacman
RUN pacman -U --noconfirm /home/builduser/yay/*.pkg.tar.zst

# Delete the builduser user
RUN userdel -r builduser
