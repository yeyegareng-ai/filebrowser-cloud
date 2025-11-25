FROM filebrowser/filebrowser:latest

# Membuat folder data
RUN mkdir -p /srv

# Menentukan working directory
WORKDIR /srv

# Expose port
EXPOSE 80

# Command default
CMD ["filebrowser", "-r", "/srv"]
