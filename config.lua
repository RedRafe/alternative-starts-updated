require "utils"

---------------------------------------------------------------------------
--                           INITIALIZATION                              --
---------------------------------------------------------------------------
AS = {}

-- Substation multiplier, default = 4
AS.multiplier = 4

-- Allow chests
AS.chests = 1

-- Vanilla configuratioins
AS.config = {
  ["basic-kit-mining"] = {
    ["None"] = {},
    ["Base"] = {
      {   1, "burner-mining-drill" },
      {   1, "stone-furnace" }
    },
    ["Light Industry"] = {
      {   2, "electric-mining-drill" },
      {   1, "medium-electric-pole" },
      {   5, "stone-furnace" }
    },
    ["Medium Industry"] = {
      {   4, "electric-mining-drill" },
      {   5, "medium-electric-pole" },
      {   4, "steel-furnace" }
    },
    ["Heavy Industry"] = {
      {  10, "electric-mining-drill" },
      {  10, "medium-electric-pole" },
      {  10, "steel-furnace" }
    },
    ["Tycoon"] = {
      {  19, "burner-mining-drill" },
      {  20, "electric-mining-drill" },
      {   4 * AS.multiplier, "substation" },
      {  20, "electric-furnace" }
    }
  },
  ["basic-kit-military"] = {
    ["None"] = {},
    ["Civilian"] = {
      {  10, "firearm-magazine"}
    },
    ["Soldier"] = {
      {   1, "submachine-gun" },
      {   1, "shotgun" },
      {  20, "piercing-rounds-magazine"},
      {  20, "piercing-shotgun-shell"}
    },
    ["Rambo"] = {
      {   1, "submachine-gun"},
      {   1, "flamethrower"},
      {   1, "combat-shotgun"},
      { 100, "uranium-rounds-magazine" },
      {  50, "flamethrower-ammo"},
      {  50, "piercing-shotgun-shell"}
    },
    ["Jedi"] = {
      {   1, "power-armor-mk2"},
      {   3, "fusion-reactor-equipment"},
      {   8, "energy-shield-mk2-equipment"},
      {  12, "personal-laser-defense-equipment" },
      {   5, "battery-mk2-equipment"},
      {   1, "spidertron"},
      {   3, "exoskeleton-equipment"}
    }
  },
  ["basic-kit-power"] = {
    ["None"] = {},
    ["Steam"] = {
      {   1, "offshore-pump"},
      {  10, "pipe"},
      {   1, "boiler"},
      {   1, "steam-engine"}
    },
    ["Advanced"] = {
      {   1, "offshore-pump"},
      {  10, "pipe"},
      {   1, "boiler"},
      {   1, "steam-engine"},
      {   6, "solar-panel" },
      {   3, "accumulator"},
      {   2 * AS.multiplier, "substation"}
    },
    ["Solar"] = {
      {  12, "solar-panel" },
      {   6, "accumulator"},
      {   4 * AS.multiplier, "substation"}
    },
    ["Solar Field"] = {
      {  50, "solar-panel" },
      {  20, "accumulator"},
      {   8 * AS.multiplier, "substation"}
    }
  },
  ["basic-kit-booster"] = {
    ["None"] = {},
    ["Resources"] = {
      {  50, "iron-plate" },
      {  50, "copper-plate"},
      {  50, "iron-gear-wheel"},
      {  20, "electronic-circuit"}
    },
    ["Power Armor"] = {
      {   1, "modular-armor" },
      {   1, "energy-shield-equipment" },
      {   1, "night-vision-equipment" },
      {   1, "battery-equipment" },
      {   7, "solar-panel-equipment"},
      {   1, "exoskeleton-equipment"}
    },
    ["Research Equipment"] = {
      {   1, "lab"},
      { 200, "automation-science-pack"}, --  TODO:timed technology?
      {  50, "logistic-science-pack"}
    },
    ["Power Armor & Resources"] = {
      {  50, "iron-plate" },
      {  50, "copper-plate"},
      {  50, "iron-gear-wheel"},
      {  20, "electronic-circuit"},
      {   1, "modular-armor" },
      {   1, "energy-shield-equipment" },
      {   1, "night-vision-equipment" },
      {   1, "battery-equipment" },
      {   7, "solar-panel-equipment"},
      {   1, "exoskeleton-equipment"}
    },
    ["All"] = {
      {  50, "iron-plate" },
      {  50, "copper-plate"},
      {  50, "iron-gear-wheel"},
      {  20, "electronic-circuit"},
      {   1, "modular-armor" },
      {   1, "energy-shield-equipment" },
      {   1, "night-vision-equipment" },
      {   1, "battery-equipment" },
      {   7, "solar-panel-equipment"},
      {   1, "exoskeleton-equipment"},
      {   1, "lab"},
      { 200, "automation-science-pack"},
      {  50, "logistic-science-pack" }
    }
  },
  ["basic-kit-modules"] = {
    ["None"] = {},
    ["Poker Speed"] = {
      {   4, "speed-module-3" }
    },
    ["Poker Productivity"] = {
      {   4, "productivity-module-3"}
    },
    ["Poker Efficiency"] = {
      {   4, "effectivity-module-3"}
    },
    ["Tris of Poker"] = {
      {   4, "speed-module-3" },
      {   4, "productivity-module-3"},
      {   4, "effectivity-module-3"}
    },
    ["Royal Scale"] = {
      {  16, "speed-module-3" },
      {  16, "productivity-module-3"},
      {  16, "effectivity-module-3"}
    }
  },
  ["basic-kit-robot"] = {
    ["None"] = {},
    ["Base"] = {
      {   1, "roboport" },
      {  10, "logistic-robot" },
      {  10, "construction-robot"},
      {   3 * AS.chests, "logistic-chest-passive-provider" },
      {   3 * AS.chests, "logistic-chest-storage" },
      {   1 * AS.chests, "logistic-chest-requester" }
    },
    ["Pack"] = {
      {   1, "roboport" },
      {  25, "logistic-robot" },
      {  25, "construction-robot"},
      {   6 * AS.chests, "logistic-chest-passive-provider" },
      {   6 * AS.chests, "logistic-chest-storage" },
      {   3 * AS.chests, "logistic-chest-requester" }
    },
    ["Flock"] = {
      {   2, "roboport" },
      {  50, "logistic-robot" },
      {  50, "construction-robot"},
      {  10 * AS.chests, "logistic-chest-passive-provider" },
      {  10 * AS.chests, "logistic-chest-storage" },
      {   5 * AS.chests, "logistic-chest-requester" }
    },
    ["Fleet"] = {
      {   4, "roboport" },
      { 100, "logistic-robot" },
      { 100, "construction-robot"},
      {  15 * AS.chests, "logistic-chest-passive-provider" },
      {  15 * AS.chests, "logistic-chest-storage" },
      {  10 * AS.chests, "logistic-chest-requester" },
      {   5 * AS.chests, "logistic-chest-active-provider" },
      {   5 * AS.chests, "logistic-chest-buffer" }
    }
  },
  ["basic-kit-vehicle"] = {
    ["None"] = {},
    ["Car"] = {
      {   1, "car" },
      {   5, "solid-fuel" }
    },
    ["Tank"] = {
      {   1, "tank" },
      {  10, "solid-fuel" }
    },
    ["Train"] = {
      {   1, "locomotive" },
      {   2, "cargo-wagon" },
      {   1, "fluid-wagon" },
      {  50, "solid-fuel" },
      { 300, "rail" },
      {   2, "train-stop" },
      {  20, "rail-signal" },
      {  20, "rail-chain-signal" }
    }
  },
  ["basic-kit-landfill"] = {
    ["None"] = {},
    ["Small"] = {
      {  50, "landfill" }
    },
    ["Medium"] = {
      { 100, "landfill" }
    },
    ["Large"] = {
      { 500, "landfill" }
    },
    ["Huge"] = {
      { 1000, "landfill" }
    }
  }
}

