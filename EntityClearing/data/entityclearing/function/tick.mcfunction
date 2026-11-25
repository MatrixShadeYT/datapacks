scoreboard players add !tick entityclearing 1
scoreboard players operation !warning entityclearing = !timer entityclearing
scoreboard players operation !warning entityclearing -= !alert entityclearing

execute if score !tick entityclearing = !warning entityclearing run title @a actionbar {"text":"Resetting Entities, Items, & XP Orbs!"}
execute if score !tick entityclearing = !warning entityclearing run tellraw @a {"text":"Resetting Entities, Items, & XP Orbs!"}

execute if score !tick entityclearing >= !timer entityclearing as @e[type=!minecraft:player,type=!#entityclearing:ignore] unless data entity @s Owner run kill @s
execute if score !tick entityclearing >= !timer entityclearing run kill @e[type=minecraft:experience_orb]
execute if score !tick entityclearing >= !timer entityclearing run kill @e[type=minecraft:item]
execute if score !tick entityclearing >= !timer entityclearing run scoreboard players set !tick entityclearing 0
