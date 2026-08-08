tellraw @s ["",{"text":"Are you sure? ","color":"red","bold":true},{"text":"This resets all learned skills! ","color":"white"},{"text":"[CONFIRM]","color":"dark_red","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger Reroll"}}]

# Prime the player for the next click
scoreboard players set @s RerollConfirm 1
