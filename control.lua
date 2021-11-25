require "config"

AS.item_list = {}
AS.multiplier = (settings.global["basic-kit-substations"].value and 1 or 0) * AS.multiplier
AS.chests = settings.global["basic-kit-logistic-chests"].value and 1 or 0

-- parse settings values using config file fields
for key, options in pairs(AS.config) do
  if settings.global[key] ~= nil then
    local option_name = settings.global[key].value
    if options[option_name] ~= nil then
      for _, tuple in pairs(options[option_name]) do
        table.insert(AS.item_list, tuple)
      end
    else
      game.print("Options not defined for key: " .. option_name)
    end
  else
    game.print("Undefined global setting with key: " .. key)
  end
end

-- add items to player inventory
local function InsertIntoInventory(event)
  local player = game.players[event.player_index]

	pcall(player.exit_cutscene)
	
	for _, item in pairs(AS.item_list) do
		if game.item_prototypes[item[2]] ~= nil then
			player.insert{ name = item[2], count = item[1]}
		else
			player.print("Unable to add \"" .. item[2] .. "\" to inventory, please check spelling.")
		end
	end
end

-- init compatibility
-- moved to config

-- add items to inventory
script.on_event(defines.events.on_player_created, InsertIntoInventory)