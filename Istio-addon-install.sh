function USERANSWER()
{
    case $1 in
        [1] )
            HEADER "Installing Jaeger";
            kubectl apply -f ISTIO/jaeger-install.yaml
            ;;
        [2] )
            HEADER "Installing Kiali";
            kubectl apply -f ISTIO/kiali-install.yaml
            ;;
        [3] )
            HEADER "Install Grafana"
            kubectl apply -f ISTIO/grafana-install.yaml;
            ;;
        [4] )
            HEADER "Install Prometheus"
            kubectl apply -f ISTIO/prometheus.yaml;
            ;;
        [5] )
            HEADER "Install Zipkin"
            kubectl apply -f ISTIO/zipkin-install.yaml;
            ;;
        [6] )
            HEADER "Install Label-injection"
            sh ISTIO/label-inejection.sh;
            ;;
        *)
            echo "exiting......"
            sleep 1.5s
            exit 0
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