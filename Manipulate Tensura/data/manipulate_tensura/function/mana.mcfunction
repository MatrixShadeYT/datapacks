scoreboard players enable @a[scores={manaManipulateTensura=..1}] manaManipulateTensura
execute as @a as @s store result storage manipulate_tensura:macro mana int 1 run scoreboard players get @s manaManipulateTensura
execute as @a[scores={manaManipulateTensura=1..}] run function manipulate_tensura:mana_gain with storage manipulate_tensura:macro
