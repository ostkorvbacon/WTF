
OmniCCDB = {
	["profileKeys"] = {
		["Blóodraven - The Maelstrom"] = "Default",
	},
	["global"] = {
		["addonVersion"] = "9.0.4",
		["dbVersion"] = 5,
	},
	["profiles"] = {
		["Default"] = {
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["minutes"] = {
						},
						["soon"] = {
						},
					},
				},
			},
			["rules"] = {
				{
					["enabled"] = false,
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "Auras",
					["id"] = "auras",
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "Unit Nameplates",
					["id"] = "plates",
				}, -- [2]
				{
					["enabled"] = false,
					["patterns"] = {
						"ActionButton", -- [1]
					},
					["name"] = "ActionBars",
					["id"] = "actions",
				}, -- [3]
			},
		},
	},
}
OmniCC4Config = nil
