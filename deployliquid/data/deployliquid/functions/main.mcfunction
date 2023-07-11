execute as @a[nbt={SelectedItem:{id:"minecraft:bucket"}},scores={water_stored=1..}] run tag @s add objd_has_gui_item
execute as @a[nbt={SelectedItem:{id:"minecraft:bucket"}},scores={lava_stored=1..}] run tag @s add objd_has_gui_item
execute as @e[type=minecraft:chest_minecart,tag=objd_gui_container] at @s unless entity @e[distance=..8,tag=objd_has_gui_item] run function deployliquid:gui/removecart
execute as @e[tag=objd_had_gui_item,tag=!objd_has_gui_item] run tag @s remove objd_had_gui_item
execute as @a[tag=objd_has_gui_item,tag=!objd_had_gui_item] at @s anchored eyes run function deployliquid:gui/summoncart
execute as @a[tag=objd_has_gui_item] at @s anchored eyes run function deployliquid:objd/execute2
execute as @e[type=minecraft:chest_minecart,tag=objd_gui_container] at @s run function deployliquid:gui/main
