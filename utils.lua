-- @ tableIn: table<{number, string}>
-- @ item: string
function RemoveItem(tableIn, item)
  if item ~= nil then
    if tableIn ~= nil then
      for index, value in pairs(tableIn) do
        if value[2] ~= nil then
          if value[2] == item then
            tableIn[index] = nil
          end
        end
      end
    end
  end
end

-- @ config: AS.config
-- @ item: string
function RemoveAllItemOccurrences(config, item)
  if config ~= nil then
    for config_key, config_values in pairs(config) do
      for kit_name, kit_option in pairs(config_values) do
        RemoveItem(kit_option, item)
      end
    end
  end
end

-- @ tableIn: table<{number, string}>
-- @ tuple: {number, string}
function AddItem(tableIn, tuple)
  if tuple ~= nil then
    if tableIn ~= nil then
      table.insert(tableIn, tuple)
    end
  end
end

