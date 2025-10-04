## Prerequisites

- Kubernetes 1.24+
- Helm 3.2.0+

## Installing the Chart

1.  **Add the Helm repository:**
    ```sh
    helm repo add bpschmitt https://bpschmitt.github.io/otel-operator-multitenant-helm
    helm repo update
    ```

2.  **Install the chart:**
    ```sh
    helm install otel-operator-multitenant bpschmitt/otel-operator-multitenant-helm --namespace [NAMESPACE]
    ```