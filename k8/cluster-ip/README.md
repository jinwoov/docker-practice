```yaml

kubectl get pods -w # this will watch whats going on in the k8 pods

kubctl create deployment <title of the pods> --image=<name of the image> # this will deploy pods based on the name of the repository

kubectl scale deployment/<name of the pod> --replicas=<number of pods you want to replicate> # to replicate existing pods

kubectl get service # ls the k8

kubectl run --generator run-pod/v1 tmp-shell --rm -it -- image <name of the repository> -- bash # this allows generatoring the pods using the docker commands

kubectl expose deployment/httpenv --port 8888 --name httpenv-lb --type LoadBalancer # enabling the loadbalancer

# if you are on kubeadm, minikube, or microk8s then no LB

# LoadBalancer -> NodePort -> ClusterIP

kubectl delete service/httpenv-lb deployment/httpenv # to delete stuff
```