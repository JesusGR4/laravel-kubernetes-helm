{{- define "laravel.name" -}}
{{- .Values.laravel.name -}}
{{- end -}}

{{- define "mysql.name" -}}
{{- .Values.mysql.name -}}
{{- end -}}

{{- define "laravel.tier" -}}
{{- .Values.laravel.tier -}}
{{- end -}}


{{- define "nginx.name" -}}
{{- .Values.nginx.name -}}
{{- end -}}

{{- define "laravel.resources.requests.memory" -}}
{{- .Values.laravel.resources.requests.memory -}}
{{- end -}}
{{- define "laravel.resources.requests.cpu" -}}
{{- .Values.laravel.resources.requests.cpu -}}
{{- end -}}
{{- define "laravel.resources.limits.memory" -}}
{{- .Values.laravel.resources.limits.memory -}}
{{- end -}}
{{- define "laravel.resources.limits.cpu" -}}
{{- .Values.laravel.resources.limits.cpu -}}
{{- end -}}

{{- define "nginx.resources.requests.memory" -}}
{{- .Values.nginx.resources.requests.memory -}}
{{- end -}}
{{- define "nginx.resources.requests.cpu" -}}
{{- .Values.nginx.resources.requests.cpu -}}
{{- end -}}
{{- define "nginx.resources.limits.memory" -}}
{{- .Values.nginx.resources.limits.memory -}}
{{- end -}}
{{- define "nginx.resources.limits.cpu" -}}
{{- .Values.nginx.resources.limits.cpu -}}
{{- end -}}


{{- define "mysql.resources.requests.memory" -}}
{{- .Values.mysql.resources.requests.memory -}}
{{- end -}}
{{- define "mysql.resources.requests.cpu" -}}
{{- .Values.mysql.resources.requests.cpu -}}
{{- end -}}
{{- define "mysql.resources.limits.memory" -}}
{{- .Values.mysql.resources.limits.memory -}}
{{- end -}}
{{- define "mysql.resources.limits.cpu" -}}
{{- .Values.mysql.resources.limits.cpu -}}
{{- end -}}