echo "injecting a label to the default namespace"
sleep "1"
kubectl apply -f ./istio-ns-label.yaml
