resource "cloudflare_pages_project" "example_pages_project" {
  account_id = "023e105f4ecef8ad9ca31a8372d0c353"
  build_config = {
    build_caching = true
    build_command = "npm run build"
    destination_dir = "build"
    root_dir = "/"
    web_analytics_tag = "cee1c73f6e4743d0b5e6bb1a0bcaabcc"
    web_analytics_token = "021e1057c18547eca7b79f2516f06o7x"
  }
  deployment_configs = {
    preview = {
      ai_bindings = {
        ai_binding = {
          project_id = "some-project-id"
        }
      }
      analytics_engine_datasets = {
        analytics_engine_binding = {
          dataset = "api_analytics"
        }
      }
      browsers = {
        browser = {

        }
      }
      compatibility_date = "2022-01-01"
      compatibility_flags = ["url_standard"]
      d1_databases = {
        d1_binding = {
          id = "445e2955-951a-43f8-a35b-a4d0c8138f63"
        }
      }
      durable_object_namespaces = {
        do_binding = {
          namespace_id = "5eb63bbbe01eeed093cb22bb8f5acdc3"
        }
      }
      env_vars = {
        foo = {
          value = "hello world"
          type = "plain_text"
        }
      }
      hyperdrive_bindings = {
        hyperdrive = {
          id = "a76a99bc342644deb02c38d66082262a"
        }
      }
      kv_namespaces = {
        kv_binding = {
          namespace_id = "5eb63bbbe01eeed093cb22bb8f5acdc3"
        }
      }
      mtls_certificates = {
        mtls = {
          certificate_id = "d7cdd17c-916f-4cb7-aabe-585eb382ec4e"
        }
      }
      placement = {
        mode = "smart"
      }
      queue_producers = {
        queue_producer_binding = {
          name = "some-queue"
        }
      }
      r2_buckets = {
        r2_binding = {
          jurisdiction = "eu"
          name = "some-bucket"
        }
      }
      services = {
        service_binding = {
          entrypoint = "MyHandler"
          environment = "production"
          service = "example-worker"
        }
      }
      vectorize_bindings = {
        vectorize = {
          index_name = "my_index"
        }
      }
    }
    production = {
      ai_bindings = {
        ai_binding = {
          project_id = "some-project-id"
        }
      }
      analytics_engine_datasets = {
        analytics_engine_binding = {
          dataset = "api_analytics"
        }
      }
      browsers = {
        browser = {

        }
      }
      compatibility_date = "2022-01-01"
      compatibility_flags = ["url_standard"]
      d1_databases = {
        d1_binding = {
          id = "445e2955-951a-43f8-a35b-a4d0c8138f63"
        }
      }
      durable_object_namespaces = {
        do_binding = {
          namespace_id = "5eb63bbbe01eeed093cb22bb8f5acdc3"
        }
      }
      env_vars = {
        foo = {
          value = "hello world"
          type = "plain_text"
        }
      }
      hyperdrive_bindings = {
        hyperdrive = {
          id = "a76a99bc342644deb02c38d66082262a"
        }
      }
      kv_namespaces = {
        kv_binding = {
          namespace_id = "5eb63bbbe01eeed093cb22bb8f5acdc3"
        }
      }
      mtls_certificates = {
        mtls = {
          certificate_id = "d7cdd17c-916f-4cb7-aabe-585eb382ec4e"
        }
      }
      placement = {
        mode = "smart"
      }
      queue_producers = {
        queue_producer_binding = {
          name = "some-queue"
        }
      }
      r2_buckets = {
        r2_binding = {
          jurisdiction = "eu"
          name = "some-bucket"
        }
      }
      services = {
        service_binding = {
          entrypoint = "MyHandler"
          environment = "production"
          service = "example-worker"
        }
      }
      vectorize_bindings = {
        vectorize = {
          index_name = "my_index"
        }
      }
    }
  }
  name = "NextJS Blog"
  production_branch = "main"
}
