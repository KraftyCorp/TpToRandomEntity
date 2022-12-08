scoreboard objectives add ticks dummy
scoreboard objectives add secondes dummy
scoreboard objectives setdisplay sidebar ticks
scoreboard objectives modify ticks displayname "1/20 de secondes écoulés (1200 = 1m)"

execute as @a run scoreboard players add @s ticks 1
execute as @a if score @s ticks matches 20 run scoreboard players add @s secondes 1
execute as @a[tag=!tp_spawn_after] if score @s ticks matches 60 run tag @s add tp
execute as @a[tag=tp_spawn_after] if score @s ticks matches 3600 run tag @s add tp
execute as @a[tag=tp_spawn_after] if score @s ticks matches 3600 run tag @s remove tp_spawn_after
execute as @a[tag=tp] run scoreboard players set @s ticks 0
execute as @a[tag=tp,tag=!tp_spawn] run tp @s @e[limit=1,sort=random]
execute as @a[tag=tp,tag=tp_spawn] run tp @s @e[limit=1,tag=SpawnPoint,sort=random]
execute as @a[tag=tp,tag=tp_spawn] run tag @s add tp_spawn_after
execute as @a[tag=tp,tag=tp_spawn] run tag @s remove tp_spawn
execute as @a[tag=tp] run tag @s remove tp

scoreboard objectives add create_spawn_craft dummy

execute as @a store success score @s create_spawn_craft run recipe take @s ttre:create_spawn
execute as @a[scores={create_spawn_craft=1}] run tag @s add create_spawn_craft
execute as @a[tag=create_spawn_craft] run clear @s knowledge_book

execute as @a[tag=create_spawn_craft] at @s run kill @e[tag=SpawnPoint]

execute as @a[tag=create_spawn_craft] at @s run summon armor_stand ~ ~ ~ {Invisible:1,CustomNameVisible:1,CustomName:'[{"text":"Spawn Point"}]',NoAI:1,NoGravity:1,Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] at @s run summon marker ~ ~ ~ {Tags:["SpawnPoint"]}
execute as @a[tag=create_spawn_craft] run scoreboard players reset @s create_spawn_craft
execute as @a[tag=create_spawn_craft] run tag @s remove create_spawn_craft

scoreboard objectives add tp_spawn_craft dummy
scoreboard objectives add tp_spawn dummy

execute as @a store success score @s tp_spawn_craft run recipe take @s ttre:tp_spawn
execute as @a[scores={tp_spawn_craft=1}] run tag @s add tp_spawn_craft
execute as @a[tag=tp_spawn_craft] run clear @s knowledge_book

execute as @a[tag=tp_spawn_craft] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Se téléporter au spawn point","italic":false}'},CustomModelData:1} 2
execute as @a[tag=tp_spawn_craft] run scoreboard players reset @s tp_spawn_craft
execute as @a[tag=tp_spawn_craft] run tag @s remove tp_spawn_craft

scoreboard objectives add click_carrot minecraft.used:minecraft.carrot_on_a_stick

execute as @a[tag=!tp_spawn,tag=!tp_spawn_after] if score @s click_carrot matches 1.. if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Se téléporter au spawn point","italic":false}'},CustomModelData:1}}} run tag @s add tp_spawn_setup
execute as @a[tag=!tp_spawn,tag=tp_spawn_after,tag=!tp_spawn_plus_after] if score @s click_carrot matches 1.. if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Se téléporter au spawn point","italic":false}'},CustomModelData:1}}} run tag @s add tp_spawn_plus
execute as @a[tag=tp_spawn_setup] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Se téléporter au spawn point","italic":false}'},CustomModelData:1} 1
execute as @a[tag=tp_spawn_plus] run clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Se téléporter au spawn point","italic":false}'},CustomModelData:1} 1
execute as @a[tag=tp_spawn_setup] run tellraw @s [{"text":"[TpToRandomEntity]","color":"red","bold":true},{"text":" Vous serez téléporté à votre point de Spawn lors de votre prochaine téléportation. Vous aurez ensuite 2 minutes de plus avant la prochaine téléportation. Si vous utilisez ensuite un autre objet comme celui-là, vous pourrez augmenter votre temps de 3 minutes avant votre prochaine téléportation.\nVeuillez patienter votre prochaine téléportation.","color":"white","bold":false}]
execute as @a[tag=tp_spawn_plus] run tellraw @s [{"text":"[TpToRandomEntity]","color":"red","bold":true},{"text":" Vous avez bien augmenté votre temps de 3 minutes avant votre prochaine téléportation. Ceci ne pourra pas se faire un deuxième fois.","color":"white","bold":false}]
execute as @a[tag=tp_spawn_setup] run tag @s add tp_spawn
execute as @a[tag=tp_spawn_setup] run tag @s remove tp_spawn_setup


scoreboard players reset @a click_carrot