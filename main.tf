terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

resource "yandex_vpc_route_table" "rt" {
  network_id = var.network_id
  name       = var.name
  dynamic "static_route" {
    for_each = var.static_route
    content {
      destination_prefix = static_route.value["destination_prefix"]
      next_hop_address = static_route.value["next_hop_address"]
      gateway_id = static_route.value["gateway_id"]
    }
  }
}
