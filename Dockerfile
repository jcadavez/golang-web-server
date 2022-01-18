FROM golang:1.17-alpine as app
COPY server.go ./
EXPOSE 1000
CMD ["go", "run", "server.go"]