# Only set score if they don't have one yet (handles pre-existing world players)
scoreboard players operation @s RemainingRerolls = RerollsAmount Settings

tag @s add reroller_initialized
function tensura_reroller:chat
