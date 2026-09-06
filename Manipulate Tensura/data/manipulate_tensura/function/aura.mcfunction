scoreboard players enable @a[score={auraManipulateTensura=..1}] auraManipulateTensura
execute as @a as @s store result storage manipulate_tensura:macro aura int 1 run scoreboard players get @s auraManipulateTensura
execute as @a[scores={manaManipulateTensura=1..}] run function manipulate_tensura:aura_gain with storage manipulate_tensura:macro
