local EquipmentGrid1 = table.deepcopy(data.raw["equipment-grid"]["large-equipment-grid"])
EquipmentGrid1.name = "equipment-grid-1"
EquipmentGrid1.width = 10
EquipmentGrid1.height = 10

local EquipmentGrid2 = table.deepcopy(data.raw["equipment-grid"]["large-equipment-grid"])
EquipmentGrid2.name = "equipment-grid-2"
EquipmentGrid2.width = 12
EquipmentGrid2.height = 10

local EquipmentGrid3 = table.deepcopy(data.raw["equipment-grid"]["large-equipment-grid"])
EquipmentGrid3.name = "equipment-grid-3"
EquipmentGrid3.width = 10
EquipmentGrid3.height = 8

data:extend { EquipmentGrid1, EquipmentGrid2, EquipmentGrid3 }
