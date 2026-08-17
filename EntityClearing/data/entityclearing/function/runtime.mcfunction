scoreboard players add #tick entityclearing 1
scoreboard players operation #warning entityclearing = #timer entityclearing
scoreboard players operation #warning entityclearing -= #alert entityclearing
execute if score #tick entityclearing = #warning entityclearing run function entityclearing:alert
