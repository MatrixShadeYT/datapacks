scoreboard players add tick entityclearing 1

function entityclearing:warning

execute if score tick entityclearing = warning entityclearing run say Resetting Mobs!

execute if score mode entityclearing matches 1 if score tick entityclearing >= timer entityclearing as @e[type=!minecraft:player,type=#entityclearing:accept] unless data entity @s Owner run kill @s
execute if score mode entityclearing matches 1 if score tick entityclearing >= timer entityclearing as @e[type=!minecraft:player,type=#entityclearing:accept] unless data entity @s Owner run kill @s

execute if score mode entityclearing matches 2 if score tick entityclearing >= timer entityclearing as @e[type=!minecraft:player,type=!#entityclearing:ignore] unless data entity @s Owner run kill @s
execute if score mode entityclearing matches 2 if score tick entityclearing >= timer entityclearing as @e[type=!minecraft:player,type=!#entityclearing:ignore] unless data entity @s Owner run kill @s

execute if score tick entityclearing >= timer entityclearing run scoreboard players set tick entityclearing 0
