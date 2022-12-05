# nginx-custom-sti

Podman

    podman build -t nginx .
    podman run -d -p 8080:8080 nginx

OpenShift

    oc new-project nginx --display-name="NGINX Angular" --description='NGINX Angular'
    oc new-app https://github.com/eformat/nginx-custom-sti --name=nginx --strategy=docker
    oc create route edge nginx --service=nginx --port=8080
