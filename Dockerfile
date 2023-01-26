# https://aws.amazon.com/blogs/developer/aws-cli-v2-docker-image/
# https://hub.docker.com/r/amazon/aws-cli
# Has to be the latest version or has issues with utf-8 encoding
FROM amazon/aws-cli:latest

WORKDIR /
ADD ./ /

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
