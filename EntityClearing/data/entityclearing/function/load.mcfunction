scoreboard objectives add entityclearing dummy
execute unless score timer entityclearing matches 1.. run scoreboard players set timer entityclearing 6000
execute unless score alert entityclearing matches 1.. run scoreboard players set alert entityclearing 100
execute unless score mode entityclearing matches 1.. run scoreboard players set mode entityclearing 0
scoreboard players set tick entityclearing 0
scoreboard players add warning entityclearing 1
function entityclearing:warning
