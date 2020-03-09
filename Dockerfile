FROM scratch

ADD docker-logging-driver /

CMD ["/docker-logging-driver"]