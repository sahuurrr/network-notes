FROM squidfunk/mkdocs-material:9 AS builder

WORKDIR /docs

COPY mkdocs.yml .
COPY docs/ ./docs/

RUN mkdocs build --strict

FROM busybox:1.36.1

COPY --from=builder /docs/site /www

EXPOSE 8080

CMD ["httpd", "-f", "-p", "8080", "-h", "/www"]
