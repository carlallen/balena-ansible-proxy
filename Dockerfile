FROM python:3-alpine
RUN apk add dropbear docker-cli curl && \
  mkdir /etc/dropbear
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["dropbear", "-RFEmgs", "-p", "22"]
