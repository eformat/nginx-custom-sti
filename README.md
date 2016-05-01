# nginx-custom-sti

Docker 

    docker build -t nginx .
    docker run -d -p 8080:80 nginx

OpenShift

    oc new-project nginx --display-name="NGINX Angular" --description='NGINX Angular'
    oc new-app https://github.com/eformat/nginx-custom-sti --name=nginx --strategy=docker
    oc expose svc nginx
