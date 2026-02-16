## 5 RG banane hai diffrent location pr
resource "azurerm_resource_group" "rgs" {
for_each = var.rg_names
name = each.key
location = each.value
}

#feature_B update

#feature_B update
#feature_B updat
## feature_A
resource "azurerm_resource_group" "rgs" {
for_each = var.rg_name
name = each.key
location = each.value
}

