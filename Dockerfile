# Installs ANTsR and dependencies imaging tool to container
FROM jmcnall3/antsr
MAINTAINER Jon McNally <jmcnall3@asu.edu>
RUN export uid=userid gid=groupid user=username && \
     groupadd -r ${user} -g ${gid} && \
     useradd -u ${uid} -g ${gid} -G sudo -d /home/${user} -s /bin/bash ${user} && \
     echo "${user} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers
USER username
ENV HOME /home/username
CMD cd ~/ && \
/bin/bash
