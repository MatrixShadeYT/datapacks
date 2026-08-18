execute store result storage detection:macro x int 1 run data get entity @s Pos[0]
execute store result storage detection:macro y int 1 run data get entity @s Pos[1]
execute store result storage detection:macro z int 1 run data get entity @s Pos[2]
function detection:send_alert with storage detection:macro
