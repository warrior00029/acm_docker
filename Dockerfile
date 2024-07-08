FROM alpine AS base
WORKDIR /usr/local/app
# install tools
RUN apk add --no-cache python3 py3-pip

# Setup Backend
FROM base AS backend
COPY backend ./backend