FROM alpine:3.24.1

RUN apk add --update --no-cache python3 py3-aiohttp

WORKDIR /app
COPY truenas-gotify.py ./

CMD ["/usr/bin/env", "python3", "-u", "truenas-gotify.py"]
