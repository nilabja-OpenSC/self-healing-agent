{{- define "deploy-two-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "deploy-two-chart.labels" -}}
app.kubernetes.io/name: {{ include "deploy-two-chart.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
