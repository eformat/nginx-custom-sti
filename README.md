# nginx-custom-sti

Docker 

    docker build -t nginx .
    docker run -d -p 8080:80 nginx

OpenShift

    oc new-project nginx --display-name="NGINX Angular" --description='NGINX Angular'
    oc new-app https://github.com/eformat/nginx-custom-sti --name=nginx --strategy=docker
    oc volume dc/nginx --name nginx-volume-1 --remove
    oc expose svc nginx
