function USERANSWER()
{
    case $1 in
        [1] )
            HEADER "Installing Jaeger";
            sleep 0.5s
            kubectl apply -f ISTIO/jaeger-install.yaml
            ;;
        [2] )
            HEADER "Installing Kiali";
            sleep 0.5s
            kubectl apply -f ISTIO/kiali-install.yaml
            ;;
        [3] )
            HEADER "Installing Grafana"
            sleep 0.5s
            kubectl apply -f ISTIO/grafana-install.yaml;
            ;;
        [4] )
            HEADER "Installing Prometheus"
            sleep 0.5s
            kubectl apply -f ISTIO/prometheus.yaml;
            ;;
        [5] )
            HEADER "Installing Zipkin"
            sleep 0.5s
            kubectl apply -f ISTIO/zipkin-install.yaml;
            ;;
        [6] )
            HEADER "Installing Label-injection"
            sleep 0.5s
            kubectl apply -f ISTIO/istio-ns-label.yaml;
            ;;
        *)
            echo "exiting......";
            sleep 1.5s;
            exit 0;
            ;;
    esac
}

##################
# Helper Methods #
##################
## To show header of each output.
function HEADER()
{
    echo;
    echo "###########################################";
    echo "  $1  ";
    echo "###########################################";
    echo;
}

read -p "What would you want to install? (1)jaeger, (2)kiali, (3)grafana, (4)prometheus, (5)zipkin, (6)label-injection, (7)Exit  "  ANSWER; 

USERANSWER $ANSWER;