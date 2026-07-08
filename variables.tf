variable "capacity_reservation_groups" {
  description = <<EOT
Map of capacity_reservation_groups, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - tags
    - zones
Nested capacity_reservations (azurerm_capacity_reservation):
    Required:
        - name
        - sku (block)
    Optional:
        - tags
        - zone
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    tags                = optional(map(string))
    zones               = optional(set(string))
    capacity_reservations = optional(map(object({
      name = string
      tags = optional(map(string))
      zone = optional(string)
      sku = object({
        capacity = number
        name     = string
      })
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.capacity_reservation_groups) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.capacity_reservation_groups : [for kk in keys(coalesce(v0.capacity_reservations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
