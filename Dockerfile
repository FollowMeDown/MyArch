FROM archlinux
LABEL maintainer "ArchLinux Guru Image"
# RUN pacman -Sy --needed --noconfirm archlinux-keyring pacman-mirrorlist go dialog
# python python-pip newsboat nmap irssi neofetch dhclient mutt gnu-netcat net-tools
RUN pacman -Sy --needed --noconfirm base-devel pacman-contrib net-tools git fish openssh vim htop mc pydf tig tmux
RUN useradd -ms /bin/fish arch \
	&& echo "arch ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers \
	&& echo "set disable_coredump false" >> /etc/sudo.conf
USER arch
WORKDIR /home/arch
RUN git clone https://aur.archlinux.org/aura-bin.git  \
	&& cd aura-bin \
	&& makepkg -irs --noconfirm
ENV LANG=en_US.UTF-8
