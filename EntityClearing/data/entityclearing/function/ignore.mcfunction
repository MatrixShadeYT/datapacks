# Kill all but ignore tag and Owned Mobs
execute as @e[type=!minecraft:player,type=!#entityclearing:ignore] unless data entity @s Owner run kill @s
execute as @e[type=!minecraft:player,type=!#entityclearing:ignore] unless data entity @s Owner run kill @s
