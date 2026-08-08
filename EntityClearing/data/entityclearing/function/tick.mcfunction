scoreboard players add tick entityclearing 1
function entityclearing:warning
execute if score tick entityclearing = warning entityclearing run say Resetting Mobs!
execute if score tick entityclearing >= timer entityclearing run function entityclearing:clear_mobs
