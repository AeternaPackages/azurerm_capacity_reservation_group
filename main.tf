locals {
  capacity_reservation_groups = { for k1, v1 in var.capacity_reservation_groups : k1 => { location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, tags = v1.tags, zones = v1.zones } }

  capacity_reservations = merge([
    for k1, v1 in var.capacity_reservation_groups : {
      for k2, v2 in coalesce(v1.capacity_reservations, {}) :
      "${k1}/${k2}" => merge(v2, {
        capacity_reservation_group_id = module.capacity_reservation_groups.capacity_reservation_groups["${k1}"].id
      })
    }
  ]...)
}

module "capacity_reservation_groups" {
  source                      = "git::https://github.com/AeternaModules/azurerm_capacity_reservation_group.git?ref=v4.80.0"
  capacity_reservation_groups = local.capacity_reservation_groups
}

module "capacity_reservations" {
  source                = "git::https://github.com/AeternaModules/azurerm_capacity_reservation.git?ref=v4.80.0"
  capacity_reservations = local.capacity_reservations
  depends_on            = [module.capacity_reservation_groups]
}

