# Increase tick value
scoreboard players add tick entityclearing 1

# Update warning value
function entityclearing:warning

# Send warning
execute if score tick entityclearing = warning entityclearing run say Resetting Mobs!

# Run kill on mode 1
execute if score mode entityclearing matches 1 if score tick entityclearing >= timer entityclearing as @e[type=!minecraft:player,type=#entityclearing:accept] unless data entity @s Owner run kill @s
execute if score mode entityclearing matches 1 if score tick entityclearing >= timer entityclearing as @e[type=!minecraft:player,type=#entityclearing:accept] unless data entity @s Owner run kill @s

# Run kill on mode 2
execute if score mode entityclearing matches 2 if score tick entityclearing >= timer entityclearing as @e[type=!minecraft:player,type=!#entityclearing:ignore] unless data entity @s Owner run kill @s
execute if score mode entityclearing matches 2 if score tick entityclearing >= timer entityclearing as @e[type=!minecraft:player,type=!#entityclearing:ignore] unless data entity @s Owner run kill @s

# Reset tick when it goes to timer limit
execute if score tick entityclearing >= timer entityclearing run scoreboard players set tick entityclearing 0
