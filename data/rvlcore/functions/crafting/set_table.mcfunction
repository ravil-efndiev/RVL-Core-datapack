#######
# Compiled from rvlcore/functions/crafting/crafting_table.mcscript
# to .//data/rvlcore/functions/crafting/set_table.mcfunction
#
# Generated by Minecraft Script for 1.16
######
# this file is generated based on a function specified in.//data/rvlcore/functions/crafting/crafting_table.mcscript
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-1 ~ minecraft:crafting_table align xyz run summon armor_stand ~0.5 ~-1 ~0.5 {NoGravity: 1b, Invulnerable: 1b, Invisible:1b, Tags:["rvl_table", "temp"]}
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s if block ~ ~-1 ~ minecraft:crafting_table align xyz run kill @s
execute as @e[type=armor_stand, tag=temp] at @s run setblock ~ ~ ~ dropper replace 
execute as @e[type=armor_stand, tag=temp] at @s run tag @s remove temp