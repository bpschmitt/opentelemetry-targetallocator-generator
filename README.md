# opentelemetry-targetallocator-generator

** THIS IS A PROOF OF CONCEPT AND NOT INTENDED TO BE USED IN A PRODUCTION ENVIRONMENT **

This repository contains a Helm chart for generating OpenTelemetry TargetAllocator Custom Resources (CRs). It is designed to simplify the management of Prometheus scrape targets in multi-tenant environments by dynamically creating `OpenTelemetry` collector custom resources and dependent multi-tenant OpenTelemetry Collector configurations.

## About the Project

In multi-tenant Kubernetes clusters, managing Prometheus scrape jobs can become complex. The OpenTelemetry Collector's `TargetAllocator` is a powerful component that addresses this by dynamically discovering and distributing scrape jobs among a set of collectors. This project provides a way to automatically generate the necessary `OpenTelemetryCollector`CRs, allowing you to easily configure and scale your monitoring setup across different teams or applications.

## Key Features

  * **Multi-tenant Support**: Simplifies the creation of separate scrape configurations for different tenants.
  * **Dynamic Configuration**: Generates `TargetAllocator` CRs based on your specifications, reducing manual effort.
  * **Helm Chart Ready**: Designed to work as a component within a Helm chart for easy deployment and management.

## Getting Started

*(Note: Replace the following with specific instructions on how to use the tool, for example, if it's a Helm chart, a command-line tool, or a set of YAML templates.)*

### Prerequisites

  * A Kubernetes cluster with the OpenTelemetry Operator installed.
  * Helm (if using the Helm chart).

### Usage

```
Placeholder
```

## Contributing

We welcome contributions\! Please feel free to submit issues or pull requests to help improve this project.

## License

This project is licensed under the MIT License.