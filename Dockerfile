FROM archlinux:latest

ARG PACMAN_PARALLELDOWNLOADS=16
RUN pacman-key --init \
 && pacman-key --populate archlinux \
 && sed 's/ParallelDownloads = \d+/ParallelDownloads = ${PACMAN_PARALLELDOWNLOADS}/g' -i /etc/pacman.conf

# Update the system and install base, base-devel, git, sudo and go
RUN pacman -Syu --noconfirm base base-devel git sudo go 

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
