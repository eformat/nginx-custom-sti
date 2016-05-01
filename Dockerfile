# nginx-custom-sti
FROM registry.access.redhat.com/rhscl/nginx-16-rhel7

# Expose ports.
EXPOSE 80
EXPOSE 443

#VOLUME ["/opt/rh/nginx16/root/usr/share/nginx/html"]
#VOLUME ["/var/log/nginx16"]

ADD content /opt/rh/nginx16/root/usr/share/nginx/html/

# Run
ENTRYPOINT ["/usr/local/bin/run-nginx16.sh"]
CMD ["nginx", "-g", "daemon off;"]
