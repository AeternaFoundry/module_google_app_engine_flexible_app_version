resource "google_app_engine_flexible_app_version" "app_engine_flexible_app_versions" {
  for_each = var.app_engine_flexible_app_versions

  runtime                      = each.value.runtime
  service                      = each.value.service
  beta_settings                = each.value.beta_settings
  default_expiration           = each.value.default_expiration
  delete_service_on_destroy    = each.value.delete_service_on_destroy
  deletion_policy              = each.value.deletion_policy
  env_variables                = each.value.env_variables
  inbound_services             = each.value.inbound_services
  instance_class               = each.value.instance_class
  nobuild_files_regex          = each.value.nobuild_files_regex
  noop_on_destroy              = each.value.noop_on_destroy
  project                      = each.value.project
  runtime_api_version          = each.value.runtime_api_version
  runtime_channel              = each.value.runtime_channel
  runtime_main_executable_path = each.value.runtime_main_executable_path
  service_account              = each.value.service_account
  serving_status               = each.value.serving_status
  version_id                   = each.value.version_id

  liveness_check {
    check_interval    = each.value.liveness_check.check_interval
    failure_threshold = each.value.liveness_check.failure_threshold
    host              = each.value.liveness_check.host
    initial_delay     = each.value.liveness_check.initial_delay
    path              = each.value.liveness_check.path
    success_threshold = each.value.liveness_check.success_threshold
    timeout           = each.value.liveness_check.timeout
  }

  readiness_check {
    app_start_timeout = each.value.readiness_check.app_start_timeout
    check_interval    = each.value.readiness_check.check_interval
    failure_threshold = each.value.readiness_check.failure_threshold
    host              = each.value.readiness_check.host
    path              = each.value.readiness_check.path
    success_threshold = each.value.readiness_check.success_threshold
    timeout           = each.value.readiness_check.timeout
  }

  dynamic "api_config" {
    for_each = each.value.api_config != null ? [each.value.api_config] : []
    content {
      auth_fail_action = api_config.value.auth_fail_action
      login            = api_config.value.login
      script           = api_config.value.script
      security_level   = api_config.value.security_level
      url              = api_config.value.url
    }
  }

  dynamic "automatic_scaling" {
    for_each = each.value.automatic_scaling != null ? [each.value.automatic_scaling] : []
    content {
      cool_down_period = automatic_scaling.value.cool_down_period
      cpu_utilization {
        aggregation_window_length = automatic_scaling.value.cpu_utilization.aggregation_window_length
        target_utilization        = automatic_scaling.value.cpu_utilization.target_utilization
      }
      dynamic "disk_utilization" {
        for_each = automatic_scaling.value.disk_utilization != null ? [automatic_scaling.value.disk_utilization] : []
        content {
          target_read_bytes_per_second  = disk_utilization.value.target_read_bytes_per_second
          target_read_ops_per_second    = disk_utilization.value.target_read_ops_per_second
          target_write_bytes_per_second = disk_utilization.value.target_write_bytes_per_second
          target_write_ops_per_second   = disk_utilization.value.target_write_ops_per_second
        }
      }
      max_concurrent_requests = automatic_scaling.value.max_concurrent_requests
      max_idle_instances      = automatic_scaling.value.max_idle_instances
      max_pending_latency     = automatic_scaling.value.max_pending_latency
      max_total_instances     = automatic_scaling.value.max_total_instances
      min_idle_instances      = automatic_scaling.value.min_idle_instances
      min_pending_latency     = automatic_scaling.value.min_pending_latency
      min_total_instances     = automatic_scaling.value.min_total_instances
      dynamic "network_utilization" {
        for_each = automatic_scaling.value.network_utilization != null ? [automatic_scaling.value.network_utilization] : []
        content {
          target_received_bytes_per_second   = network_utilization.value.target_received_bytes_per_second
          target_received_packets_per_second = network_utilization.value.target_received_packets_per_second
          target_sent_bytes_per_second       = network_utilization.value.target_sent_bytes_per_second
          target_sent_packets_per_second     = network_utilization.value.target_sent_packets_per_second
        }
      }
      dynamic "request_utilization" {
        for_each = automatic_scaling.value.request_utilization != null ? [automatic_scaling.value.request_utilization] : []
        content {
          target_concurrent_requests      = request_utilization.value.target_concurrent_requests
          target_request_count_per_second = request_utilization.value.target_request_count_per_second
        }
      }
    }
  }

  dynamic "deployment" {
    for_each = each.value.deployment != null ? [each.value.deployment] : []
    content {
      dynamic "cloud_build_options" {
        for_each = deployment.value.cloud_build_options != null ? [deployment.value.cloud_build_options] : []
        content {
          app_yaml_path       = cloud_build_options.value.app_yaml_path
          cloud_build_timeout = cloud_build_options.value.cloud_build_timeout
        }
      }
      dynamic "container" {
        for_each = deployment.value.container != null ? [deployment.value.container] : []
        content {
          image = container.value.image
        }
      }
      dynamic "files" {
        for_each = deployment.value.files != null ? deployment.value.files : []
        content {
          name       = files.value.name
          sha1_sum   = files.value.sha1_sum
          source_url = files.value.source_url
        }
      }
      dynamic "zip" {
        for_each = deployment.value.zip != null ? [deployment.value.zip] : []
        content {
          files_count = zip.value.files_count
          source_url  = zip.value.source_url
        }
      }
    }
  }

  dynamic "endpoints_api_service" {
    for_each = each.value.endpoints_api_service != null ? [each.value.endpoints_api_service] : []
    content {
      config_id              = endpoints_api_service.value.config_id
      disable_trace_sampling = endpoints_api_service.value.disable_trace_sampling
      name                   = endpoints_api_service.value.name
      rollout_strategy       = endpoints_api_service.value.rollout_strategy
    }
  }

  dynamic "entrypoint" {
    for_each = each.value.entrypoint != null ? [each.value.entrypoint] : []
    content {
      shell = entrypoint.value.shell
    }
  }

  dynamic "flexible_runtime_settings" {
    for_each = each.value.flexible_runtime_settings != null ? [each.value.flexible_runtime_settings] : []
    content {
      operating_system = flexible_runtime_settings.value.operating_system
      runtime_version  = flexible_runtime_settings.value.runtime_version
    }
  }

  dynamic "handlers" {
    for_each = each.value.handlers != null ? each.value.handlers : []
    content {
      auth_fail_action            = handlers.value.auth_fail_action
      login                       = handlers.value.login
      redirect_http_response_code = handlers.value.redirect_http_response_code
      dynamic "script" {
        for_each = handlers.value.script != null ? [handlers.value.script] : []
        content {
          script_path = script.value.script_path
        }
      }
      security_level = handlers.value.security_level
      dynamic "static_files" {
        for_each = handlers.value.static_files != null ? [handlers.value.static_files] : []
        content {
          application_readable  = static_files.value.application_readable
          expiration            = static_files.value.expiration
          http_headers          = static_files.value.http_headers
          mime_type             = static_files.value.mime_type
          path                  = static_files.value.path
          require_matching_file = static_files.value.require_matching_file
          upload_path_regex     = static_files.value.upload_path_regex
        }
      }
      url_regex = handlers.value.url_regex
    }
  }

  dynamic "manual_scaling" {
    for_each = each.value.manual_scaling != null ? [each.value.manual_scaling] : []
    content {
      instances = manual_scaling.value.instances
    }
  }

  dynamic "network" {
    for_each = each.value.network != null ? [each.value.network] : []
    content {
      forwarded_ports  = network.value.forwarded_ports
      instance_tag     = network.value.instance_tag
      name             = network.value.name
      session_affinity = network.value.session_affinity
      subnetwork       = network.value.subnetwork
    }
  }

  dynamic "resources" {
    for_each = each.value.resources != null ? [each.value.resources] : []
    content {
      cpu       = resources.value.cpu
      disk_gb   = resources.value.disk_gb
      memory_gb = resources.value.memory_gb
      dynamic "volumes" {
        for_each = resources.value.volumes != null ? resources.value.volumes : []
        content {
          name        = volumes.value.name
          size_gb     = volumes.value.size_gb
          volume_type = volumes.value.volume_type
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vpc_access_connector" {
    for_each = each.value.vpc_access_connector != null ? [each.value.vpc_access_connector] : []
    content {
      name = vpc_access_connector.value.name
    }
  }
}

