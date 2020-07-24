FROM debian:stretch

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get install -y --no-install-recommends sudo ca-certificates pkg-config curl wget bzip2 xz-utils make git bsdtar doxygen gnupg && \
    apt-get install -y gdebi-core && \
    apt-get clean

RUN wget https://github.com/devkitPro/pacman/releases/latest/download/devkitpro-pacman.amd64.deb && \
    gdebi -n devkitpro-pacman.amd64.deb && \
    rm devkitpro-pacman.amd64.deb && \
    dkp-pacman -Scc --noconfirm

ENV DEVKITPRO=/opt/devkitpro
ENV PATH=${DEVKITPRO}/tools/bin:$PATH
RUN dkp-pacman -Syyu --noconfirm 3ds-dev nds-dev gp32-dev gba-dev nds-portlibs && \
    dkp-pacman -S --needed --noconfirm `dkp-pacman -Slq dkp-libs | grep '^3ds-'` && \
    dkp-pacman -Scc --noconfirm
ENV DEVKITARM=${DEVKITPRO}/devkitARM

RUN apt-get install -y openssh-server && \
    apt-get install -y sudo
ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh
RUN mkdir -p /var/run/sshd && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config \
  && sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
  && touch /root/.Xauthority \
  && true
RUN useradd docker \
        && passwd -d docker \
        && mkdir /home/docker \
        && chown docker:docker /home/docker \
        && addgroup docker staff \
        && addgroup docker sudo \
        && true
RUN chmod -R 755 /opt/devkitpro
RUN chown -R docker:staff /opt/devkitpro
EXPOSE 22

ENV SSH_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCrD+l5xGiJNo8IcqIARWbMHzkU72PuRRgO5qXVoXdf49gF/I2KPFN3NDfBNEA30B22TIzKi0ykUQJ5+M6YvuO0ZgemOOug24wk8EP683J9pVd78yR2aMyAus5aLAxmmN32BkWeMtMQF8ABwh5iIoAVLZ2cMvXiiR8Koo67djWVNho2XSxw1POZ0iYZraK0rKJSRbFivWuV+lzlIAKE+cDPGQ3OgBIFUqlKYLcueZsGFYDHBXuD7N2DAsP+LC4SppfFNvXiW/t65vA4WUYvw0xQK2eKkmBOotP1POotdWLOiHlpKQLAFwBhA8VgmafV0JrrIoTJJ7olxi5oPbYkLJHcow3FvUdqfQSMR8unro61lEZWOntvr+/dY0Rl8Cweij3mgzWYXl/eXXw/d3u6gXVU3YrNRhH787udFZ4cMy2ReXUrTCEMgXcPmd33H+PXYeItp7upK//hDijFPbRe63CbyBoP78O3tGFqwpfuso+91eHPe/AHXnBet1cse54mTr0= novafacing@chaos"

CMD ["/run.sh"]
