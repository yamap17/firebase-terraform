FROM hashicorp/terraform:1.3.6
WORKDIR /terraform/environments/production

ADD ./terraform/environments/production /terraform/environments/production
ADD ./terraform/modules /terraform/modules
# RUN terraform get; terraform fmt; terraform validate

ENTRYPOINT [""]
CMD ["/bin/sh"]