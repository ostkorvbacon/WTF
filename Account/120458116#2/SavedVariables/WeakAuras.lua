
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
		["Darkmoon Deck: Indomitable"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"311444", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"311492", -- [1]
							"311493", -- [2]
							"311494", -- [3]
							"311495", -- [4]
							"311496", -- [5]
							"311497", -- [6]
							"311498", -- [7]
							"311499", -- [8]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 173096,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip1",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 173096,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "Ep5GK)aJ6JS",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3717264",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Darkmoon Deck: Indomitable",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "311499",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "311444",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Empyreal Ordnance"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345541", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345540", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["useIgnoreName"] = false,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["custom_hide"] = "timed",
						["ownOnly"] = true,
						["events"] = "",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["custom_type"] = "event",
						["useExactSpellId"] = true,
						["duration"] = "",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_itemName"] = true,
						["unevent"] = "auto",
						["auraspellids"] = {
							"345540", -- [1]
						},
						["spellIds"] = {
						},
						["useName"] = false,
						["check"] = "event",
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 180117,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = true,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["type"] = "subborder",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						0.070588235294118, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 180117,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "cXEIzE)RCqh",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3528288",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Empyreal Ordnance",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.border_visible",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.2.text_visible",
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Bladedancer's Armor Kit"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"342423", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178862,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178862,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "8)zS6f0qO98",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1396975",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Bladedancer's Armor Kit",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Spiritual Alchemy Stone #2"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"299790", -- [1]
							"299789", -- [2]
							"299788", -- [3]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 175943,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 175943,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "H)RJ0LBU(s0",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3566864",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Spiritual Alchemy Stone #2",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Pulsating Stoneheart"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"343399", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178825,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178825,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "M1GJK6GT99K",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "134084",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Pulsating Stoneheart",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Sinful Gladiator's Badge of Ferocity"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345228", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 175921,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 175921,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "HnGQVntXsWy",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "135884",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Sinful Gladiator's Badge of Ferocity",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Overflowing Ember Mirror"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"336465", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 181359,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip1",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = true,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 181359,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "3w62qwFBvRj",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1586383",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Overflowing Ember Mirror",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Glyph of Assimilation"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345319", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = false,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "target",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"345319", -- [1]
						},
						["check"] = "event",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345319", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = false,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "player",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"345320", -- [1]
						},
						["check"] = "event",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 184021,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["type"] = "subborder",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						0, -- [2]
						0.015686274509804, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184021,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "rw5(UzktSnx",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1589500",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Glyph of Assimilation",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.border_visible",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Murmurs in the Dark"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"339342", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = false,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"339342", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 182454,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "yO2xCKQeNHP",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "979574",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Murmurs in the Dark",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Sunblood Amethyst"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["itemName"] = 183650,
						["spellId"] = "343396",
						["auranames"] = {
							"343396", -- [1]
						},
						["names"] = {
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["unit"] = "player",
						["custom"] = "function(event, ...)\n    local spellID = select(12, ...)\n    local sourceGUID = select(4, ...)\n    if spellID == 343396\n    and sourceGUID == WeakAuras.myGUID\n    and not WeakAuras.GetActiveTriggers(aura_env.id)[1] then\n        return true\n    end\nend",
						["auraspellids"] = {
							"343396", -- [1]
						},
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["use_sourceFlags"] = false,
						["useName"] = false,
						["custom_hide"] = "timed",
						["custom_type"] = "event",
						["type"] = "custom",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["duration"] = "15",
						["fetchTooltip"] = true,
						["event"] = "Combat Log",
						["unevent"] = "timed",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellId"] = true,
						["events"] = "CLEU:SPELL_CAST_SUCCESS",
						["use_sourceUnit"] = true,
						["check"] = "event",
						["use_genericShowOn"] = true,
						["sourceUnit"] = "player",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178826,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"343396", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["matchesShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = false,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "player",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"343396", -- [1]
						},
						["check"] = "event",
						["duration"] = "",
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[1] or t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178826,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "FTXvN3gE6W)",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "133254",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Sunblood Amethyst",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "sub.3.glowColor",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.3.useGlowColor",
						}, -- [3]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Sinful Gladiator's Emblem"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345231", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178447,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178447,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "xTRJxho7AlP",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "132344",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Sinful Gladiator's Emblem",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Bargast's Leash"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"344384", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = false,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "player",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"344388", -- [1]
						},
						["check"] = "event",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 184017,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_text_format_1.tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_anchorXOffset"] = 6,
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_visible"] = true,
					["text_text_format_1.tooltip2_format"] = "BigNumber",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["type"] = "subtext",
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_shadowXOffset"] = 0,
					["text_text_format_tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184017,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "IZuJ3206SkL",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1392562",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Bargast's Leash",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Spiritual Alchemy Stone #4"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"299790", -- [1]
							"299789", -- [2]
							"299788", -- [3]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 175942,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 175942,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "Vn3THpzrGq1",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3566863",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Spiritual Alchemy Stone #4",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Health Target Group"] = {
			["controlledChildren"] = {
				"Health Target", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 22.99993896484375,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/BAYUr5jsM/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 40,
			["selfPoint"] = "BOTTOMLEFT",
			["version"] = 1,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.0",
			["tocversion"] = 90001,
			["id"] = "Health Target Group",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "nrVhVtuTagb",
			["borderInset"] = 1,
			["xOffset"] = -562.9995727539062,
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Flame of Battle"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"336841", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 181501,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 181501,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "xoS(eJjzjw0",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3536188",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Flame of Battle",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Glimmerdust's Grand Design"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 182451,
						["auranames"] = {
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HELPFUL",
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["unevent"] = "auto",
						["useExactSpellId"] = true,
						["unit"] = "player",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_itemName"] = true,
						["auraspellids"] = {
							"339517", -- [1]
							"339516", -- [2]
						},
						["custom_type"] = "event",
						["events"] = "",
						["useName"] = false,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnActive",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 182451,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_text_format_1.tooptip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_2.tooptip1_format"] = "none",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["type"] = "subtext",
					["text_anchorXOffset"] = 6,
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_text_format_tooltip1_format"] = "BigNumber",
					["text_text_format_1.tooptip1_format"] = "BigNumber",
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_visible"] = false,
					["text_shadowXOffset"] = 0,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 182451,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "uP0jShyhCq0",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3536173",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Glimmerdust's Grand Design",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "339516",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Dreadfire Vessel"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/sltrinkets/12",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 184030,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 6,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = -4,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_p_time_precision"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184030,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["information"] = {
			},
			["displayIcon"] = "971287",
			["authorOptions"] = {
			},
			["auto"] = false,
			["width"] = 48,
			["zoom"] = 0.3,
			["semver"] = "1.0.11",
			["tocversion"] = 90002,
			["id"] = "Dreadfire Vessel",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["uid"] = "KGtEz1vgRCS",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["Infernal Cascade"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -13.999755859375,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showOnActive",
						["spellIds"] = {
						},
						["auranames"] = {
							"336832", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_class"] = true,
				["use_spec"] = true,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = 40.00006103515625,
			["selfPoint"] = "CENTER",
			["cooldown"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["alpha"] = 1,
			["id"] = "Infernal Cascade",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 64,
			["config"] = {
			},
			["uid"] = "M4JJkMvIAfW",
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Effects - Raid"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.65098039215686, -- [2]
				0.12156862745098, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "\nfunction()\n    local triggers = WeakAuras.GetActiveTriggers(aura_env.id);\n    if triggers[2] then\n        return \"HEAL\";\n    elseif triggers[3] then\n        return \"MANA\";\n    elseif triggers[4] then\n        return \"BREAK CC\"\n    elseif triggers[5] then\n        return \"EXECUTE\";\n    else\n        return \"STATS\";\n    end\nend",
			["yOffset"] = -50,
			["displayText_format_p_time_dynamic"] = false,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/GC3CohZ8H/7",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 179350,
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnReady",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_ignoreDead"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["percenthealth_operator"] = "<=",
						["percenthealth"] = "30",
						["event"] = "Health",
						["unit"] = "raid",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_ignoreDisconnected"] = true,
						["use_absorbMode"] = true,
						["spellName"] = 0,
						["use_percenthealth"] = true,
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "raid",
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["role"] = "HEALER",
						["percenthealth_operator"] = "<=",
						["duration"] = "1",
						["use_track"] = true,
						["unit"] = "raid",
						["use_powertype"] = true,
						["spellName"] = 0,
						["use_ignoreDead"] = true,
						["type"] = "status",
						["event"] = "Power",
						["unevent"] = "auto",
						["use_role"] = true,
						["percenthealth"] = "30",
						["use_requirePowerType"] = true,
						["use_percentpower"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_ignoreDisconnected"] = true,
						["debuffType"] = "HELPFUL",
						["powertype"] = 0,
						["use_percenthealth"] = true,
						["percentpower"] = "20",
						["percentpower_operator"] = "<=",
					},
					["untrigger"] = {
						["unit"] = "raid",
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["duration"] = "1",
						["role"] = "HEALER",
						["percenthealth_operator"] = "<=",
						["use_track"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_powertype"] = true,
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["type"] = "status",
						["use_ignoreDead"] = true,
						["unevent"] = "auto",
						["use_role"] = true,
						["percenthealth"] = "30",
						["event"] = "Crowd Controlled",
						["use_percentpower"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_ignoreDisconnected"] = true,
						["use_controlled"] = true,
						["powertype"] = 0,
						["use_percenthealth"] = true,
						["percentpower"] = "20",
						["percentpower_operator"] = "<=",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [4]
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "status",
						["use_health"] = true,
						["health_operator"] = ">",
						["percenthealth_operator"] = "<=",
						["percenthealth"] = "20",
						["event"] = "Health",
						["unevent"] = "auto",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["health"] = "0",
						["use_absorbMode"] = true,
						["unit"] = "target",
						["use_percenthealth"] = true,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1];\nend",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 40,
			["wordWrap"] = "WordWrap",
			["font"] = "Expressway",
			["version"] = 7,
			["subRegions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
						["raid"] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["use_itemequiped"] = true,
				["use_vehicleUi"] = false,
				["itemequiped"] = 179350,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["shadowXOffset"] = 1,
			["authorOptions"] = {
			},
			["regionType"] = "text",
			["selfPoint"] = "BOTTOM",
			["parent"] = "Inscrutable Quantum Device 2",
			["fixedWidth"] = 200,
			["displayText_format_p_time_precision"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["semver"] = "1.0.6",
			["uid"] = "IuqK3YKO4Cb",
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Effects - Raid",
			["shadowYOffset"] = -1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["automaticWidth"] = "Auto",
			["anchorPoint"] = "CENTER",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["preferToUpdate"] = false,
		},
		["Effects - Group"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.65098039215686, -- [2]
				0.12156862745098, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "\nfunction()\n    local triggers = WeakAuras.GetActiveTriggers(aura_env.id);\n    if triggers[2] then\n        return \"HEAL\";\n    elseif triggers[3] then\n        return \"MANA\";\n    elseif triggers[4] then\n        return \"BREAK CC\"\n    elseif triggers[5] then\n        return \"EXECUTE\";\n    else\n        return \"STATS\";\n    end\nend",
			["yOffset"] = -50,
			["displayText_format_p_time_dynamic"] = false,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/GC3CohZ8H/7",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 179350,
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnReady",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_ignoreDead"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["percenthealth_operator"] = "<=",
						["percenthealth"] = "30",
						["event"] = "Health",
						["unit"] = "party",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_ignoreDisconnected"] = true,
						["use_absorbMode"] = true,
						["spellName"] = 0,
						["use_percenthealth"] = true,
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "party",
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_ignoreSelf"] = false,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["role"] = "HEALER",
						["percenthealth_operator"] = "<=",
						["duration"] = "1",
						["use_track"] = true,
						["unit"] = "party",
						["use_powertype"] = true,
						["spellName"] = 0,
						["use_ignoreDead"] = true,
						["type"] = "status",
						["event"] = "Power",
						["unevent"] = "auto",
						["use_role"] = true,
						["percenthealth"] = "30",
						["use_requirePowerType"] = true,
						["use_percentpower"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_ignoreDisconnected"] = true,
						["debuffType"] = "HELPFUL",
						["powertype"] = 0,
						["use_percenthealth"] = true,
						["percentpower"] = "20",
						["percentpower_operator"] = "<=",
					},
					["untrigger"] = {
						["unit"] = "party",
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["duration"] = "1",
						["role"] = "HEALER",
						["percenthealth_operator"] = "<=",
						["use_track"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_powertype"] = true,
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["type"] = "status",
						["use_ignoreDead"] = true,
						["unevent"] = "auto",
						["use_role"] = true,
						["percenthealth"] = "30",
						["event"] = "Crowd Controlled",
						["use_percentpower"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_ignoreDisconnected"] = true,
						["use_controlled"] = true,
						["powertype"] = 0,
						["use_percenthealth"] = true,
						["percentpower"] = "20",
						["percentpower_operator"] = "<=",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [4]
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "status",
						["use_health"] = true,
						["health_operator"] = ">",
						["percenthealth_operator"] = "<=",
						["percenthealth"] = "20",
						["event"] = "Health",
						["unevent"] = "auto",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["health"] = "0",
						["use_absorbMode"] = true,
						["unit"] = "target",
						["use_percenthealth"] = true,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1];\nend",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 40,
			["wordWrap"] = "WordWrap",
			["font"] = "Expressway",
			["version"] = 7,
			["subRegions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["solo"] = true,
						["group"] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = false,
				["use_itemequiped"] = true,
				["use_vehicleUi"] = false,
				["itemequiped"] = 179350,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["shadowXOffset"] = 1,
			["authorOptions"] = {
			},
			["regionType"] = "text",
			["selfPoint"] = "BOTTOM",
			["parent"] = "Inscrutable Quantum Device 2",
			["fixedWidth"] = 200,
			["displayText_format_p_time_precision"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["semver"] = "1.0.6",
			["uid"] = "5XvAos8yoG3",
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Effects - Group",
			["shadowYOffset"] = -1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["automaticWidth"] = "Auto",
			["anchorPoint"] = "CENTER",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["preferToUpdate"] = false,
		},
		["Combustion 2"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["xOffset"] = -0.0001220703125,
			["yOffset"] = -72.99996948242188,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showOnActive",
						["spellIds"] = {
						},
						["auranames"] = {
							"190319", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 40,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_fontType"] = "None",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [3]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spec"] = true,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["icon"] = false,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["sparkOffsetX"] = 0,
			["icon_side"] = "RIGHT",
			["authorOptions"] = {
			},
			["sparkHeight"] = 30,
			["texture"] = "Blizzard",
			["sparkHidden"] = "NEVER",
			["zoom"] = 0,
			["spark"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Combustion 2",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 200,
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["uid"] = "HeFnYnNNq4Z",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Inscrutable Quantum Device"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["customText"] = "\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/sltrinkets/12",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 184058,
						["auranames"] = {
							"330368", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = false,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"330380", -- [1]
							"330367", -- [2]
							"330366", -- [3]
							"330368", -- [4]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 179350,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_1.tooltip_big_number_format"] = "AbbreviateNumbers",
					["type"] = "subtext",
					["text_anchorXOffset"] = 6,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = -4,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_text_format_1.tooltip_format"] = "BigNumber",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "none",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["information"] = {
			},
			["displayIcon"] = "2000857",
			["authorOptions"] = {
			},
			["auto"] = false,
			["width"] = 48,
			["zoom"] = 0.3,
			["semver"] = "1.0.11",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["uid"] = "hRj5DYgC9Lb",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["Health Target"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 255.00122070313,
			["preferToUpdate"] = false,
			["yOffset"] = -257.99993896484,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/BAYUr5jsM/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_namerealm"] = false,
						["type"] = "status",
						["use_health"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Health",
						["use_unit"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["unit"] = "target",
						["use_absorbMode"] = true,
						["use_percenthealth"] = true,
						["use_alwaystrue"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 40,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0.10196078431373, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["alpha"] = 1,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%1.percenthealth%%",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_1.percenthealth_format"] = "Number",
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowXOffset"] = 1,
					["text_shadowYOffset"] = -1,
					["text_fontType"] = "None",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_p_format"] = "timed",
					["text_text_format_1.percenthealth_decimal_precision"] = 1,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_1.percenthealth_format"] = "none",
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text_format_p_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_1.percemthealth_format"] = "none",
					["text_shadowYOffset"] = -1,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_text"] = "%1.percenthealth%%",
					["text_fontSize"] = 21,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
			},
			["height"] = 39.999824523926,
			["parent"] = "Health Target Group",
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["icon"] = false,
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.0",
			["icon_side"] = "RIGHT",
			["anchorFrameType"] = "SCREEN",
			["sparkHeight"] = 30,
			["texture"] = "Details Flat",
			["sparkHidden"] = "NEVER",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 90001,
			["id"] = "Health Target",
			["spark"] = false,
			["frameStrata"] = 1,
			["width"] = 262.00234985352,
			["zoom"] = 0,
			["uid"] = "HumbDC3tmr4",
			["inverse"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.70481866598129, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
			},
			["version"] = 1,
		},
		["BuffIcon"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "\nfunction()\n    local triggers = WeakAuras.GetActiveTriggers(aura_env.id);\n    if triggers[1] then\n        return \"Mastery\";\n    elseif triggers[2] then\n        return \"Haste\";\n    elseif triggers[3] then\n        return \"Versa\"\n    elseif triggers[4] then\n        return \"Crit\";\n    else\n        return \"\";\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 179350,
						["auranames"] = {
							"330380", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["use_absorbMode"] = true,
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"330380", -- [1]
						},
						["unevent"] = "auto",
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = false,
						["unit"] = "player",
						["use_track"] = true,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 179350,
						["auranames"] = {
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["use_absorbMode"] = true,
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"330368", -- [1]
						},
						["unevent"] = "auto",
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = false,
						["unit"] = "player",
						["use_track"] = true,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 179350,
						["auranames"] = {
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["use_absorbMode"] = true,
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"330367", -- [1]
						},
						["unevent"] = "auto",
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = false,
						["unit"] = "player",
						["use_track"] = true,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				{
					["trigger"] = {
						["itemName"] = 179350,
						["auranames"] = {
							"330366", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["use_absorbMode"] = true,
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"330366", -- [1]
						},
						["unevent"] = "auto",
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = false,
						["unit"] = "player",
						["use_track"] = true,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%c",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "BOTTOM",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						0.60392156862745, -- [1]
						1, -- [2]
						0.85882352941176, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOM",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 2,
					["glowLines"] = 10,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["itemequiped"] = 179350,
				["spec"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["parent"] = "Inscrutable Quantum Device 2",
			["url"] = "https://wago.io/GC3CohZ8H/7",
			["authorOptions"] = {
			},
			["information"] = {
			},
			["zoom"] = 0.3,
			["uid"] = "tMjcINxQjFo",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.6",
			["tocversion"] = 90002,
			["id"] = "BuffIcon",
			["width"] = 64,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["Sinful Aspirant's Insignia of Alacrity"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345230", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178298,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "mYyZ6rDkGKb",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "134501",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Sinful Aspirant's Insignia of Alacrity",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["value"] = 1,
								["variable"] = "onCooldown",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Shadowlands Trinkets (PVE+PVP)"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"Inscrutable Quantum Device", -- [1]
				"Bottled Flayedwing Toxin", -- [2]
				"Beating Abomination Core", -- [3]
				"Darkmoon Deck: Indomitable", -- [4]
				"Dreadfire Vessel", -- [5]
				"Tuft of Smoldering Plumage", -- [6]
				"Spare Meat Hook", -- [7]
				"Darkmoon Deck: Voracity", -- [8]
				"Darkmoon Deck: Putrescence", -- [9]
				"Overwhelming Power Crystal", -- [10]
				"Mistcaller Ocarina", -- [11]
				"Sunblood Amethyst", -- [12]
				"Sinful Gladiator's Badge of Ferocity", -- [13]
				"Memory of Past Sins", -- [14]
				"Sinful Aspirant's Medallion", -- [15]
				"Unbound Changeling", -- [16]
				"Macabre Sheet Music", -- [17]
				"Sanguine Vintage", -- [18]
				"Siphoning Phylactery Shard", -- [19]
				"Flame of Battle", -- [20]
				"Sinful Gladiator's Medallion", -- [21]
				"Slimy Consumptive Organ", -- [22]
				"Gluttonous Spike", -- [23]
				"Pulsating Stoneheart", -- [24]
				"Shadowgrasp Totem", -- [25]
				"Bladedancer's Armor Kit", -- [26]
				"Consumptive Infusion", -- [27]
				"Anima Field Emitter", -- [28]
				"Wakener's Frond", -- [29]
				"Manabound Mirror", -- [30]
				"Soulletting Ruby", -- [31]
				"Vial of Caustic Liquid", -- [32]
				"Soul Igniter", -- [33]
				"Overflowing Anima Cage", -- [34]
				"Vial of Spectral Essence", -- [35]
				"Lingering Sunmote", -- [36]
				"Bargast's Leash", -- [37]
				"Sinful Gladiator's Emblem", -- [38]
				"Glyph of Assimilation", -- [39]
				"Overcharged Anima Battery", -- [40]
				"Brimming Ember Shard", -- [41]
				"Sinful Aspirant's Insignia of Alacrity", -- [42]
				"Empyreal Ordnance", -- [43]
				"Sinful Aspirant's Emblem", -- [44]
				"Sinful Aspirant's Badge of Ferocity", -- [45]
				"Overflowing Ember Mirror", -- [46]
				"Spiritual Alchemy Stone #2", -- [47]
				"Gladiator's Rapid Medallion", -- [48]
				"Sinful Gladiator's Insignia of Alacrity", -- [49]
				"Tablet of Despair", -- [50]
				"Spiritual Alchemy Stone #3", -- [51]
				"Spiritual Alchemy Stone #4", -- [52]
				"Murmurs in the Dark", -- [53]
				"Book-Borrower Identification", -- [54]
				"Primalist's Kelpling", -- [55]
				"Misfiring Centurion Controller", -- [56]
				"Stolen Maw Badge", -- [57]
				"Maldraxxian Warhorn", -- [58]
				"Glimmerdust's Grand Design", -- [59]
				"Glowing Endmire Stinger", -- [60]
				"Everchill Brambles", -- [61]
				"Dreamer's Mending", -- [62]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -180.111083984375,
			["anchorPoint"] = "CENTER",
			["fullCircle"] = true,
			["space"] = 2,
			["url"] = "https://wago.io/sltrinkets/12",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["useLimit"] = false,
			["align"] = "CENTER",
			["stagger"] = 0,
			["version"] = 12,
			["subRegions"] = {
			},
			["config"] = {
			},
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["grow"] = "RIGHT",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["limit"] = 5,
			["animate"] = false,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["scale"] = 1,
			["rotation"] = 0,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["xOffset"] = -438.444580078125,
			["selfPoint"] = "LEFT",
			["constantFactor"] = "RADIUS",
			["uid"] = "cf0i2npqSZX",
			["borderOffset"] = 4,
			["semver"] = "1.0.11",
			["tocversion"] = 90002,
			["id"] = "Shadowlands Trinkets (PVE+PVP)",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["rowSpace"] = 1,
			["borderInset"] = 1,
			["internalVersion"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["gridType"] = "RD",
		},
		["Spare Meat Hook"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345548", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = true,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "target",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"299790", -- [1]
						},
						["check"] = "event",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178751,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["range_operator"] = ">=",
						["unevent"] = "auto",
						["genericShowOn"] = "showOnCooldown",
						["duration"] = "1",
						["event"] = "Range Check",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["use_range"] = false,
						["unit"] = "target",
						["range"] = "",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] or t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["type"] = "subborder",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						0.062745098039216, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%3.minRange y",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_text_format_3.minRangey_format"] = "none",
					["text_anchorXOffset"] = 6,
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_visible"] = false,
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["type"] = "subtext",
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_shadowXOffset"] = 0,
					["text_text_format_3.minRange_format"] = "none",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178751,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "tElf5CE4SsL",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1379246",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Spare Meat Hook",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.border_visible",
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Wakener's Frond"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"336588", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 181457,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 181457,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "DM)Q2EVWpl9",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3536178",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Wakener's Frond",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Sinful Aspirant's Medallion"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 184052,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184052,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "gqr1M(HED8I",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1322720",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Sinful Aspirant's Medallion",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Vial of Caustic Liquid"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345805", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = false,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "target",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"329737", -- [1]
						},
						["check"] = "event",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip1",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["type"] = "subborder",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						0.007843137254902, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 181503,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "UIBFZ5qza(E",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "134799",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Vial of Caustic Liquid",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Tablet of Despair"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345805", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = false,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "target",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"336182", -- [1]
						},
						["check"] = "event",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["itemName"] = 175732,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["event"] = "Cooldown Progress (Item)",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip1",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["type"] = "subborder",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						0.007843137254902, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 175732,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "r3m8IDJYMem",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "134465",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Tablet of Despair",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.border_visible",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Inscrutable Quantum Device 2"] = {
			["controlledChildren"] = {
				"Quantum Device", -- [1]
				"BuffIcon", -- [2]
				"Effects - Group", -- [3]
				"Effects - Raid", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -371.0500030517578,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/GC3CohZ8H/7",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["version"] = 7,
			["subRegions"] = {
			},
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.6",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device 2",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -420.3426513671875,
			["uid"] = "Wx1kRS1be31",
			["selfPoint"] = "CENTER",
			["borderInset"] = 1,
			["conditions"] = {
			},
			["information"] = {
			},
			["config"] = {
			},
		},
		["Gluttonous Spike"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = false,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"344154", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184023,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "d2FHmA5bdS0",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "839980",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Gluttonous Spike",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Misfiring Centurion Controller"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"339342", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["useIgnoreName"] = false,
						["useRem"] = false,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["events"] = "",
						["ignoreAuraNames"] = {
							"268522", -- [1]
						},
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = false,
						["custom_type"] = "event",
						["auraspellids"] = {
							"344118", -- [1]
						},
						["duration"] = "",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["check"] = "event",
						["debuffType"] = "HELPFUL",
						["use_absorbMode"] = true,
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 173349,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "lV24kR8h2qP",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1405812",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Misfiring Centurion Controller",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Unbound Changeling"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = false,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"330131", -- [1]
							"330729", -- [2]
							"330730", -- [3]
							"330764", -- [4]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178708,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "jtyOXC1klho",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = 838550,
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Unbound Changeling",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Mistcaller Ocarina"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"330067", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = false,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"330067", -- [1]
							"332301", -- [2]
							"332299", -- [3]
							"332300", -- [4]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178715,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"330067", -- [1]
							"332300", -- [2]
							"332301", -- [3]
							"332299", -- [4]
						},
						["ownOnly"] = true,
						["unit"] = "group",
						["debuffType"] = "HELPFUL",
						["group_count"] = "0",
						["useGroup_count"] = false,
						["useExactSpellId"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[1] or t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%3.unitCount",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_3.unitCount_format"] = "none",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["type"] = "subtext",
					["text_anchorXOffset"] = 6,
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_p_format"] = "timed",
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178715,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "d8ANIbehXBW",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1716865",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Mistcaller Ocarina",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Everchill Brambles"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345805", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = false,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "target",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"339301", -- [1]
						},
						["check"] = "event",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["type"] = "subborder",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						0.007843137254902, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = true,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 182452,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "FbpppyYzZOP",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "134196",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Everchill Brambles",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Dreamer's Mending"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"339736", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HARMFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = true,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 182455,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "golnmwQv7qA",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "134157",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Dreamer's Mending",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Darkmoon Deck: Voracity"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"311491", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"311483", -- [1]
							"311484", -- [2]
							"311485", -- [3]
							"311486", -- [4]
							"311487", -- [5]
							"311488", -- [6]
							"311489", -- [7]
							"311490", -- [8]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 173087,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip1",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 173087,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "kvGrwzO)2nu",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3717264",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Darkmoon Deck: Voracity",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "311490",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Anima Field Emitter"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["spellId"] = "345535",
						["auranames"] = {
						},
						["use_absorbMode"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["events"] = "CLEU:SPELL_CAST_SUCCESS",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["custom_hide"] = "timed",
						["useExactSpellId"] = false,
						["type"] = "custom",
						["use_itemName"] = true,
						["custom_type"] = "event",
						["duration"] = "8",
						["fetchTooltip"] = true,
						["event"] = "Combat Log",
						["unevent"] = "timed",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellId"] = true,
						["custom"] = "function(event, ...)\n    local spellID = select(12, ...)\n    local sourceGUID = select(4, ...)\n    if spellID == 345535\n    and sourceGUID == WeakAuras.myGUID\n    and not WeakAuras.GetActiveTriggers(aura_env.id)[1] then\n        return true\n    end\nend",
						["use_sourceUnit"] = true,
						["check"] = "event",
						["use_unit"] = true,
						["sourceUnit"] = "player",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 183650,
						["spellId"] = "",
						["auranames"] = {
							"345535", -- [1]
						},
						["use_genericShowOn"] = true,
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["auraspellids"] = {
							"345535", -- [1]
						},
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["custom_hide"] = "timed",
						["unevent"] = "timed",
						["type"] = "aura2",
						["use_itemName"] = true,
						["custom_type"] = "event",
						["duration"] = "",
						["fetchTooltip"] = true,
						["event"] = "Combat Log",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useExactSpellId"] = true,
						["use_spellId"] = false,
						["events"] = "",
						["use_sourceUnit"] = false,
						["check"] = "event",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 180118,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "Ccuj0OcYDo4",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3536198",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Anima Field Emitter",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Overwhelming Power Crystal"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"329831", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = false,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"329831", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 179342,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 179342,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "2PCLbbfW881",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1033908",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Overwhelming Power Crystal",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Soul Igniter"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345211", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 184019,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184019,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "qxAw6LhCP6u",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3536195",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Soul Igniter",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Lingering Sunmote"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["spellId"] = "342432",
						["auranames"] = {
							"343399", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["duration"] = "12",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["events"] = "",
						["type"] = "event",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useName"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["use_itemName"] = true,
						["fetchTooltip"] = true,
						["event"] = "Combat Log",
						["useExactSpellId"] = false,
						["custom_type"] = "event",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178850,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["useName"] = false,
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
							"342435", -- [1]
						},
						["useExactSpellId"] = true,
						["fetchTooltip"] = true,
						["type"] = "aura2",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[1] or t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%3.tooltip1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["text_text_format_3.tooltip1_format"] = "BigNumber",
					["rotateText"] = "NONE",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_3.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["type"] = "subtext",
					["text_anchorXOffset"] = 6,
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_visible"] = true,
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178850,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "X9fOaZtiB)K",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "132842",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Lingering Sunmote",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Vial of Spectral Essence"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345695", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = true,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "target",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"299790", -- [1]
						},
						["check"] = "event",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178810,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["type"] = "subborder",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						0, -- [2]
						0.019607843137255, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178810,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "fAhwBHJQns1",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3536193",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Vial of Spectral Essence",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.border_visible",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Glowing Endmire Stinger"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345805", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = false,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "target",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"329127", -- [1]
						},
						["check"] = "event",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip1",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["type"] = "subborder",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						0.007843137254902, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 179927,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "(8H4mHf2kS5",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3007437",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Glowing Endmire Stinger",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Firestorm"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -17.9998779296875,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showOnActive",
						["spellIds"] = {
						},
						["auranames"] = {
							"333100", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_class"] = true,
				["use_spec"] = true,
				["item_bonusid_equipped"] = "6932",
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["use_item_bonusid_equipped"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["xOffset"] = -39.9998779296875,
			["cooldown"] = true,
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["id"] = "Firestorm",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["config"] = {
			},
			["uid"] = "EufrROLm6cD",
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Slimy Consumptive Organ"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"334511", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178770,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = true,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178770,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "bbre2TKTgo1",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "134338",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Slimy Consumptive Organ",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "stacks",
						["value"] = "9",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Consumptive Infusion"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/sltrinkets/12",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"344225", -- [1]
						},
						["duration"] = "3",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["custom_type"] = "stateupdate",
						["subeventPrefix"] = "SPELL",
						["fetchTooltip"] = true,
						["event"] = "Health",
						["custom_hide"] = "timed",
						["matchesShowOn"] = "showOnActive",
						["spellIds"] = {
						},
						["events"] = "",
						["names"] = {
						},
						["check"] = "event",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["customVariables"] = "",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"344229", -- [1]
						},
						["duration"] = "3",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["custom_type"] = "stateupdate",
						["subeventPrefix"] = "SPELL",
						["fetchTooltip"] = true,
						["event"] = "Health",
						["custom_hide"] = "timed",
						["matchesShowOn"] = "showOnActive",
						["spellIds"] = {
						},
						["events"] = "",
						["names"] = {
						},
						["check"] = "event",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["customVariables"] = "",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 6,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = -4,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_p_time_precision"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184022,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["information"] = {
			},
			["displayIcon"] = "3536203",
			["authorOptions"] = {
			},
			["auto"] = false,
			["width"] = 48,
			["zoom"] = 0.3,
			["semver"] = "1.0.11",
			["tocversion"] = 90002,
			["id"] = "Consumptive Infusion",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["uid"] = "LUFuEJI4lex",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["Quantum Device"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/GC3CohZ8H/7",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 179350,
						["auranames"] = {
							"Inscrutable Quantum Device", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["matchesShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 7,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["itemequiped"] = 179350,
				["spec"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["parent"] = "Inscrutable Quantum Device 2",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "QQhLWqyABrp",
			["zoom"] = 0.3,
			["semver"] = "1.0.6",
			["tocversion"] = 90002,
			["id"] = "Quantum Device",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["Sinful Aspirant's Emblem"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345231", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178334,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178334,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "t)TN7Jf6z6p",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "132344",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Sinful Aspirant's Emblem",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Primalist's Kelpling"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"339342", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["useIgnoreName"] = false,
						["useRem"] = false,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["events"] = "",
						["ignoreAuraNames"] = {
							"268522", -- [1]
						},
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = false,
						["custom_type"] = "event",
						["auraspellids"] = {
							"268522", -- [1]
						},
						["duration"] = "",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["check"] = "event",
						["debuffType"] = "HELPFUL",
						["use_absorbMode"] = true,
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 175726,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "hCjlBra2ptl",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "960692",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Primalist's Kelpling",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Sinful Gladiator's Medallion"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 181333,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 181333,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "Cc9oxDRXKSb",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1322720",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Sinful Gladiator's Medallion",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Overflowing Anima Cage"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["spellId"] = "343385",
						["auranames"] = {
							"343399", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["duration"] = "15",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["events"] = "",
						["type"] = "event",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["useName"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["use_itemName"] = true,
						["fetchTooltip"] = true,
						["event"] = "Combat Log",
						["useExactSpellId"] = false,
						["custom_type"] = "event",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178849,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 183650,
						["spellId"] = "331523",
						["auranames"] = {
							"343386", -- [1]
						},
						["use_genericShowOn"] = true,
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["auraspellids"] = {
							"343386", -- [1]
						},
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["useName"] = false,
						["custom_hide"] = "timed",
						["unevent"] = "timed",
						["type"] = "aura2",
						["use_itemName"] = true,
						["custom_type"] = "event",
						["duration"] = "15",
						["fetchTooltip"] = true,
						["event"] = "Combat Log",
						["subeventSuffix"] = "_SUMMON",
						["useExactSpellId"] = true,
						["use_spellId"] = true,
						["events"] = "",
						["use_sourceUnit"] = true,
						["check"] = "event",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] or t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178849,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "FlIg)ImYfkm",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3536206",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Overflowing Anima Cage",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "sub.3.glowColor",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.3.useGlowColor",
						}, -- [3]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Bottled Flayedwing Toxin"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345545", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = true,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "player",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"299790", -- [1]
						},
						["check"] = "event",
						["duration"] = "",
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178742,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "bIFy15rKpuD",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1385268",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Bottled Flayedwing Toxin",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Tuft of Smoldering Plumage"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"344916", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 184020,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184020,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "6yEFx566Dmr",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "2103819",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Tuft of Smoldering Plumage",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Sinful Gladiator's Insignia of Alacrity"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"277181", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178386,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "KAzhf0CEIeJ",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "134501",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Sinful Gladiator's Insignia of Alacrity",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["value"] = 1,
								["variable"] = "onCooldown",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Darkmoon Deck: Putrescence"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = false,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"311464", -- [1]
							"311465", -- [2]
							"311466", -- [3]
							"311467", -- [4]
							"311468", -- [5]
							"311469", -- [6]
							"311470", -- [7]
							"311471", -- [8]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"334058", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["duration"] = "",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = true,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "target",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"311464", -- [1]
							"311465", -- [2]
							"311466", -- [3]
							"311467", -- [4]
							"311468", -- [5]
							"311469", -- [6]
							"311470", -- [7]
							"311471", -- [8]
						},
						["check"] = "event",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["itemName"] = 173069,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["type"] = "subborder",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						0, -- [2]
						0.062745098039216, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%2.tooltip1%%",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["text_text_format_3.tooltip1_format"] = "none",
					["rotateText"] = "NONE",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_2.tooltip1_format"] = "none",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["type"] = "subtext",
					["text_anchorXOffset"] = 6,
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_visible"] = false,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 173069,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "imA951rredq",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3717264",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Darkmoon Deck: Putrescence",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "311471",
					},
					["changes"] = {
						{
							["value"] = true,
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.2.border_visible",
						}, -- [3]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "311471",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Memory of Past Sins"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"344662", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 184025,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = true,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184025,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "Pt17)8t2Z9u",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1357803",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Memory of Past Sins",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Beating Abomination Core"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"336871", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["events"] = "",
						["useName"] = false,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["unit"] = "player",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["type"] = "aura2",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"336871", -- [1]
						},
						["check"] = "event",
						["duration"] = "",
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%tooltip1",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = true,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 181507,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "1UjkWmi45WQ",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "134339",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Beating Abomination Core",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Soulletting Ruby"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345805", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = false,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"345805", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178809,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip1",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178809,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "VnTVG(emTRo",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "133250",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Soulletting Ruby",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Sanguine Vintage"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"344231", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 184031,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip1",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = true,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184031,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "NdzByWI(8bh",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3536200",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Sanguine Vintage",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Shadowgrasp Totem"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["spellId"] = "331523",
						["auranames"] = {
							"343399", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["duration"] = "15",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["events"] = "",
						["type"] = "event",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_SUMMON",
						["useName"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["use_itemName"] = true,
						["fetchTooltip"] = true,
						["event"] = "Combat Log",
						["useExactSpellId"] = false,
						["custom_type"] = "event",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 179356,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 179356,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "hs1u2cq9Shl",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3159929",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Shadowgrasp Totem",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Macabre Sheet Music"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345439", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 184024,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = true,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184024,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "82h1Q7WhVYr",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "237451",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Macabre Sheet Music",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Siphoning Phylactery Shard"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345549", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 178783,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 178783,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "lk8sdddwLEs",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1379176",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Siphoning Phylactery Shard",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Combustion"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -297.9999542236328,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showAlways",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["useName"] = true,
						["auranames"] = {
							"190319", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["use_class"] = true,
				["use_spec"] = true,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0,
			["authorOptions"] = {
			},
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["id"] = "Combustion",
			["width"] = 64,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "LYRvjdR7LuI",
			["config"] = {
			},
			["inverse"] = false,
			["frameStrata"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "buffed",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["xOffset"] = -415.0000610351563,
		},
		["Overcharged Anima Battery"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345530", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 180116,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 180116,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "9i0oT2M)TJh",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "132488",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Overcharged Anima Battery",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Brimming Ember Shard"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["spellId"] = 336866,
						["auranames"] = {
							"336866", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["events"] = "",
						["type"] = "status",
						["custom_type"] = "event",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["duration"] = "",
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["use_itemName"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = false,
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 181360,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 181360,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "C)PTe2U(uy)",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "876916",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Brimming Ember Shard",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Sinful Aspirant's Badge of Ferocity"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"345228", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 175884,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 175884,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "mJW7rXOQBE4",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "135884",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Sinful Aspirant's Badge of Ferocity",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Spiritual Alchemy Stone #3"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"299790", -- [1]
							"299789", -- [2]
							"299788", -- [3]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 175941,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 175941,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "VLMfn9CJ48C",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "3566861",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Spiritual Alchemy Stone #3",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Manabound Mirror"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"344244", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = true,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 184029,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%1.tooltip1",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = true,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 184029,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "Qpsw()RJRDs",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1500911",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Manabound Mirror",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Ignite"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["xOffset"] = -268.0001220703125,
			["yOffset"] = -280.9999084472656,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["fetchTooltip"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["unit"] = "target",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["auranames"] = {
							"12654", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 40,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowScale"] = 1,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glow_anchor"] = "bar",
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%tooltip1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_text_format_tooltip1_format"] = "none",
					["text_color"] = {
						1, -- [1]
						0, -- [2]
						0.01176470588235294, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_visible"] = true,
					["text_shadowYOffset"] = -1,
					["text_anchorPoint"] = "INNER_CENTER",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_text_format_tooltip_format"] = "none",
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_n_format"] = "none",
				}, -- [4]
			},
			["height"] = 30,
			["load"] = {
				["use_class"] = true,
				["use_spec"] = true,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "HE2sxElyZyA",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sparkOffsetX"] = 0,
			["icon_side"] = "RIGHT",
			["authorOptions"] = {
			},
			["sparkHeight"] = 30,
			["texture"] = "Blizzard",
			["id"] = "Ignite",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["config"] = {
			},
			["sparkHidden"] = "NEVER",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 200,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["zoom"] = 0,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["value"] = 1,
						["variable"] = "buffed",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [3]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["icon"] = false,
		},
		["Gladiator's Rapid Medallion"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 182554,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 182554,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "zu2VpxKQvT7",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "1322720",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Gladiator's Rapid Medallion",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Stolen Maw Badge"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"339342", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["useIgnoreName"] = false,
						["useRem"] = false,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["events"] = "",
						["ignoreAuraNames"] = {
							"268522", -- [1]
						},
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = false,
						["custom_type"] = "event",
						["auraspellids"] = {
							"336372", -- [1]
						},
						["duration"] = "",
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_itemName"] = true,
						["useExactSpellId"] = true,
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["check"] = "event",
						["debuffType"] = "HELPFUL",
						["use_absorbMode"] = true,
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = true,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 175731,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "t1m349GxCav",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "134422",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Stolen Maw Badge",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Maldraxxian Warhorn"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["itemName"] = 183650,
						["spellId"] = "334885",
						["auranames"] = {
							"299788", -- [1]
						},
						["names"] = {
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["custom"] = "function(event, _, _, spellID)\n    if spellID\n    and spellID == 334885 then\n        return true\n    end\nend",
						["auraspellids"] = {
							"299790", -- [1]
						},
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_cloneId"] = false,
						["custom_hide"] = "timed",
						["custom_type"] = "event",
						["type"] = "custom",
						["use_itemName"] = true,
						["useExactSpellId"] = false,
						["duration"] = "15",
						["fetchTooltip"] = true,
						["event"] = "Combat Log",
						["unevent"] = "timed",
						["subeventSuffix"] = "_SUMMON",
						["use_spellId"] = true,
						["events"] = "UNIT_SPELLCAST_SUCCEEDED:player",
						["use_sourceUnit"] = true,
						["check"] = "event",
						["use_unit"] = true,
						["sourceUnit"] = "player",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 180827,
						["auranames"] = {
							"344803", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["use_absorbMode"] = true,
						["event"] = "Cooldown Progress (Item)",
						["events"] = "",
						["unit"] = "player",
						["duration"] = "",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["type"] = "status",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 180827,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "4CpjNC4YFMi",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "971277",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Maldraxxian Warhorn",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
		["Book-Borrower Identification"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 183650,
						["auranames"] = {
							"339342", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["useName"] = false,
						["events"] = "",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"340020", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["type"] = "aura2",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "",
						["customVariables"] = "",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 12,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_precision"] = 0,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_tooltip2_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_tooltip1_format"] = "BigNumber",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowYOffset"] = 0,
					["text_text_format_tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_visible"] = false,
					["type"] = "subtext",
					["text_text_format_tooltip2_format"] = "BigNumber",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_tooltip1_decimal_precision"] = 1,
					["text_anchorYOffset"] = -4,
					["text_fixedWidth"] = 64,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_anchorXOffset"] = 6,
					["text_text_format_1.tooltip1_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 15,
					["text_text_format_1.tooltip1_format"] = "BigNumber",
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["use_itemequiped"] = true,
				["itemequiped"] = 182682,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0.3,
			["uid"] = "LemhiOk79Fr",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["parent"] = "Shadowlands Trinkets (PVE+PVP)",
			["regionType"] = "icon",
			["information"] = {
			},
			["displayIcon"] = "979576",
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["width"] = 48,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Book-Borrower Identification",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.11",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/sltrinkets/12",
		},
	},
	["lastArchiveClear"] = 1606746008,
	["minimap"] = {
		["minimapPos"] = 354.2175707926114,
		["hide"] = false,
	},
	["lastUpgrade"] = 1606746015,
	["dbVersion"] = 40,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -52.9996337890625,
		["yOffset"] = -154.999267578125,
		["height"] = 665.0001220703125,
		["width"] = 830,
	},
	["login_squelch_time"] = 10,
	["editor_theme"] = "Monokai",
}
