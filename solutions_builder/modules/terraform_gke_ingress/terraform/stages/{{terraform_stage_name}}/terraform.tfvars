project_id                = "{{project_id}}" # sb-var:project_id
region                    = "{{region}}" # sb-var:region
cluster_name              = "{{cluster_name}}"
cluster_external_endpoint = "{{cluster_external_endpoint}}"
cluster_ca_certificate    = "{{('masterAuth.clusterCaCertificate', cluster_name, region) | get_cluster_value}}"
managed_cert_name         = "{{managed_cert_name}}"
frontend_config_name      = "{{frontend_config_name}}"
domains                   = {{domains.split(",") | tojson}}
