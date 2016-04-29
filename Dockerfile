# nginx-custom-sti
FROM registry.access.redhat.com/rhscl/nginx-16-rhel7

# Expose ports.
EXPOSE 80
EXPOSE 443

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
#CMD ["nginx"]
CMD ["/bin/bash"]
