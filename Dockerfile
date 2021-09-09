FROM alpine

ARG TARGETPLATFORM
ARG KUBECTL_VERSION=1.20.0

RUN apk add --update --no-cache curl ca-certificates bash git

RUN curl -sLO https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/${TARGETPLATFORM}/kubectl && \
    mv kubectl /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl

USER 1001
ENTRYPOINT [ "kubectl" ]
CMD [ "--help" ]

