execute if score #mode entityclearing matches 1.. run function entityclearing:runtime
execute if score #tick entityclearing >= #timer entityclearing run function entityclearing:clear_entities
