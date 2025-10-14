## Prerequisites

- Kubernetes 1.24+
- Helm 3.2.0+

## Installing the Chart

1.  **Add the Helm repository:**
    ```sh
    helm repo add bpschmitt https://bpschmitt.github.io/opentelemetry-targetallocator-generator
    helm repo update
    ```

2.  **Install the chart:**
    ```sh
    helm template ta-multitenant bpschmitt/opentelemetry-targetallocator-generator --namespace [NAMESPACE]
    ```