scoreboard objectives add entityclearing dummy
scoreboard players add timer entityclearing 1
scoreboard players add warning entityclearing 1
scoreboard players add alert entityclearing 1
scoreboard players set tick entityclearing 0

scoreboard players set mode entityclearing 1
# scoreboard players set mode entityclearing 2

execute if score timer entityclearing matches 2.. run scoreboard players remove timer entityclearing 1
execute if score timer entityclearing matches ..2 run scoreboard players set timer entityclearing 1200

execute if score alert entityclearing matches 2.. run scoreboard players remove alert entityclearing 1
execute if score alert entityclearing matches ..2 run scoreboard players set alert entityclearing 100

function entityclearing:warning
