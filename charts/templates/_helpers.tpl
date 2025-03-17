{{- define "common_labels" -}}
app.kubernetes.io/project: {{ .Values.desc.project }}
app.kubernetes.io/brand: {{ .Values.desc.brand }}
app.kubernetes.io/part-of: frontera
app.kubernetes.io/env: {{.Values.desc.env}}
app.kubernetes.io/release: {{.Release.Name}}
{{- end -}}

{{- define "frontera_labels" -}}
{{ include "common_labels" . }}
app.kubernetes.io/component: frontend
app.kubernetes.io/name: frontera
{{- end -}}
