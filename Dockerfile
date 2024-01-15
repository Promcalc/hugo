FROM golang:1.21 as development

# RUN apk add --no-cache git
# RUN apk add --no-cache gcc musl-dev

RUN apt-get update && apt-get install -y gcc libtool musl-dev ca-certificates dumb-init

RUN CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@latest

# Expose service ports.
EXPOSE 8000

CMD ["sh"]