# Only proceed if confirmed
execute if score ShowConfirmPrompt Settings matches 1 unless score @s RerollConfirm matches 1 run return run function tensura_reroller:confirm

# Check if player has rerolls
execute unless score @s RemainingRerolls matches 1.. run return run tellraw @s {"text":"You have no rerolls remaining.","color":"red"}

# Execute the mod command
execute if score @s RemainingRerolls matches 1.. run tensura reset @s skill

# Decrement counter
scoreboard players remove @s RemainingRerolls 1

# Feedback
execute if score @s RemainingRerolls matches 1.. run function tensura_reroller:chat
