{{/* release name */}}
{{- define "vsphere-csi.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* cluster name */}}
{{- define "cluster-name" -}}
{{- .Values.cluster.name | default .Release.Namespace | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{/* CSI vSphere config secret name used by CSI */}}
{{- define "csi-config-secret-name" -}}
{{- .Values.secret | default "csi-config-secret" -}}
{{- end -}}
