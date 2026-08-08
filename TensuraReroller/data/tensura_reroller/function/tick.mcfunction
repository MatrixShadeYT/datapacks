# Only enable reroll trigger for players who have rerolls remaining
execute as @a[scores={RemainingRerolls=1..}] at @s run scoreboard players enable @s Reroll

# Reset confirmation status and show welcome message on join
execute as @a[scores={Joined=1..}] run scoreboard players set @s RerollConfirm 0
execute as @a[scores={Joined=1.., RemainingRerolls=1..}] run function tensura_reroller:chat
scoreboard players reset @a[scores={Joined=1..}] Joined

# Initialize new players
execute as @a[advancements={tensura:reincarnated=true}, tag=!reroller_initialized] at @s run function tensura_reroller:setup

# Reset scroll logic
execute if score IsScrollResetable Settings matches 1 as @a[advancements={tensura:reincarnated=false}] at @s run tag @s remove reroller_initialized

# Handle the reroll trigger
execute as @a[scores={Reroll=1..}] at @s run function tensura_reroller:reroll
scoreboard players reset @a[scores={Reroll=1..}] Reroll
