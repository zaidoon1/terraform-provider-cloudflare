variable "zone_id" {}

resource "cloudflare_ruleset" "my_ruleset" {
  zone_id = var.zone_id
  name    = "My ruleset"
  phase   = "http_request_cache_settings"
  kind    = "zone"
  rules = [
    {
      expression = "http.request.uri.path contains \"/api\""
      action     = "set_cache_settings"
      action_parameters = {
        cache = true
        vary = {
          default = {
            action = "passthrough"
          }
          headers = {
            "accept" = {
              action = "passthrough"
            }
            "accept-language" = {
              action = "passthrough"
            }
          }
        }
      }
    }
  ]
}

data "cloudflare_ruleset" "my_ruleset" {
  zone_id = var.zone_id
  id      = cloudflare_ruleset.my_ruleset.id
}
