execute if score #mode entityclearing matches 1 as @e[type=!minecraft:player,type=#entityclearing:accept] unless data entity @s Owner run kill @s
execute if score #mode entityclearing matches 2 as @e[type=!minecraft:player,type=!#entityclearing:ignore] unless data entity @s Owner run kill @s
kill @e[type=minecraft:experience_orb]
kill @e[type=minecraft:item]
scoreboard players set tick entityclearing 0
