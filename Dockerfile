FROM public.ecr.aws/docker/library/golang:1.20-alpine3.18

COPY /cert/oc_sales_root_ca.pem /usr/local/share/ca-certificates/oc_sales_root_ca.pem
RUN cat /usr/local/share/ca-certificates/oc_sales_root_ca.pem >> /etc/ssl/certs/ca-certificates.crt

RUN go install github.com/goreleaser/goreleaser@latest

RUN apk add git
WORKDIR /app