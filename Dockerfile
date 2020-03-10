FROM centos:7
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all
COPY /scripts/container-metric .
RUN chmod +x /container-metric
ENTRYPOINT ["/container-metric"]
CMD [""]