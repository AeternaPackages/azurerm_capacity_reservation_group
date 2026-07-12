# --- azurerm_capacity_reservation_group ---
output "capacity_reservation_groups_id" {
  description = "Map of id values across all capacity_reservation_groups, keyed the same as var.capacity_reservation_groups"
  value       = module.capacity_reservation_groups.capacity_reservation_groups_id
}

output "capacity_reservation_groups_location" {
  description = "Map of location values across all capacity_reservation_groups, keyed the same as var.capacity_reservation_groups"
  value       = module.capacity_reservation_groups.capacity_reservation_groups_location
}

output "capacity_reservation_groups_name" {
  description = "Map of name values across all capacity_reservation_groups, keyed the same as var.capacity_reservation_groups"
  value       = module.capacity_reservation_groups.capacity_reservation_groups_name
}

output "capacity_reservation_groups_resource_group_name" {
  description = "Map of resource_group_name values across all capacity_reservation_groups, keyed the same as var.capacity_reservation_groups"
  value       = module.capacity_reservation_groups.capacity_reservation_groups_resource_group_name
}

output "capacity_reservation_groups_tags" {
  description = "Map of tags values across all capacity_reservation_groups, keyed the same as var.capacity_reservation_groups"
  value       = module.capacity_reservation_groups.capacity_reservation_groups_tags
}

output "capacity_reservation_groups_zones" {
  description = "Map of zones values across all capacity_reservation_groups, keyed the same as var.capacity_reservation_groups"
  value       = module.capacity_reservation_groups.capacity_reservation_groups_zones
}

# --- azurerm_capacity_reservation ---
output "capacity_reservations_id" {
  description = "Map of id values across all capacity_reservations, keyed the same as var.capacity_reservations"
  value       = module.capacity_reservations.capacity_reservations_id
}

output "capacity_reservations_capacity_reservation_group_id" {
  description = "Map of capacity_reservation_group_id values across all capacity_reservations, keyed the same as var.capacity_reservations"
  value       = module.capacity_reservations.capacity_reservations_capacity_reservation_group_id
}

output "capacity_reservations_name" {
  description = "Map of name values across all capacity_reservations, keyed the same as var.capacity_reservations"
  value       = module.capacity_reservations.capacity_reservations_name
}

output "capacity_reservations_sku" {
  description = "Map of sku values across all capacity_reservations, keyed the same as var.capacity_reservations"
  value       = module.capacity_reservations.capacity_reservations_sku
}

output "capacity_reservations_tags" {
  description = "Map of tags values across all capacity_reservations, keyed the same as var.capacity_reservations"
  value       = module.capacity_reservations.capacity_reservations_tags
}

output "capacity_reservations_zone" {
  description = "Map of zone values across all capacity_reservations, keyed the same as var.capacity_reservations"
  value       = module.capacity_reservations.capacity_reservations_zone
}


