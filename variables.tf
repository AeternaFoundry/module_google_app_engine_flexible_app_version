variable "app_engine_flexible_app_versions" {
  description = <<EOT
Map of app_engine_flexible_app_versions, attributes below
Required:
    - runtime
    - service
    - liveness_check (block):
        - check_interval (optional)
        - failure_threshold (optional)
        - host (optional)
        - initial_delay (optional)
        - path (required)
        - success_threshold (optional)
        - timeout (optional)
    - readiness_check (block):
        - app_start_timeout (optional)
        - check_interval (optional)
        - failure_threshold (optional)
        - host (optional)
        - path (required)
        - success_threshold (optional)
        - timeout (optional)
Optional:
    - beta_settings
    - default_expiration
    - delete_service_on_destroy
    - deletion_policy
    - env_variables
    - inbound_services
    - instance_class
    - nobuild_files_regex
    - noop_on_destroy
    - project
    - runtime_api_version
    - runtime_channel
    - runtime_main_executable_path
    - service_account
    - serving_status
    - version_id
    - api_config (block):
        - auth_fail_action (optional)
        - login (optional)
        - script (required)
        - security_level (optional)
        - url (optional)
    - automatic_scaling (block):
        - cool_down_period (optional)
        - cpu_utilization (required, block):
            - aggregation_window_length (optional)
            - target_utilization (required)
        - disk_utilization (optional, block):
            - target_read_bytes_per_second (optional)
            - target_read_ops_per_second (optional)
            - target_write_bytes_per_second (optional)
            - target_write_ops_per_second (optional)
        - max_concurrent_requests (optional)
        - max_idle_instances (optional)
        - max_pending_latency (optional)
        - max_total_instances (optional)
        - min_idle_instances (optional)
        - min_pending_latency (optional)
        - min_total_instances (optional)
        - network_utilization (optional, block):
            - target_received_bytes_per_second (optional)
            - target_received_packets_per_second (optional)
            - target_sent_bytes_per_second (optional)
            - target_sent_packets_per_second (optional)
        - request_utilization (optional, block):
            - target_concurrent_requests (optional)
            - target_request_count_per_second (optional)
    - deployment (block):
        - cloud_build_options (optional, block):
            - app_yaml_path (required)
            - cloud_build_timeout (optional)
        - container (optional, block):
            - image (required)
        - files (optional, block):
            - name (required)
            - sha1_sum (optional)
            - source_url (required)
        - zip (optional, block):
            - files_count (optional)
            - source_url (required)
    - endpoints_api_service (block):
        - config_id (optional)
        - disable_trace_sampling (optional)
        - name (required)
        - rollout_strategy (optional)
    - entrypoint (block):
        - shell (required)
    - flexible_runtime_settings (block):
        - operating_system (optional)
        - runtime_version (optional)
    - handlers (block):
        - auth_fail_action (optional)
        - login (optional)
        - redirect_http_response_code (optional)
        - script (optional, block):
            - script_path (required)
        - security_level (optional)
        - static_files (optional, block):
            - application_readable (optional)
            - expiration (optional)
            - http_headers (optional)
            - mime_type (optional)
            - path (optional)
            - require_matching_file (optional)
            - upload_path_regex (optional)
        - url_regex (optional)
    - manual_scaling (block):
        - instances (required)
    - network (block):
        - forwarded_ports (optional)
        - instance_tag (optional)
        - name (required)
        - session_affinity (optional)
        - subnetwork (optional)
    - resources (block):
        - cpu (optional)
        - disk_gb (optional)
        - memory_gb (optional)
        - volumes (optional, block):
            - name (required)
            - size_gb (required)
            - volume_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vpc_access_connector (block):
        - name (required)
EOT

  type = map(object({
    runtime                      = string
    service                      = string
    beta_settings                = optional(map(string))
    default_expiration           = optional(string)
    delete_service_on_destroy    = optional(bool)
    deletion_policy              = optional(string)
    env_variables                = optional(map(string))
    inbound_services             = optional(set(string))
    instance_class               = optional(string)
    nobuild_files_regex          = optional(string)
    noop_on_destroy              = optional(bool)
    project                      = optional(string)
    runtime_api_version          = optional(string)
    runtime_channel              = optional(string)
    runtime_main_executable_path = optional(string)
    service_account              = optional(string)
    serving_status               = optional(string)
    version_id                   = optional(string)
    liveness_check = object({
      check_interval    = optional(string)
      failure_threshold = optional(number)
      host              = optional(string)
      initial_delay     = optional(string)
      path              = string
      success_threshold = optional(number)
      timeout           = optional(string)
    })
    readiness_check = object({
      app_start_timeout = optional(string)
      check_interval    = optional(string)
      failure_threshold = optional(number)
      host              = optional(string)
      path              = string
      success_threshold = optional(number)
      timeout           = optional(string)
    })
    api_config = optional(object({
      auth_fail_action = optional(string)
      login            = optional(string)
      script           = string
      security_level   = optional(string)
      url              = optional(string)
    }))
    automatic_scaling = optional(object({
      cool_down_period = optional(string)
      cpu_utilization = object({
        aggregation_window_length = optional(string)
        target_utilization        = number
      })
      disk_utilization = optional(object({
        target_read_bytes_per_second  = optional(number)
        target_read_ops_per_second    = optional(number)
        target_write_bytes_per_second = optional(number)
        target_write_ops_per_second   = optional(number)
      }))
      max_concurrent_requests = optional(number)
      max_idle_instances      = optional(number)
      max_pending_latency     = optional(string)
      max_total_instances     = optional(number)
      min_idle_instances      = optional(number)
      min_pending_latency     = optional(string)
      min_total_instances     = optional(number)
      network_utilization = optional(object({
        target_received_bytes_per_second   = optional(number)
        target_received_packets_per_second = optional(number)
        target_sent_bytes_per_second       = optional(number)
        target_sent_packets_per_second     = optional(number)
      }))
      request_utilization = optional(object({
        target_concurrent_requests      = optional(number)
        target_request_count_per_second = optional(string)
      }))
    }))
    deployment = optional(object({
      cloud_build_options = optional(object({
        app_yaml_path       = string
        cloud_build_timeout = optional(string)
      }))
      container = optional(object({
        image = string
      }))
      files = optional(list(object({
        name       = string
        sha1_sum   = optional(string)
        source_url = string
      })))
      zip = optional(object({
        files_count = optional(number)
        source_url  = string
      }))
    }))
    endpoints_api_service = optional(object({
      config_id              = optional(string)
      disable_trace_sampling = optional(bool)
      name                   = string
      rollout_strategy       = optional(string)
    }))
    entrypoint = optional(object({
      shell = string
    }))
    flexible_runtime_settings = optional(object({
      operating_system = optional(string)
      runtime_version  = optional(string)
    }))
    handlers = optional(list(object({
      auth_fail_action            = optional(string)
      login                       = optional(string)
      redirect_http_response_code = optional(string)
      script = optional(object({
        script_path = string
      }))
      security_level = optional(string)
      static_files = optional(object({
        application_readable  = optional(bool)
        expiration            = optional(string)
        http_headers          = optional(map(string))
        mime_type             = optional(string)
        path                  = optional(string)
        require_matching_file = optional(bool)
        upload_path_regex     = optional(string)
      }))
      url_regex = optional(string)
    })))
    manual_scaling = optional(object({
      instances = number
    }))
    network = optional(object({
      forwarded_ports  = optional(list(string))
      instance_tag     = optional(string)
      name             = string
      session_affinity = optional(bool)
      subnetwork       = optional(string)
    }))
    resources = optional(object({
      cpu       = optional(number)
      disk_gb   = optional(number)
      memory_gb = optional(number)
      volumes = optional(list(object({
        name        = string
        size_gb     = number
        volume_type = string
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vpc_access_connector = optional(object({
      name = string
    }))
  }))
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

