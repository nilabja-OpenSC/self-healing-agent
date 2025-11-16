{{- define "deploy-one-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "deploy-one-chart.labels" -}}
app.kubernetes.io/name: {{ include "deploy-one-chart.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
