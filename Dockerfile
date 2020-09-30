FROM bitnami/kubectl:latest

LABEL maintainer "raf6 <rcabral@gmx.com>"

COPY init-kubectl kubectl /opt/drone/kubectl/bin/

USER root

ENV PATH="/opt/drone/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
