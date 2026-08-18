execute store result storage detection:macro pos.x int 1 run data get entity @s Pos[0]
execute store result storage detection:macro pos.y int 1 run data get entity @s Pos[1]
execute store result storage detection:macro pos.z int 1 run data get entity @s Pos[2]
execute store result storage detection:macro entity.name string 1 run data get entity @s CustomName
function detection:send_alert with storage detection:macro
