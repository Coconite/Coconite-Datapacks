function c.lb:technical/config/traps/toggle/try_real
playsound minecraft:ui.button.click ui @s


scoreboard players set @s c.lb.trigger 0
playsound minecraft:ui.button.click ui @s
