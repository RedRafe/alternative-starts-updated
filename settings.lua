--[[
	Settings
	They are all runtime global because server sync
]]--

data:extend({
	-- Mining equipment
	{
		type = "string-setting",
		name = "basic-kit-mining",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {
			"None",
			"Base",
			"Light Industry",
			"Medium Industry",
			"Heavy Industry",
			"Tycoon"
		},
		order = "as-100"
	},
	-- Military equipment
	{
		type = "string-setting",
		name = "basic-kit-military",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {
			"None",
			"Civilian",
			"Soldier",
			"Rambo"
		},
		order = "as-200"
	},
	-- Power equipment
	{
		type = "string-setting",
		name = "basic-kit-power",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {
			"None",
			"Steam",
			"Advanced",
			"Solar",
			"Solar Field",
		},
		order = "as-300"
	},
	-- Booster kit
	{
		type = "string-setting",
		name = "basic-kit-booster",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {
			"None",
			"Resources",
			"Power Armor",
			"Research Equipment",
			"Power Armor & Resources",
			"All"
		},
		order = "as-400"
	},
	-- Modules kit
	{
		type = "string-setting",
		name = "basic-kit-modules",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {
			"None",
			"Poker Speed",
			"Poker Productivity",
			"Poker Efficiency",
			"Tris of Poker",
			"Royal Scale"
		},
		order = "as-500"
	},
	-- Robots kit
	{
		type = "string-setting",
		name = "basic-kit-robot",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {
			"None",
			"Base",
			"Pack",
			"Flock",
			"Fleet"
		},
		order = "as-600"
	},
	-- Veichle kit
	{
		type = "string-setting",
		name = "basic-kit-vehicle",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {
			"None",
			"Car",
			"Tank",
			"Train"
		},
		order = "as-700"
	},
	-- Landfill kit
	{
		type = "string-setting",
		name = "basic-kit-landfill",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {
			"None",
			"Small",
			"Medium",
			"Large",
			"Huge"
		},
		order = "as-800"
	},
	-- Logistic chest option
	{
		type = "bool-setting",
		name = "basic-kit-logistic-chests",
		setting_type = "runtime-global",
		default_value = false,
		order = "as-650"
	},
	-- Additional substation option
	{
		type = "bool-setting",
		name = "basic-kit-substations",
		setting_type = "runtime-global",
		default_value = false,
		order = "as-350"
	}
})

--[[
	,
	{
		-- Choose the exact equipment you wish to start with.
		type = "string-setting",
		name = "basic-kit-start-string",
		localised_name = "Choose Extra Equipment",
		localised_description = "Here, you can choose the equipment you would like to start with separating them out with commas and giving an amount you wish to have. Referrer to the example given in default value. You can also get some preset values from the mod's upload page.",
		setting_type = "runtime-global",
		allow_blank = true,
		default_value = "iron-plate:4,iron-axe:1,burner-mining-drill:1,stone-furnace:1,pistol:1,firearm-magazine:10",
		order = "as-990"
	}
]]