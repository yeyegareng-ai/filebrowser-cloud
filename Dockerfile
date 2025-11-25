FROM alpine

RUN apk add --no-cache curl tar && \
    curl -L -o filebrowser.tar.gz https://github.com/filebrowser/filebrowser/releases/latest/download/linux-amd64-filebrowser.tar.gz && \
    tar -xvzf filebrowser.tar.gz && \
    chmod +x filebrowser

EXPOSE 8080

CMD ["./filebrowser", "-r", "/"]
