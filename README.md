# ![](https://gravatar.com/avatar/11d3bc4c3163e3d238d558d5c9d98efe?s=64) aptible/tcp-proxy

[![Docker Repository on Quay.io](https://quay.io/repository/aptible/tcp-proxy/status)](https://quay.io/repository/aptible/tcp-proxy)

Memcached on Docker, with SASL support

## Installation and Usage

    docker pull quay.io/aptible/tcp-proxy
    docker run -e REMOTE_HOST=... REMOTE_PORT=... quay.io/aptible/tcp-proxy

## Available Tags

* `latest`: Uses socat 1.7.2.3

## Deploying As An App On Aptible

To deploy as an Aptible app, just create an app on Dashboard with a new handle, say `my-tcp-proxy`. Then, configure a remote host and port:

    aptible config:add --app my-tcp-proxy REMOTE_HOST=<hostname-or-ip> REMOTE_PORT=<port>

Finally, clone and push the repo to Aptible:

    git clone https://github.com/aptible/docker-tcp-proxy
    git remote add aptible git@beta.aptible.com:my-tcp-proxy.git
    git push aptible master

## Deploying Images To Quay

To push the Docker image to Quay, run the following command:

    make release

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2014 [Aptible](https://www.aptible.com), [Frank Macreery](https://github.com/fancyremarker), and contributors.
