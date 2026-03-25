variable "zone_id" {}

resource "cloudflare_ruleset" "my_ruleset" {
  zone_id = var.zone_id
  name    = "My ruleset"
  phase   = "http_request_cache_settings"
  kind    = "zone"
  rules = [
    {
      expression = "http.request.uri.path contains \"/content\""
      action     = "set_cache_settings"
      action_parameters = {
        cache = true
        vary = {
          default = {
            action = "normalize"
          }
          headers = {
            "accept" = {
              action      = "normalize"
              media_types = ["image/webp", "image/avif", "image/jpeg"]
            }
            "accept-language" = {
              action    = "normalize"
              languages = ["en", "de"]
            }
            "x-device-type" = {
              action = "passthrough"
            }
            "x-region" = {
              action = "bypass"
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
