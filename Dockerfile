FROM greyltc/lamp-gateone
MAINTAINER Grey Christoforo <grey@christoforo.net>

# install a few required deps
ADD installDeps.sh /usr/sbin/install-deps
RUN install-deps

# add the setup scripts
ADD scripts scripts

# make all the support files
RUN bash scripts/makeAllSupportFiles.sh

# enable webdav
ENV ENABLE_DAV true

# start all the servers
CMD run-sshd; run-gateone; start-servers; sleep infinity
