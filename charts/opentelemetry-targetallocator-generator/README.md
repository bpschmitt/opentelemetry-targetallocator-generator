> [!IMPORTANT]
> This chart is not intended for production and is only a proof of concept.

# OpenTelemetry Target Allocator Generator

This Helm chart is designed to deploy **Kubernetes Custom Resources (CRs)** for configuring the **OpenTelemetry Target Allocator (TA)**. It does not deploy the Target Allocator service itself, but rather the necessary configuration objects (like `OpenTelemetryTargetAllocator` CRs and associated roles, configmaps, etc) that the OpenTelemetry Operator watches and uses to manage dynamic scrape configurations.

---

## Prerequisites

* **Kubernetes Cluster:** A running Kubernetes cluster (version 1.24+).
* **Helm:** Helm 3 or later.
* **OpenTelemetry Operator:** The OpenTelemetry Operator must be installed in your cluster. This chart relies on the Operator to watch for and act upon the deployed custom resources.

---

## Installing the Chart

Add and update the repository.

```sh
helm repo add ta-generator https://bpschmitt.github.io/opentelemetry-targetallocator-generator
helm repo update ta-generator
```

To install the chart with the release name `ta-generator`:

```sh
helm repo add ta-generator https://bpschmitt.github.io/opentelemetry-targetallocator-generator
helm repo update ta-generator
```