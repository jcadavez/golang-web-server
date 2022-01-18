FROM golang:1.17-alpine as app
COPY server.go ./
EXPOSE 8080
CMD ["go", "run", "server.go"]