# vsphere-csi

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.4.0](https://img.shields.io/badge/AppVersion-3.4.0-informational?style=flat-square)

vSphere Container Storage Interface (CSI) for Kamaji Tenant Clusters

**Homepage:** <https://github.com/clastix/vsphere-csi>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Clastix Labs | <authors@clastix.labs> |  |

## Source Code

* <https://github.com/clastix/vsphere-csi>
* <https://github.com/kubernetes-sigs/vsphere-csi-driver>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cluster.name | string | `"roma"` | Name of the Tenant Cluster |
| cluster.targetNamespace | string | `"vmware-system-csi"` | Target namespace in the Tenant Cluster where the CSI driver will be installed |
| controller.csiAttacher.imagePullPolicy | string | `"IfNotPresent"` | CSI Attacher image pull policy |
| controller.csiAttacher.repository | string | `"registry.k8s.io/sig-storage/csi-attacher"` | CSI Attacher image |
| controller.csiAttacher.resources | object | `{}` | CSI Attacher resources |
| controller.csiAttacher.tag | string | `"v4.8.1"` | CSI Attacher image tag |
| controller.csiProvisioner.imagePullPolicy | string | `"IfNotPresent"` | CSI Provisioner image pull policy |
| controller.csiProvisioner.repository | string | `"registry.k8s.io/sig-storage/csi-provisioner"` | CSI Provisioner image |
| controller.csiProvisioner.resources | object | `{}` | CSI Provisioner resources |
| controller.csiProvisioner.tag | string | `"v4.0.1"` | CSI Provisioner image tag |
| controller.csiResizer.imagePullPolicy | string | `"IfNotPresent"` | CSI Resizer image pull policy |
| controller.csiResizer.repository | string | `"registry.k8s.io/sig-storage/csi-resizer"` | CSI Resizer image |
| controller.csiResizer.resources | object | `{}` | CSI Resizer resources |
| controller.csiResizer.tag | string | `"v1.13.2"` | CSI Resizer image tag |
| controller.csiSnapshotter.imagePullPolicy | string | `"IfNotPresent"` | CSI Snapshotter image pull policy |
| controller.csiSnapshotter.repository | string | `"registry.k8s.io/sig-storage/csi-snapshotter"` | CSI Snapshotter image |
| controller.csiSnapshotter.resources | object | `{}` | CSI Snapshotter resources |
| controller.csiSnapshotter.tag | string | `"v8.2.1"` | CSI Snapshotter image tag |
| controller.image.imagePullPolicy | string | `"IfNotPresent"` | CSI Controller image pull policy |
| controller.image.repository | string | `"registry.k8s.io/csi-vsphere/driver"` | CSI Controller image |
| controller.image.tag | string | `"v3.4.0"` | CSI Controller image tag |
| controller.livenessProbe.imagePullPolicy | string | `"IfNotPresent"` | CSI liveness probe image pull policy |
| controller.livenessProbe.repository | string | `"registry.k8s.io/sig-storage/livenessprobe"` | CSI liveness probe image |
| controller.livenessProbe.resources | object | `{}` | CSI liveness probe resources |
| controller.livenessProbe.tag | string | `"v2.15.0"` | CSI liveness probe image tag |
| controller.nodeSelector | object | `{}` | CSI Controller Node Selector |
| controller.resources | object | `{}` | CSI Controller resources |
| controller.tolerations | list | `[]` | CSI Controller Tolerations |
| controller.topology.enabled | bool | `false` | Enable topology feature |
| controller.vsphereSyncer.imagePullPolicy | string | `"IfNotPresent"` | CSI Syncer image pull policy |
| controller.vsphereSyncer.repository | string | `"registry.k8s.io/csi-vsphere/syncer"` | CSI Syncer image |
| controller.vsphereSyncer.resources | object | `{}` | CSI Syncer resources |
| controller.vsphereSyncer.tag | string | `"v3.4.0"` | CSI Syncer image tag |
| driver.image.imagePullPolicy | string | `"Always"` | CSI driver image pull policy |
| driver.image.repository | string | `"registry.k8s.io/csi-vsphere/driver"` | CSI driver image |
| driver.image.tag | string | `"v3.4.0"` | CSI driver image tag |
| driver.livenessProbe.imagePullPolicy | string | `"IfNotPresent"` | CSI driver liveness probe image pull policy |
| driver.livenessProbe.repository | string | `"registry.k8s.io/sig-storage/livenessprobe"` | CSI driver liveness probe image |
| driver.livenessProbe.resources | object | `{}` | CSI driver liveness probe resources |
| driver.livenessProbe.tag | string | `"v2.15.0"` | CSI driver liveness probe image tag |
| driver.registrar.imagePullPolicy | string | `"IfNotPresent"` | CSI driver registrar image pull policy |
| driver.registrar.repository | string | `"registry.k8s.io/sig-storage/csi-node-driver-registrar"` | CSI driver registrar image |
| driver.registrar.resources | object | `{}` | CSI driver registrar resources |
| driver.registrar.tag | string | `"v2.13.0"` | CSI driver registrar image tag |
| driver.resources | object | `{}` | CSI driver resources |
| enableMockCRD | bool | `false` | Mock Profile CRD (only for linting purposes) |
| secret | string | `"csi-config-secret"` | The name of an existing Secret for vSphere. |
| storageClass.allowVolumeExpansion | bool | `true` | Allow volume expansion |
| storageClass.default | bool | `true` | Configure as the default storage class |
| storageClass.enabled | bool | `true` | StorageClass enablement |
| storageClass.name | string | `"vsphere-csi"` | Name of the storage class |
| storageClass.parameters | object | `{}` | Optional storage class parameters |
| storageClass.reclaimPolicy | string | `"Delete"` | Reclaim policy |
| storageClass.volumeBindingMode | string | `"WaitForFirstConsumer"` | Volume binding mode |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
