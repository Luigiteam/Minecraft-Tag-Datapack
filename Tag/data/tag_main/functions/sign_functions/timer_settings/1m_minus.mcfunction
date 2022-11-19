scoreboard players remove EndTimer gameTimer 1200

execute if score EndTimer gameTimer < TimerMin gameTimer run tellraw @p {"text":"You can't have the timer less than 2400 ticks (2 minutes)","color": "#cd2323"}
execute if score EndTimer gameTimer < TimerMin gameTimer run scoreboard players set EndTimer gameTimer 2400

tellraw @a ["",{"text": "\n"},{"text":"The Timer is ","color":"aqua"},{"score":{"name":"EndTimer","objective":"gameTimer"},"color": "gold"},{"text":" Ticks (every 1200 ticks is one minute)","color": "aqua"}]

tellraw @s ["",{"text": "\n"},{"text":"------","color":"yellow"},{"text":"\nThese settings add or subtract the amount of time in a round. The timer cannot lower than 2 minutes (2400 ticks).\nThe score represents ticks. Every 1200 ticks is 1 minute.\n\n"},{"text":"[+1 Minute]","color":"aqua","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/timer_settings/1m_plus"}},{"text":" "},{"text":"[+30 Seconds]","color":"aqua","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/timer_settings/30s_plus"}},{"text":"\n\n"},{"text":"[-1 Minute]","color":"red","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/timer_settings/1m_minus"}},{"text":" "},{"text":"[-30 Seconds]","color":"red","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/timer_settings/30s_minus"}}]
