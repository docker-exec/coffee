FROM        dexec/base-node
MAINTAINER  andystanton
RUN         npm install -g coffee-script
ADD         image-common /tmp/dexec/image-common
VOLUME      /tmp/dexec/build
ENTRYPOINT  ["/tmp/dexec/image-common/dexec-script.sh", "coffee"]