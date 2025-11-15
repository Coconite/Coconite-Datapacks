scoreboard players reset @s tl.menu
scoreboard players enable @s tl.menu

tellraw @s [{translate:"ui.thallium.load.announce",color:"gray",font:"thallium:5",with:[[{text:"0 ",color:"white",font:"thallium:icon",click_event:{action:"run_command",command:"/trigger tl.menu set 82"}},{translate:"ui.thallium.title",color:"white",font:"thallium:tooltip"}],{"translate":"ui.thallium.version",color:"gray",font:"thallium:5"}]}]
tellraw @s ""
tellraw @s {translate:"ui.thallium.load.suggest",color:"gray",font:"thallium:5",with:[{translate:"ui.thallium.menu.command",color:"white",font:"thallium:5",click_event:{action:"suggest_command",command:"/trigger tl.menu"}}]}
tellraw @s {translate:"ui.thallium.load.installed",color:"gray",font:"thallium:5"}

scoreboard players set #thallium.temp.menus thallium.dummy 1

data modify storage thallium:temp list_encoded set value false
function #thallium:list
# This is where I found out that Flux doesn't know about the return command
execute if data storage thallium:temp {list_encoded:true} run return fail
tellraw @s {text:" "}
tellraw @s {text:"There's nothing here :(",color:dark_gray,font:"thallium:5"}
# tellraw @s [{text:"Here",color:blue,underlined:true,font:"thallium:5"},{text:" are some recommendations!",color:dark_gray,underlined:false}]