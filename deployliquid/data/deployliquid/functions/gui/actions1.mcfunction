kill @e[type=minecraft:item,nbt={Item:{tag:{objd:{gui:1b}}}}]
execute unless data entity @s Items[{Slot:12b,tag:{objd:{gui:1b}}}] run function firstdatapack:deploy_water
execute unless data entity @s Items[{Slot:12b,tag:{objd:{gui:1b}}}] if data entity @s Items[{Slot:12b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{objd:{gui:1b}},Count:1b},Tags:["objd_gui_dropitem"]}
execute unless data entity @s Items[{Slot:12b,tag:{objd:{gui:1b}}}] if data entity @s Items[{Slot:12b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{objd:{gui:1b}}}},sort=nearest] Item set from entity @s Items[{Slot:12b}]
execute unless data entity @s Items[{Slot:14b,tag:{objd:{gui:1b}}}] run function firstdatapack:deploy_lava
execute unless data entity @s Items[{Slot:14b,tag:{objd:{gui:1b}}}] if data entity @s Items[{Slot:14b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",tag:{objd:{gui:1b}},Count:1b},Tags:["objd_gui_dropitem"]}
execute unless data entity @s Items[{Slot:14b,tag:{objd:{gui:1b}}}] if data entity @s Items[{Slot:14b}] run data modify entity @e[limit=1,type=minecraft:item,nbt={Item:{tag:{objd:{gui:1b}}}},sort=nearest] Item set from entity @s Items[{Slot:14b}]
tp @e[type=minecraft:item,tag=objd_gui_dropitem] @p[distance=..8]
clear @a[distance=..20] #deployliquid:all{objd:{gui:1b}} 
function deployliquid:gui/reset_gui1
execute unless score @p[distance=..8] objd_gui_page matches 1 run function deployliquid:gui/clear1
