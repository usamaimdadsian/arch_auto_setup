From archlinux:latest

COPY mirrorlist /etc/pacman.d/mirrorlist

RUN pacman -Syu --noconfirm && \
  pacman -S --noconfirm \
  ansible sudo git vim

# Create a non-root user
RUN useradd -m -s /bin/bash ansible_user && \
  echo 'ansible_user ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Switch to the non-root user
USER ansible_user

WORKDIR /ansible

COPY . /ansible


ENTRYPOINT ["tail", "-f", "/dev/null"] 


