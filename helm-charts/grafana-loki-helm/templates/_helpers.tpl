{{/*
Expand the name of the chart.
*/}}
{{- define "grafana-loki-stack.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a fully qualified name for resources.
*/}}
{{- define "grafana-loki-stack.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name (include "grafana-loki-stack.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
