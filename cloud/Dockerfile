FROM amazon/aws-cli as aws
FROM ubuntu:focal
COPY --from=aws /usr /aws
ENV PATH $PATH:/aws/local/aws-cli/v2/2.2.22/bin
RUN echo "complete -C aws_completer aws" >> /root/.bashrc
