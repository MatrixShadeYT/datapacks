execute if score #mode entityclearing matches 1.. run function entityclearing:runtime
execute if score #mode entityclearing matches 1.. if score #tick entityclearing = #warning entityclearing run say Resetting Entities!
execute if score #tick entityclearing >= #timer entityclearing run function entityclearing:clear_entities