---------------------------------------------------------------------------
--                            COMPATIBILITY                              --
---------------------------------------------------------------------------

-- Bob's Modpack
if script.active_mods["boblogistics"] then
  RemoveAllItemOccurrences(AS.config, "roboport")

  local dir = AS.config["basic-kit-robot"]
  local cd = nil

  cd = dir["Base"]
  AddItem(cd, { 1, "bob-robochest" })
  AddItem(cd, { 1, "bob-robo-charge-port" })
  AddItem(cd, { 1, "bob-logistic-zone-interface"})
  AddItem(cd, { 1, "bob-logistic-zone-expander-2"})

  cd = dir["Pack"]
  AddItem(cd, { 1, "bob-robochest" })
  AddItem(cd, { 2, "bob-robo-charge-port" })
  AddItem(cd, { 1, "bob-logistic-zone-interface"})
  AddItem(cd, { 1, "bob-logistic-zone-expander"})

  cd = dir["Flock"]
  AddItem(cd, { 1, "bob-robochest" })
  AddItem(cd, { 3, "bob-robo-charge-port" })
  AddItem(cd, { 1, "bob-logistic-zone-interface"})
  AddItem(cd, { 2, "bob-logistic-zone-expander-3"})

  cd = dir["Fleet"]
  AddItem(cd, { 2, "bob-robochest" })
  AddItem(cd, { 4, "bob-robo-charge-port" })
  AddItem(cd, { 2, "bob-robo-charge-port-large" })
  AddItem(cd, { 1, "bob-logistic-zone-interface"})
  AddItem(cd, { 2, "bob-logistic-zone-expander-4"})
end

---------------------------------------------------------------------------
