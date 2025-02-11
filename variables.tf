variable "network_id" {
  description = "ID of the network this route table belongs to"
  type        = string
  nullable    = false
}

variable "name" {
  description = "Name of the route table"
  type        = string
  nullable    = false
}

variable "static_route" {
  description = "A list of static route records for the route table"
  type        = list(object({
    destination_prefix = string
    next_hop_address = string
    gateway_id  = string
  }))
  nullable    = false
  default     = []
}