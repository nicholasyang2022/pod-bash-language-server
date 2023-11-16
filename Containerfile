FROM node:20-alpine

RUN npm config set registry http://mirrors.cloud.tencent.com/npm/
RUN apk add --no-cache curl
RUN npm i -g bash-language-server && \
    curl -L https://github.com/koalaman/shellcheck/releases/download/v0.9.0/shellcheck-v0.9.0.linux.x86_64.tar.xz | tar -x --xz -C /opt && \
    ln -s /opt/shellcheck-v0.9.0/shellcheck /usr/local/bin/shellcheck
ENTRYPOINT ["/usr/local/bin/bash-language-server"]
CMD ["start"]
