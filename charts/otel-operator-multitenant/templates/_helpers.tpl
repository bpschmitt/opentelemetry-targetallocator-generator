{{/*
Expand the name of the chart.
*/}}
{{- define "otel-operator-multitenant.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "otel-operator-multitenant.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "otel-operator-multitenant.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "otel-operator-multitenant.labels" -}}
helm.sh/chart: {{ include "otel-operator-multitenant.chart" . }}
{{ include "otel-operator-multitenant.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "otel-operator-multitenant.selectorLabels" -}}
app.kubernetes.io/name: {{ include "otel-operator-multitenant.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "otel-operator-multitenant.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "otel-operator-multitenant.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}



{{- define "otel-operator-multitenant.test123" -}}
{{- $teams := dict -}}
  {{- $teams = .Values.global.newrelic.teams -}}
  {{- range $teamName, $teamInfo := $teams -}}
    {{- $_ := set $teamInfo "endpoint" $.Values.global.newrelic.endpoint -}}
  {{- end -}}
  {{- $teams | toYaml -}}
{{- end }}