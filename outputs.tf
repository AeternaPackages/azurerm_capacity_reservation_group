# --- azurerm_capacity_reservation_group ---
output "capacity_reservation_groups" {
  description = "All capacity_reservation_group resources"
  value       = module.capacity_reservation_groups.capacity_reservation_groups
}
output "capacity_reservation_groups_location" {
  description = "List of location values across all capacity_reservation_groups"
  value       = [for k, v in module.capacity_reservation_groups.capacity_reservation_groups : v.location]
}
output "capacity_reservation_groups_name" {
  description = "List of name values across all capacity_reservation_groups"
  value       = [for k, v in module.capacity_reservation_groups.capacity_reservation_groups : v.name]
}
output "capacity_reservation_groups_resource_group_name" {
  description = "List of resource_group_name values across all capacity_reservation_groups"
  value       = [for k, v in module.capacity_reservation_groups.capacity_reservation_groups : v.resource_group_name]
}
output "capacity_reservation_groups_tags" {
  description = "List of tags values across all capacity_reservation_groups"
  value       = [for k, v in module.capacity_reservation_groups.capacity_reservation_groups : v.tags]
}
output "capacity_reservation_groups_zones" {
  description = "List of zones values across all capacity_reservation_groups"
  value       = [for k, v in module.capacity_reservation_groups.capacity_reservation_groups : v.zones]
}


# --- azurerm_capacity_reservation ---
output "capacity_reservations" {
  description = "All capacity_reservation resources"
  value       = module.capacity_reservations.capacity_reservations
}
output "capacity_reservations_capacity_reservation_group_id" {
  description = "List of capacity_reservation_group_id values across all capacity_reservations"
  value       = [for k, v in module.capacity_reservations.capacity_reservations : v.capacity_reservation_group_id]
}
output "capacity_reservations_name" {
  description = "List of name values across all capacity_reservations"
  value       = [for k, v in module.capacity_reservations.capacity_reservations : v.name]
}
output "capacity_reservations_sku" {
  description = "List of sku values across all capacity_reservations"
  value       = [for k, v in module.capacity_reservations.capacity_reservations : v.sku]
}
output "capacity_reservations_tags" {
  description = "List of tags values across all capacity_reservations"
  value       = [for k, v in module.capacity_reservations.capacity_reservations : v.tags]
}
output "capacity_reservations_zone" {
  description = "List of zone values across all capacity_reservations"
  value       = [for k, v in module.capacity_reservations.capacity_reservations : v.zone]
}



