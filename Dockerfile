 FROM ubuntu:16.04


# Install core dependences with apt packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl

# Install Kubectl CLI
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# Install Openshift OC CLI
RUN curl -LO https://mirror.openshift.com/pub/openshift-v4/clients/oc/4.2/linux/oc.tar.gz && \
    tar -zxvf oc.tar.gz && \
    mv oc /usr/local/bin/oc
