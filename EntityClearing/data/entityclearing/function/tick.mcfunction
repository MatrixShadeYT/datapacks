scoreboard players add #tick entityclearing 1
scoreboard players operation #warning entityclearing = #timer entityclearing
scoreboard players operation #warning entityclearing -= #alert entityclearing
execute if #mode entityclearing matches 1.. if score #tick entityclearing = #warning entityclearing run say Resetting Entities!
execute if score #tick entityclearing >= #timer entityclearing run function entityclearing:clear_entities
