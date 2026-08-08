# Increase tick value
scoreboard players add tick entityclearing 1

# Update warning value
function entityclearing:warning

# Send warning
execute if score mode entityclearing matches if score tick entityclearing = warning entityclearing run function entityclearing:alert

# Run kill based off mode
execute if score mode entityclearing matches 1 if score tick entityclearing >= timer entityclearing run function entityclearing:ignore
execute if score mode entityclearing matches 2 if score tick entityclearing >= timer entityclearing run function entityclearing:accept

# Reset tick when it goes to timer limit
execute if score tick entityclearing >= timer entityclearing run scoreboard players set tick entityclearing 0
