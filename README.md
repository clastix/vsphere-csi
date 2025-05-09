# vSphere Container Storage Interface (CSI) for Kamaji Tenant Clusters

This Helm Chart deploys the [vSphere CSI](https://github.com/kubernetes-sigs/vsphere-csi-driver) drivers for Kubernetes Tenant Clusters managed by [Kamaji Operator](https://kamaji.clastix.io), the **Open Source Control Plane Manager** implementing the **Hosted Control Plane** architecture. In this setup, the control plane runs as pods in a Management Cluster, separate from the worker nodes.

The chart implements a **Split CSI Controller Architecture**:

1. The Tenant Cluster's control plane and CSI Storage Controller run in the Management Cluster.
2. The CSI Node Driver runs on the Tenant Cluster's worker nodes.
3. Communication between the CSI Controller and Node Driver occurs via the Tenant Cluster's API server.

This design enhances security by isolating vSphere credentials from tenant users while ensuring seamless integration with Cluster API.

The [Sveltos Controller](https://github.com/projectsveltos), installed in the Management Cluster, automatically deploys the CSI Node Driver to the Tenant Cluster.

> **Note:** This chart is specifically designed for Kamaji-managed Tenant Clusters and is not compatible with regular Kubernetes clusters.

## Prerequisites
- [Kamaji](https://kamaji.clastix.io) installed on the Management Cluster
-  installed in Agentless Mode on the Management Cluster 
- A Secret in the Management Cluster that contains vSphere CSI configuration and credentials


## Installation
This chart requires a Secret in your Kubernetes cluster that contains the CSI configuration and credentials to connect to the vCenter.

Create the Secret in the Management Cluster, in the same namespace of the related Tenant Cluster. Replace the placeholders with your vSphere configuration.

```yaml
# The csi-vsphere.conf key name is required, otherwise the installation will fail
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
type: Opaque
metadata:
  name: vmware-system-csi
stringData:
  csi-vsphere.conf: |
    [Global]
    cluster-id = "<cluster-id>"
    user = "<username>"
    password = "<password>"
    port = "<port>"
    insecure-flag = "<insecure-flag>"
    [VirtualCenter "<host>"]
    datacenters = "<dc-1>, <dc-2>, ..."
EOF
```

Install the chart using Helm. You can customize the installation by providing a `my-values.yaml` file with your specific configuration.


```bash
# Add repository (if published)
helm repo add clastix https://clastix.github.io/charts
helm repo update

# Install with custom values in the same namespace as the Tenant Cluster
helm install vsphere-csi clastix/vsphere-csi -f my-values.yaml
```

## Configuration

See the values you can override [here](./charts/vsphere-csi/README.md).

## vSphere CSI with Topology
When deploying to a vSphere environment using zoning, the topology plugin can be enabled for the CSI to make intelligent volume provisioning decisions.

To enable the topology plugin, adjust the values for the chart as follows:

```yaml
controller:
  topology:
    enabled: true
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Clastix Labs | <authors@clastix.labs> |  |

## Source Code

* <https://github.com/clastix/vsphere-csi>

## License

This project is licensed under the Apache2 License. See the LICENSE file for more details.
