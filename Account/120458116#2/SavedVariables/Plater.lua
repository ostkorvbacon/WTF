
PlaterDB = {
	["profileKeys"] = {
		["Blóodraven - The Maelstrom"] = "Default",
		["Blightwyrm - The Maelstrom"] = "Default",
		["Harding - The Maelstrom"] = "Default",
		["Ninefingers - The Maelstrom"] = "Default",
		["Bloodynine - The Maelstrom"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["script_data"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = scriptTable.config.changeNameplateColor --\n    envTable.NameplateColor = scriptTable.config.nameplateColor\n    envTable.NameplateSizeOffset = scriptTable.config.nameplateSizeOffset --\n    \n    unitFrame.UnitImportantSkullTexture = unitFrame.UnitImportantSkullTexture or unitFrame:CreateTexture(nil, \"background\")\n    \n    unitFrame.UnitImportantSkullTexture:SetTexture([[Interface/AddOns/Plater/media/skullbones_128]])\n    unitFrame.UnitImportantSkullTexture:SetPoint(\"center\", unitFrame.healthBar, \"center\", 0, -5)\n    \n    unitFrame.UnitImportantSkullTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.skullColor))\n    unitFrame.UnitImportantSkullTexture:SetAlpha(scriptTable.config.skullAlpha)\n    unitFrame.UnitImportantSkullTexture:SetScale(scriptTable.config.skullScale)\n    \n    unitFrame.UnitImportantSkullTexture:Hide()\nend\n\n--[=[\n\n154564 - debug\n\nUsing spellIDs for multi-language support\n\n164362 - smily morsel - plaguefall\n168882 - fleeting manifestation - sanguine depths\n170234 - oppressive banner - theater of pain\n168988 - overgrowth - Mists of Tirna Scithe\n170452 - essesnce orb - torghast\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)   \n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \n    unitFrame.UnitImportantSkullTexture:Hide()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1604599472,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\skullbones_64",
					["Enabled"] = true,
					["Revision"] = 355,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (envTable.dotAnimation) then\n        Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    end\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    unitFrame.UnitImportantSkullTexture:Show()\nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
							["Name"] = "Option 6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "change to true to change the color",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "nameplateColor",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0.5254901960784314, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "increase the nameplate height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 3,
							["Name"] = "Nameplate Size Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "nameplateSizeOffset",
						}, -- [6]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.7137254901960784, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 5,
							["Key"] = "option10",
							["Value"] = "Skull Texture",
							["Name"] = "Skull Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [10]
						{
							["Type"] = 1,
							["Key"] = "skullColor",
							["Value"] = {
								1, -- [1]
								0.4627450980392157, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Skull Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "",
							["Min"] = 0,
							["Name"] = "Alpha",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "skullAlpha",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 2,
							["Desc"] = "",
							["Min"] = 0.4,
							["Key"] = "skullScale",
							["Value"] = 0.6,
							["Name"] = "Scale",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [13]
					},
					["version"] = -1,
					["Name"] = "Unit - Important [Plater]",
					["NpcNames"] = {
						"164362", -- [1]
						"168882", -- [2]
						"168988", -- [3]
						"170234", -- [4]
						"165905", -- [5]
						"170452", -- [6]
					},
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Hide()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        Plater.StopDotAnimation(self, envTable.dotAnimation)\n    end\n    \n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1605214963,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 607,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Add the buff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Show()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
						323149, -- [1]
						324392, -- [2]
						340544, -- [3]
						342189, -- [4]
						333227, -- [5]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Name"] = "Glow Enabled",
							["Value"] = false,
							["Key"] = "glowEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Glow Color",
							["Value"] = {
								0.403921568627451, -- [1]
								0.00392156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "glowColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Name"] = "Dots Enabled",
							["Value"] = true,
							["Key"] = "dotsEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.3215686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dots Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
					},
					["version"] = -1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.flashColor))\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, scriptTable.config.flashDuration/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, scriptTable.config.flashDuration/2, 1, 0)\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (scriptTable.config.flashDuration/2)\n    fadeOut:SetDuration (scriptTable.config.flashDuration/2)\n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.castBar, envTable.dotAnimation)    \n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1604674264,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_darkorange",
					["Enabled"] = true,
					["Revision"] = 695,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.castBar, 5, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\n        end\n    end\n    \nend\n\n\n",
					["SpellIds"] = {
						321247, -- [1]
						334522, -- [2]
						320232, -- [3]
						319962, -- [4]
						325879, -- [5]
						324427, -- [6]
						322999, -- [7]
						325360, -- [8]
						322903, -- [9]
						324103, -- [10]
						333294, -- [11]
						333540, -- [12]
						319521, -- [13]
						326021, -- [14]
						326450, -- [15]
						322711, -- [16]
						329104, -- [17]
						295000, -- [18]
						242391, -- [19]
						320197, -- [20]
						329608, -- [21]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a big animation when the cast start.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Flash:",
							["Name"] = "Flash",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 1.2,
							["Desc"] = "How long is the flash played when the cast starts.",
							["Min"] = 0.1,
							["Name"] = "Flash Duration",
							["Value"] = 0.8,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "flashDuration",
						}, -- [6]
						{
							["Type"] = 1,
							["Key"] = "flashColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Flash Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the Flash",
						}, -- [7]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 5,
							["Name"] = "Shake",
							["Value"] = "Shake:",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 0.5,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Name"] = "Shake Duration",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeDuration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "How strong is the shake.",
							["Min"] = 1,
							["Name"] = "Shake Amplitude",
							["Value"] = 5,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeAmplitude",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Name"] = "Shake Frequency",
							["Value"] = 40,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeFrequency",
						}, -- [12]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 5,
							["Key"] = "option14",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [14]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								0.5647058823529412, -- [1]
								0.5647058823529412, -- [2]
								0.5647058823529412, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dots around the nameplate",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "Adjust the width of the dots to better fit in your nameplate.",
							["Min"] = -10,
							["Fraction"] = false,
							["Value"] = 8,
							["Name"] = "Dot X Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "xOffset",
						}, -- [16]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Adjust the height of the dots to better fit in your nameplate.",
							["Min"] = -10,
							["Name"] = "Dot Y Offset",
							["Value"] = 3,
							["Key"] = "yOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [17]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [18]
						{
							["Type"] = 6,
							["Name"] = "blank",
							["Value"] = 0,
							["Key"] = "option18",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [19]
						{
							["Type"] = 6,
							["Name"] = "blank",
							["Value"] = 0,
							["Key"] = "option18",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [20]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [21]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [22]
						{
							["Type"] = 6,
							["Name"] = "blank",
							["Value"] = 0,
							["Key"] = "option18",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [23]
						{
							["Type"] = 5,
							["Key"] = "option19",
							["Value"] = "Cast Bar",
							["Name"] = "Option 19",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [24]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Use Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Use cast bar color.",
						}, -- [25]
						{
							["Type"] = 1,
							["Key"] = "castBarColor",
							["Value"] = {
								0.4117647058823529, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Cast bar color.",
						}, -- [26]
					},
					["version"] = -1,
					["Name"] = "Cast - Very Important [Plater]",
					["NpcNames"] = {
					},
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0\n    \n\nend\n\n\n",
					["Time"] = 1604698647,
					["url"] = "",
					["Icon"] = 2175503,
					["Enabled"] = true,
					["Revision"] = 462,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a special animation showing the explosion time.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 3,
							["Name"] = "Cast Bar Height Mod",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "castBarHeight",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "castBarColor",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Changes the cast bar color to this one.",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Arrow:",
							["Name"] = "Arrow:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Key"] = "showArrow",
							["Value"] = true,
							["Name"] = "Show Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show an arrow above the nameplate showing the cast bar progress.",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Arrow alpha.",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 0.5,
							["Name"] = "Arrow Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowAlpha",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Width.",
							["Min"] = 4,
							["Name"] = "Arrow Width",
							["Value"] = 8,
							["Key"] = "arrowWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Height.",
							["Min"] = 4,
							["Fraction"] = false,
							["Value"] = 8,
							["Name"] = "Arrow Height",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowHeight",
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 5,
							["Key"] = "option12",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								1, -- [1]
								0.615686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dot animation.",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot X Offset",
							["Min"] = -10,
							["Name"] = "Dot X Offset",
							["Value"] = 4,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "xOffset",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot Y Offset",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Name"] = "Dot Y Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [16]
					},
					["version"] = -1,
					["Name"] = "Explosion Affix M+ [Plater]",
					["NpcNames"] = {
					},
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Hide()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        Plater.StopDotAnimation(self, envTable.dotAnimation)\n    end\n    \n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1604454032,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 351,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Show()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \n    end\nend\n\n\n",
					["SpellIds"] = {
						337220, -- [1]
						337253, -- [2]
						337251, -- [3]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = false,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "glowColor",
							["Value"] = {
								0.403921568627451, -- [1]
								0.00392156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Glow Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "dotsEnabled",
							["Value"] = true,
							["Name"] = "Dots Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Name"] = "Dots Color",
							["Value"] = {
								1, -- [1]
								0.3215686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "dotsColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
					},
					["version"] = -1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [5]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\nend\n\n\n",
					["Time"] = 1604617977,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_red",
					["Enabled"] = true,
					["Revision"] = 513,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Used on casts that make the mob explode or transform if the cast passes.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \nend",
					["SpellIds"] = {
						332329, -- [1]
						320103, -- [2]
						321406, -- [3]
						335817, -- [4]
						321061, -- [5]
						320141, -- [6]
						326171, -- [7]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Option 1",
							["Value"] = 0,
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Plays a special animation showing the explosion time.",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Option 3",
							["Value"] = 0,
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "Increases the health bar height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 3,
							["Key"] = "castBarHeight",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Health Bar Height Mod",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Health Bar Color",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "healthBarColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Changes the health bar color to this one.",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Option 7",
							["Value"] = 0,
							["Key"] = "option7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Name"] = "Arrow:",
							["Value"] = "Arrow:",
							["Key"] = "option6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Name"] = "Show Arrow",
							["Value"] = true,
							["Key"] = "showArrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show an arrow above the nameplate showing the cast bar progress.",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Arrow alpha.",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 0.5,
							["Key"] = "arrowAlpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Alpha",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Width.",
							["Min"] = 4,
							["Name"] = "Arrow Width",
							["Value"] = 8,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowWidth",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Height.",
							["Min"] = 4,
							["Fraction"] = false,
							["Value"] = 8,
							["Key"] = "arrowHeight",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Height",
						}, -- [11]
						{
							["Type"] = 6,
							["Name"] = "Option 13",
							["Value"] = 0,
							["Key"] = "option13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 5,
							["Name"] = "Dot Animation:",
							["Value"] = "Dot Animation:",
							["Key"] = "option12",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 1,
							["Name"] = "Dot Color",
							["Value"] = {
								1, -- [1]
								0.615686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "dotColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dot animation.",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot X Offset",
							["Min"] = -10,
							["Name"] = "Dot X Offset",
							["Value"] = 4,
							["Key"] = "xOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot Y Offset",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Dot Y Offset",
						}, -- [16]
					},
					["version"] = -1,
					["Name"] = "Cast - Ultra Important [P]",
					["NpcNames"] = {
					},
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1604696442,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_orange",
					["Enabled"] = true,
					["Revision"] = 970,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						338353, -- [1]
						334748, -- [2]
						334749, -- [3]
						320784, -- [4]
						341352, -- [5]
						341520, -- [6]
						341522, -- [7]
						336005, -- [8]
						339777, -- [9]
						331933, -- [10]
						326617, -- [11]
						324914, -- [12]
						324776, -- [13]
						326046, -- [14]
						340634, -- [15]
						319070, -- [16]
						328295, -- [17]
						317936, -- [18]
						327413, -- [19]
						319654, -- [20]
						323821, -- [21]
						320772, -- [22]
						324293, -- [23]
						330562, -- [24]
						330868, -- [25]
						341902, -- [26]
						342139, -- [27]
						342675, -- [28]
						323190, -- [29]
						332836, -- [30]
						327648, -- [31]
						328217, -- [32]
						322938, -- [33]
						340544, -- [34]
						325876, -- [35]
						325700, -- [36]
						323552, -- [37]
						332666, -- [38]
						332612, -- [39]
						332706, -- [40]
						340026, -- [41]
						294171, -- [42]
						292910, -- [43]
						294165, -- [44]
						338871, -- [45]
						330813, -- [46]
						335694, -- [47]
						327461, -- [48]
						329787, -- [49]
						304946, -- [50]
						15245, -- [51]
						276754, -- [52]
						304831, -- [53]
						277036, -- [54]
						320657, -- [55]
						294362, -- [56]
						270248, -- [57]
						292926, -- [58]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Line",
							["Value"] = 0,
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "Option 3",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Name"] = "Cast Bar Color Enabled",
							["Value"] = true,
							["Key"] = "useCastbarColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "When enabled, changes the cast bar color,",
						}, -- [5]
						{
							["Type"] = 1,
							["Name"] = "Cast Bar Color",
							["Value"] = {
								1, -- [1]
								0.4313725490196079, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "castbarColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the cast bar.",
						}, -- [6]
						{
							["Type"] = 6,
							["Name"] = "Blank Line",
							["Value"] = 0,
							["Key"] = "option7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
							["Min"] = 0.05,
							["Fraction"] = true,
							["Value"] = 0.4,
							["Key"] = "flashDuration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Flash Duration",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 5,
							["Key"] = "castBarHeight",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Cast Bar Height Mod",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.2,
							["Key"] = "shakeDuration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Duration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 100,
							["Desc"] = "How strong is the shake.",
							["Min"] = 2,
							["Name"] = "Shake Amplitude",
							["Value"] = 8,
							["Key"] = "shakeAmplitude",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Name"] = "Shake Frequency",
							["Value"] = 40,
							["Key"] = "shakeFrequency",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [12]
					},
					["version"] = -1,
					["Name"] = "Cast - Big Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [7]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        envTable.flashIn = Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        envTable.flashOut = Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    envTable.flashIn:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.flashOut:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.SmallFlashTexture:SetColorTexture (Plater:ParseColors(scriptTable.config.flashColor))\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1604617585,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 595,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["SpellIds"] = {
						320170, -- [1]
						320171, -- [2]
						320462, -- [3]
						330712, -- [4]
						332170, -- [5]
						333875, -- [6]
						326836, -- [7]
						342135, -- [8]
						333861, -- [9]
						341969, -- [10]
						317963, -- [11]
						327481, -- [12]
						328331, -- [13]
						322614, -- [14]
						325701, -- [15]
						326438, -- [16]
						323538, -- [17]
						321764, -- [18]
						296523, -- [19]
						330755, -- [20]
						295929, -- [21]
						296019, -- [22]
						335685, -- [23]
						170751, -- [24]
						342207, -- [25]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a small animation when the cast start.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1.2,
							["Desc"] = "How long is the flash played when the cast starts.",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.6,
							["Name"] = "Flash Duration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "flashDuration",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "flashColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Flash Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the Flash",
						}, -- [6]
					},
					["version"] = -1,
					["Name"] = "Cast - Small Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    --check for marks\n    function  envTable.CheckMark (unitId, unitFrame)\n        if (not GetRaidTargetIndex(unitId)) then\n            if (scriptTable.config.onlyInCombat) then\n                if (not UnitAffectingCombat(unitId)) then\n                    return\n                end                \n            end\n            \n            SetRaidTarget(unitId, 8)\n        end       \n    end\nend\n\n\n--163520 - forsworn squad-leader\n--163618 - zolramus necromancer - The Necrotic Wake\n--164506 - anciet captain - theater of pain\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n",
					["Time"] = 1604696441,
					["url"] = "",
					["Icon"] = "Interface\\Worldmap\\GlowSkull_64Grey",
					["Enabled"] = true,
					["Revision"] = 63,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Auto set skull marker",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option1",
							["Value"] = "Auto set a raid target Skull on the unit.",
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 4,
							["Key"] = "onlyInCombat",
							["Value"] = false,
							["Name"] = "Only in Combat",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Set the mark only if the unit is in combat.",
						}, -- [3]
					},
					["version"] = -1,
					["Name"] = "Auto Set Skull",
					["NpcNames"] = {
						"163520", -- [1]
						"163618", -- [2]
						"164506", -- [3]
					},
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n--[=[\n\n154564 - debug\n\n168098 - empowered coldheart agent\n156212 - coldheart agent\n\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --check if can change the nameplate color\n    if (scriptTable.config.changeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, scriptTable.config.nameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1604607993,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\skullbones_64",
					["Enabled"] = true,
					["Revision"] = 406,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\n    \n    unitFrame.healthBar.MainTargetDotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + scriptTable.config.nameplateSizeOffset)\n    \nend\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 6",
							["Value"] = "Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
							["Key"] = "option6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Name"] = "Change Nameplate Color",
							["Value"] = true,
							["Key"] = "changeNameplateColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "change to true to change the color",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Nameplate Color",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0.5254901960784314, -- [3]
								1, -- [4]
							},
							["Key"] = "nameplateColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "increase the nameplate height by this value",
							["Min"] = 0,
							["Key"] = "nameplateSizeOffset",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Nameplate Size Offset",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Name"] = "Dot Color",
							["Value"] = {
								1, -- [1]
								0.7137254901960784, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "dotsColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [9]
					},
					["version"] = -1,
					["Name"] = "Unit - Main Target [P]",
					["NpcNames"] = {
						"156212", -- [1]
						"168098", -- [2]
					},
				}, -- [10]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = scriptTable.config.blinkEnabled\n        envTable.GlowEnabled = scriptTable.config.glowEnabled \n        envTable.ChangeNameplateColor = scriptTable.config.changeNameplateColor;\n        envTable.TimeLeftToBlink = scriptTable.config.timeleftToBlink;\n        envTable.BlinkSpeed = scriptTable.config.blinkSpeed; \n        envTable.BlinkColor = scriptTable.config.blinkColor; \n        envTable.BlinkMaxAlpha = scriptTable.config.blinkMaxAlpha; \n        envTable.NameplateColor = scriptTable.config.nameplateColor; \n        \n        --text color\n        envTable.TimerColorEnabled = scriptTable.config.timerColorEnabled \n        envTable.TimeLeftWarning = scriptTable.config.timeLeftWarning;\n        envTable.TimeLeftCritical = scriptTable.config.timeLeftCritical;\n        envTable.TextColor_Warning = scriptTable.config.warningColor; \n        envTable.TextColor_Critical = scriptTable.config.criticalColor; \n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1604354808,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 331,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "					function (scriptTable)\n						--insert code here\n						\n					end\n				",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option17",
							["Value"] = "Enter the spell name or spellID in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 17",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option10",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "blinkEnabled",
							["Value"] = true,
							["Name"] = "Blink Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable blink",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = true,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable glows",
						}, -- [5]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change NamePlate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'true' to enable nameplate color change",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the blink effect only",
							["Min"] = 1,
							["Fraction"] = true,
							["Value"] = 3,
							["Name"] = "Timeleft to Blink",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "timeleftToBlink",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 3,
							["Desc"] = "time to complete a blink loop",
							["Min"] = 0.5,
							["Fraction"] = true,
							["Value"] = 1,
							["Name"] = "Blink Speed",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "blinkSpeed",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "max transparency in the animation loop (1.0 is full opaque)",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.6,
							["Name"] = "Blink Max Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "blinkMaxAlpha",
						}, -- [9]
						{
							["Type"] = 1,
							["Key"] = "blinkColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Blink Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color of the blink",
						}, -- [10]
						{
							["Type"] = 1,
							["Key"] = "",
							["Value"] = {
								0.2862745098039216, -- [1]
								0.00392156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "nameplate color if ChangeNameplateColor is true",
						}, -- [11]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option10",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 4,
							["Key"] = "timerColorEnabled",
							["Value"] = true,
							["Name"] = "Timer Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable changes in the color of the time left text",
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Name"] = "Time Left Warning",
							["Value"] = 8,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "timeLeftWarning",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Name"] = "Time Left Critical",
							["Value"] = 3,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "timeLeftCritical",
						}, -- [15]
						{
							["Type"] = 1,
							["Key"] = "warningColor",
							["Value"] = {
								1, -- [1]
								0.8705882352941177, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Warning Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left entered in a warning zone",
						}, -- [16]
						{
							["Type"] = 1,
							["Key"] = "criticalColor",
							["Value"] = {
								1, -- [1]
								0.07450980392156863, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Critical Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left is critical",
						}, -- [17]
					},
					["version"] = -1,
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["NpcNames"] = {
					},
				}, -- [11]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    envTable.npcInfo = {\n        [164427] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"1\", name = \"Boom!\"}, --reanimated warrior - plaguefall\n        \n        [164414] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"2\", name = \"Boom!\"}, --reanimated mage - plaguefall\n        \n        [164185] = {secondCastBar = true, timer = 20, timerId = 319941, altCastId = \"3\", remaining = 5, name = GetSpellInfo(319941)}, --Echelon - Halls of Atonement\n        \n        [164567] = {secondCastBar = true, altCastId = \"dromanswrath\", debuffTimer = 323059, name = GetSpellInfo(323059), spellIcon = 323059}, --Ingra Maloch -- tirna scythe\n        \n        [165408] = {secondCastBar = true, timer = 20, timerId = 322711, altCastId = \"4\", remaining = 5, name = GetSpellInfo(322711)}, --Halkias - Refracted Sinlight - Halls of Atonement\n        \n        \n        --[154564] = {secondCastBar = true, timerId = \"Test Bar\", altCastId = \"debugcast\", remaining = 5, name = GetSpellInfo(319941), spellIcon = 319941}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\n        --[154580] = {secondCastBar = true, altCastId = \"debugcast\", debuffTimer = 204242, name = GetSpellInfo(81297), spellIcon = 81297}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\n    }\n    \n    --set the castbar config\n    local config = {\n        iconTexture = \"\",\n        iconTexcoord = {0.1, 0.9, 0.1, 0.9},\n        iconAlpha = 1,\n        iconSize = 14,\n        \n        text = \"Boom!\",\n        textSize = 9,\n        \n        texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\n        color = \"silver\",\n        \n        isChanneling = false,\n        canInterrupt = false,\n        \n        height = 2,\n        width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\n        \n        spellNameAnchor = {side = 3, x = 0, y = -2},\n        timerAnchor = {side = 5, x = 0, y = -2},\n    }    \n    \n    function envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, customTime, customStart)\n        --show the cast bar\n        if (npcInfo.timerId) then\n            local barObject = Plater.GetBossTimer(npcInfo.timerId)\n            if (barObject) then\n                if (npcInfo.remaining) then\n                    local timeLeft = barObject.timer + barObject.start - GetTime()\n                    if (timeLeft > npcInfo.remaining) then\n                        return\n                    end\n                end\n                \n                config.text = npcInfo.name\n                \n                if (npcInfo.spellIcon) then\n                    local _, _, iconTexture = GetSpellInfo(npcInfo.spellIcon)\n                    config.iconTexture = iconTexture\n                else\n                    config.iconTexture = \"\"\n                end\n                \n                Plater.SetAltCastBar(unitFrame.PlateFrame, config, barObject.timer, customStart or barObject.start, npcInfo.altCastId)\n            end\n        else\n            Plater.SetAltCastBar(unitFrame.PlateFrame, config, customTime or npcInfo.timer, customStart, npcInfo.altCastId)            \n        end\n        \n        DetailsFramework:TruncateText(unitFrame.castBar2.Text, unitFrame.castBar2:GetWidth() - 16)\n    end\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    Plater.ClearAltCastBar(unitFrame.PlateFrame)\nend",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    local npcInfo = envTable.npcInfo[envTable._NpcID]\n    \n    if (npcInfo and npcInfo.secondCastBar) then\n        if (npcInfo.timerId) then\n            local barObject = Plater.GetBossTimer(npcInfo.timerId)\n            if (barObject) then\n                local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                if (altCastId ~= npcInfo.altCastId or not unitFrame.castBar2:IsShown()) then\n                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\n                end\n            end \n            \n        elseif (npcInfo.debuffTimer) then\n            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\n                \n                --get the debuff timeleft\n                local name = npcInfo.name\n                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\n                local startTime = expirationTime - duration\n                \n                if (not unitFrame.castBar2:IsShown() or unitFrame.castBar2.spellStartTime < startTime) then\n                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, startTime)\n                end\n                \n            else \n                if (unitFrame.castBar2:IsShown()) then\n                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                    if (altCastId == npcInfo.altCastId) then\n                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\n                    end                   \n                end                              \n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604354364,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\Images\\countdown_bar_icon",
					["Enabled"] = true,
					["Revision"] = 206,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Some units has special events without a clear way to show. This script adds a second cast bar to inform the user about it.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    local npcInfo = envTable.npcInfo[envTable._NpcID]\n    \n    if (npcInfo and npcInfo.secondCastBar) then\n        if (npcInfo.debuffTimer) then\n            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\n                \n                local name = npcInfo.name\n                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\n                \n                envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, expirationTime-duration)\n            else\n                if (unitFrame.castBar2:IsShown()) then\n                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                    if (altCastId == npcInfo.altCastId) then\n                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\n                    end                   \n                end                              \n            end\n        else\n            envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["version"] = -1,
					["Name"] = "Countdown",
					["NpcNames"] = {
						"164427", -- [1]
						"164414", -- [2]
						"164185", -- [3]
						"164567", -- [4]
						"165408", -- [5]
					},
				}, -- [12]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    envTable.lifePercent = {\n        --npcId         percent divisions\n        [154564] = {80, 30},   --debug\n        [164451] = {40}, --dessia the decapirator - theater of pain\n        [164463] = {40}, --Paceran the Virulent - theater of pain\n        [164461] = {40}, -- Sathel the Accursed - theater of pain\n        [165946]= {50}, -- ~mordretha - thather of pain\n        [164501] = {70, 40, 10}, --mistcaller - tina scythe\n        [164218] = {70, 40}, --Lord Chamberlain - Halls of Atonement\n    }\n    \n    function envTable.CreateMarker(unitFrame)\n        unitFrame.healthMarker = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\n        unitFrame.healthMarker:SetColorTexture(1, 1, 1)\n        unitFrame.healthMarker:SetSize(1, unitFrame.healthBar:GetHeight())\n        \n        unitFrame.healthOverlay = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\n        unitFrame.healthOverlay:SetColorTexture(1, 1, 1)\n        unitFrame.healthOverlay:SetSize(1, unitFrame.healthBar:GetHeight())\n    end\n    \n    function envTable.UpdateMarkers(unitFrame)\n        local markersTable = envTable.lifePercent[envTable._NpcID]\n        if (markersTable) then\n            local unitLifePercent = envTable._HealthPercent / 100\n            for i, percent in ipairs(markersTable) do\n                percent = percent / 100\n                if (unitLifePercent > percent) then\n                    if (not unitFrame.healthMarker) then\n                        envTable.CreateMarker(unitFrame)\n                    end\n                    \n                    unitFrame.healthMarker:Show()\n                    local width = unitFrame.healthBar:GetWidth()\n                    unitFrame.healthMarker:SetPoint(\"left\", unitFrame.healthBar, \"left\", width*percent, 0)\n                    \n                    local overlaySize = width * (unitLifePercent - percent)\n                    unitFrame.healthOverlay:SetWidth(overlaySize)\n                    unitFrame.healthOverlay:SetPoint(\"left\", unitFrame.healthMarker, \"right\", 0, 0)\n                    \n                    unitFrame.healthMarker:SetVertexColor(Plater:ParseColors(scriptTable.config.indicatorColor))\n                    unitFrame.healthMarker:SetAlpha(scriptTable.config.indicatorAlpha)\n                    \n                    unitFrame.healthOverlay:SetVertexColor(Plater:ParseColors(scriptTable.config.fillColor))\n                    unitFrame.healthOverlay:SetAlpha(scriptTable.config.fillAlpha)\n                    \n                    return\n                end\n            end --end for\n            \n            if (unitFrame.healthMarker and unitFrame.healthMarker:IsShown()) then\n                unitFrame.healthMarker:Hide()\n                unitFrame.healthOverlay:Hide()\n            end\n        end\n    end\nend      \n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (unitFrame.healthMarker) then\n        unitFrame.healthMarker:Hide()\n        unitFrame.healthOverlay:Hide()\n    end\nend\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateMarkers(unitFrame)\nend\n\n\n",
					["Time"] = 1606506781,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\health_indicator",
					["Enabled"] = true,
					["Revision"] = 109,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Place a marker into the health bar to indicate when the unit will change phase or cast an important spell.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateMarkers(unitFrame)\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 5,
							["Name"] = "Option 1",
							["Value"] = "Add markers into the health bar to remind you about boss abilities at life percent.",
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Name"] = "blank line",
							["Value"] = 0,
							["Key"] = "",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 1,
							["Name"] = "Vertical Line Color",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Key"] = "indicatorColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Indicator color.",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Indicator alpha.",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.79,
							["Key"] = "indicatorAlpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Vertical Line Alpha",
						}, -- [4]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "blank line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "fillColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Fill Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Fill color.",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Fill alpha.",
							["Min"] = 0,
							["Key"] = "fillAlpha",
							["Value"] = 0.2,
							["Name"] = "Fill Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [7]
					},
					["version"] = -1,
					["Name"] = "Unit - Health Markers [P]",
					["NpcNames"] = {
						"164451", -- [1]
						"164463", -- [2]
						"164461", -- [3]
						"165946", -- [4]
						"164501", -- [5]
						"164218", -- [6]
					},
				}, -- [13]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    --envTable.movingArrow.color = scriptTable.config.arrowColor\n    envTable.movingArrow:SetAlpha (scriptTable.config.arrowAlpha)\n    envTable.movingArrow:SetDesaturated (scriptTable.config.desaturateArrow)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    envTable.arrowAnimation = envTable.arrowAnimation or Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.20, self:GetWidth()-16, 0)\n    \n    envTable.arrowAnimation:SetDuration(scriptTable.config.animSpeed)\nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend",
					["Time"] = 1604599443,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_frontal",
					["Enabled"] = true,
					["Revision"] = 460,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["SpellIds"] = {
						323489, -- [1]
						323496, -- [2]
						319941, -- [3]
						319592, -- [4]
						334266, -- [5]
						325258, -- [6]
						334913, -- [7]
						326221, -- [8]
						322936, -- [9]
						323236, -- [10]
						321834, -- [11]
						336752, -- [12]
						325418, -- [13]
						324667, -- [14]
						327233, -- [15]
						324368, -- [16]
						324205, -- [17]
						323943, -- [18]
						319713, -- [19]
						320596, -- [20]
						320729, -- [21]
						323608, -- [22]
						330614, -- [23]
						320063, -- [24]
						332708, -- [25]
						334023, -- [26]
						317231, -- [27]
						317943, -- [28]
						320966, -- [29]
						334053, -- [30]
						328458, -- [31]
						321968, -- [32]
						331718, -- [33]
						325793, -- [34]
						330453, -- [35]
						326997, -- [36]
						334051, -- [37]
						292903, -- [38]
						330843, -- [39]
						294173, -- [40]
						189200, -- [41]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces an effect to indicate the spell will hit players in front of the enemy.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option4",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Set the alpha of the moving arrow",
							["Min"] = 0,
							["Name"] = "Arrow Alpha",
							["Value"] = 0.275,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowAlpha",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Time that takes for an arrow to travel from the to right.",
							["Min"] = 0,
							["Name"] = "Animation Speed",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "animSpeed",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "desaturateArrow",
							["Value"] = false,
							["Name"] = "Use White Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the arrow color will be desaturated.",
						}, -- [7]
					},
					["version"] = -1,
					["Name"] = "Cast - Frontal Cone [Plater]",
					["NpcNames"] = {
					},
				}, -- [14]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n--165560 = Gormling Larva - MTS\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n        \n        envTable.FixateTarget:Show();\n        envTable.FixateIcon:Show();\n    end    \nend\n\n\n",
					["Time"] = 1604239880,
					["url"] = "",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 269,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n\n\n\n\n",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["version"] = -1,
					["Name"] = "Fixate [Plater]",
					["NpcNames"] = {
						"165560", -- [1]
					},
				}, -- [15]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1604593143,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_tank",
					["Enabled"] = true,
					["Revision"] = 833,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Desc"] = "Cast alert for abilities which only the tank can interrupt.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						321828, -- [1]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Cast Bar Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "When enabled, changes the cast bar color,",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "castbarColor",
							["Value"] = {
								1, -- [1]
								0.4313725490196079, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the cast bar.",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
							["Min"] = 0.05,
							["Name"] = "Flash Duration",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "flashDuration",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Name"] = "Cast Bar Height Mod",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "castBarHeight",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Name"] = "Shake Duration",
							["Value"] = 0.1,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeDuration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 200,
							["Desc"] = "How strong is the shake.",
							["Min"] = 10,
							["Fraction"] = false,
							["Value"] = 25,
							["Name"] = "Shake Amplitude",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeAmplitude",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Fraction"] = false,
							["Value"] = 30,
							["Name"] = "Shake Frequency",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeFrequency",
						}, -- [12]
					},
					["version"] = -1,
					["Name"] = "Cast - Tank Interrupt [P]",
					["NpcNames"] = {
					},
				}, -- [16]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);    \n    \n    envTable.EnergyAmount.fontsize = scriptTable.config.fontSize\n    envTable.EnergyAmount.fontcolor = scriptTable.config.fontColor\n    envTable.EnergyAmount.outline = scriptTable.config.outline\n    \n    \nend\n\n--[=[\n\n164406 = Shriekwing\n164407 = Sludgefist\n162100 = kryxis the voracious\n162099 = general kaal - sanguine depths\n162329 = Xav the Unfallen - threater of pain\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    local currentPower = UnitPower(unitId)\n    \n    if (currentPower and currentPower > 0) then\n        local maxPower = UnitPowerMax (unitId)\n        local percent = floor (currentPower / maxPower * 100)\n        \n        envTable.EnergyAmount.text = \"\" .. percent;\n        \n        if (scriptTable.config.showLater) then\n            local alpha = (percent -80) * 5\n            alpha = alpha / 100\n            alpha = max(0, alpha)\n            envTable.EnergyAmount:SetAlpha(alpha)\n            \n        else\n            envTable.EnergyAmount:SetAlpha(1.0)\n        end\n        \n        \n    else\n        envTable.EnergyAmount.text = \"\"\n    end\nend\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604357453,
					["url"] = "",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 233,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Show the energy amount above the nameplate.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Show the power of the unit above the nameplate.",
							["Name"] = "script desc",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "add trigger",
							["Value"] = "Add the unit name or unitId in the \"Add Trigger\" field and press \"Add\".",
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "showLater",
							["Value"] = true,
							["Name"] = "Show at 80% of Energy",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the energy won't start showing until the unit has 80% energy.",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Option 2",
							["Value"] = 0,
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Text size.",
							["Min"] = 8,
							["Name"] = "Text Size",
							["Value"] = 16,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "fontSize",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "fontColor",
							["Value"] = {
								0.803921568627451, -- [1]
								0.803921568627451, -- [2]
								0.803921568627451, -- [3]
								1, -- [4]
							},
							["Name"] = "Font Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the text.",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "outline",
							["Value"] = true,
							["Name"] = "Enable Text Outline",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the text uses outline.",
						}, -- [9]
					},
					["version"] = -1,
					["Name"] = "Unit - Show Energy [Plater]",
					["NpcNames"] = {
						"164406", -- [1]
						"164407", -- [2]
						"162100", -- [3]
						"162099", -- [4]
						"162329", -- [5]
						"164558", -- [6]
					},
				}, -- [17]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [321891] = \"Freeze Tag Fixation\", --Illusionary Vulpin - MTS\n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604087921,
					["url"] = "",
					["Icon"] = 841383,
					["Enabled"] = true,
					["Revision"] = 266,
					["semver"] = "",
					["Author"] = "Tecno-Azralon",
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["version"] = -1,
					["Name"] = "Fixate On You [Plater]",
					["NpcNames"] = {
					},
				}, -- [18]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    if (not unitFrame.spitefulTexture) then\n        unitFrame.spitefulTexture = unitFrame.healthBar:CreateTexture(nil, \"overlay\", nil, 6)\n        unitFrame.spitefulTexture:SetPoint('right', 0, 0)\n        unitFrame.spitefulTexture:SetSize(27, 14)\n        unitFrame.spitefulTexture:SetColorTexture(.3, .3, 1, .7)\n        \n        unitFrame.spitefulText = unitFrame.healthBar:CreateFontString(nil, \"overlay\", \"GameFontNormal\", 6)\n        unitFrame.spitefulText:SetPoint(\"right\", unitFrame.spitefulTexture, \"right\", -2, 0)\n        unitFrame.spitefulText:SetJustifyH(\"right\")\n        \n        unitFrame.spitefulTexture:Hide()\n        unitFrame.spitefulText:Hide()\n    end\n    \n    function envTable.UpdateSpitefulWidget(unitFrame)\n        \n        local r, g, b, a = Plater:ParseColors(scriptTable.config.bgColor)\n        unitFrame.spitefulTexture:SetSize(scriptTable.config.bgWidth, unitFrame.healthBar:GetHeight())   \n        Plater:SetFontSize(unitFrame.spitefulText, scriptTable.config.textSize)\n        Plater:SetFontColor(unitFrame.spitefulText, scriptTable.config.textColor)\n        \n        local currentHealth = unitFrame.healthBar.CurrentHealth\n        local maxHealth = unitFrame.healthBar.CurrentHealthMax\n        \n        local healthPercent = currentHealth / maxHealth * 100\n        local timeToDie = format(\"%.1fs\", healthPercent / 8)\n        unitFrame.spitefulText:SetText(timeToDie)\n        \n        unitFrame.spitefulText:Show()\n        unitFrame.spitefulTexture:Show()\n    end\nend\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    if (unitFrame.spitefulTexture) then\n        unitFrame.spitefulText:Hide()\n        unitFrame.spitefulTexture:Hide()    \n    end\nend\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
					["Time"] = 1608852889,
					["url"] = "",
					["Icon"] = 135945,
					["Enabled"] = true,
					["Revision"] = 59,
					["semver"] = "",
					["Author"] = "Symantec-Azralon",
					["Initialization"] = "		function (scriptTable)\n			--insert code here\n			\n		end\n	",
					["Desc"] = "Time to die Spiteful affix",
					["NpcNames"] = {
						"174773", -- [1]
					},
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "M+ Spiteful",
					["version"] = -1,
					["Options"] = {
						{
							["Type"] = 2,
							["Max"] = 50,
							["Desc"] = "",
							["Min"] = 10,
							["Name"] = "Width",
							["Value"] = 27,
							["Key"] = "bgWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [1]
						{
							["Type"] = 1,
							["Key"] = "bgColor",
							["Value"] = {
								0.5058823529411764, -- [1]
								0.07058823529411765, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Background Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option5",
							["Value"] = 0,
							["Name"] = "Option 5",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 24,
							["Desc"] = "",
							["Min"] = 7,
							["Name"] = "Text Size",
							["Value"] = 8,
							["Key"] = "textSize",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "textColor",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Text Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
				}, -- [19]
			},
			["aura2_y_offset"] = 5,
			["npc_cache"] = {
				[127482] = {
					"Sewer Vicejaw", -- [1]
					"Tol Dagor", -- [2]
				},
				[164501] = {
					"Mistcaller", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[165872] = {
					"Flesh Crafter", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[173044] = {
					"Stitching Assistant", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[168837] = {
					"Stealthling", -- [1]
					"Plaguefall", -- [2]
				},
				[167116] = {
					"Spinemaw Reaver", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[165108] = {
					"Illusionary Clone", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[172312] = {
					"Spinemaw Gorger", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[167117] = {
					"Spinemaw Larva", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[164185] = {
					"Echelon", -- [1]
					"Halls of Atonement", -- [2]
				},
				[168361] = {
					"Fen Hornet", -- [1]
					"Plaguefall", -- [2]
				},
				[168393] = {
					"Plaguebelcher", -- [1]
					"Plaguefall", -- [2]
				},
				[171772] = {
					"Mistveil Defender", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[127484] = {
					"Jes Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[164218] = {
					"Lord Chamberlain", -- [1]
					"Halls of Atonement", -- [2]
				},
				[168394] = {
					"Slimy Morsel", -- [1]
					"Plaguefall", -- [2]
				},
				[173016] = {
					"Corpse Collector", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[168968] = {
					"Plaguebound Fallen", -- [1]
					"Plaguefall", -- [2]
				},
				[164920] = {
					"Drust Soulcleaver", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[162689] = {
					"Surgeon Stitchflesh", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[169861] = {
					"Ickor Bileflesh", -- [1]
					"Plaguefall", -- [2]
				},
				[134990] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[168969] = {
					"Gushing Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[164921] = {
					"Drust Harvester", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[127485] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[168747] = {
					"Venomfang", -- [1]
					"Plaguefall", -- [2]
				},
				[162691] = {
					"Blightbone", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[173720] = {
					"Mistveil Gorgegullet", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[133972] = {
					"Heavy Cannon", -- [1]
					"Tol Dagor", -- [2]
				},
				[165911] = {
					"Loyal Creation", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[127486] = {
					"Ashvane Officer", -- [1]
					"Tol Dagor", -- [2]
				},
				[162692] = {
					"Amarth", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[165529] = {
					"Depraved Collector", -- [1]
					"Halls of Atonement", -- [2]
				},
				[168398] = {
					"Slimy Morsel", -- [1]
					"Plaguefall", -- [2]
				},
				[164414] = {
					"Reanimated Mage", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[162693] = {
					"Nalthor the Rimebinder", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[164255] = {
					"Globgrog", -- [1]
					"Plaguefall", -- [2]
				},
				[165913] = {
					"Ghastly Parishioner", -- [1]
					"Halls of Atonement", -- [2]
				},
				[164702] = {
					"Carrion Worm", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[166264] = {
					"Spare Parts", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[163619] = {
					"Zolramus Bonecarver", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[164926] = {
					"Drust Boughbreaker", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[163620] = {
					"Rotspew", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[127488] = {
					"Ashvane Flamecaster", -- [1]
					"Tol Dagor", -- [2]
				},
				[107104] = {
					"Target Dummy", -- [1]
					"8.0 Boost Experience - Horde", -- [2]
				},
				[165597] = {
					"Patchwerk Soldier", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[170474] = {
					"Brood Assassin", -- [1]
					"Plaguefall", -- [2]
				},
				[163621] = {
					"Goregrind", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[164705] = {
					"Pestilence Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[164737] = {
					"Brood Ambusher", -- [1]
					"Plaguefall", -- [2]
				},
				[166299] = {
					"Mistveil Tender", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[164578] = {
					"Stitchflesh's Creation", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[163622] = {
					"Goregrind Bits", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[164929] = {
					"Tirnenn Villager", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[167607] = {
					"Stoneborn Slasher", -- [1]
					"Halls of Atonement", -- [2]
				},
				[135254] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[163623] = {
					"Rotspew Leftovers", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[169265] = {
					"Creepy Crawler", -- [1]
					"Plaguefall", -- [2]
				},
				[168022] = {
					"Slime Tentacle", -- [1]
					"Plaguefall", -- [2]
				},
				[166301] = {
					"Mistveil Stalker", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[165919] = {
					"Skeletal Marauder", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[127490] = {
					"Knight Captain Valyri", -- [1]
					"Tol Dagor", -- [2]
				},
				[174175] = {
					"Loyal Stoneborn", -- [1]
					"Halls of Atonement", -- [2]
				},
				[164517] = {
					"Tred'ova", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[164804] = {
					"Droman Oulfarran", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[165410] = {
					"High Adjudicator Aleez", -- [1]
					"Halls of Atonement", -- [2]
				},
				[167610] = {
					"Stonefiend Anklebiter", -- [1]
					"Halls of Atonement", -- [2]
				},
				[130025] = {
					"Irontide Thug", -- [1]
					"Tol Dagor", -- [2]
				},
				[166304] = {
					"Mistveil Stinger", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[167611] = {
					"Stoneborn Eviscerator", -- [1]
					"Halls of Atonement", -- [2]
				},
				[167898] = {
					"Manifestation of Envy", -- [1]
					"Halls of Atonement", -- [2]
				},
				[171500] = {
					"Shuffling Corpse", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[163882] = {
					"Decaying Flesh Giant", -- [1]
					"Plaguefall", -- [2]
				},
				[167612] = {
					"Stoneborn Reaver", -- [1]
					"Halls of Atonement", -- [2]
				},
				[130026] = {
					"Bilge Rat Seaspeaker", -- [1]
					"Tol Dagor", -- [2]
				},
				[165222] = {
					"Zolramus Bonemender", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[135706] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[165430] = {
					"Malignant Spawn", -- [1]
					"Plaguefall", -- [2]
				},
				[164362] = {
					"Slimy Morsel", -- [1]
					"Plaguefall", -- [2]
				},
				[165414] = {
					"Depraved Obliterator", -- [1]
					"Halls of Atonement", -- [2]
				},
				[164266] = {
					"Domina Venomblade", -- [1]
					"Plaguefall", -- [2]
				},
				[165560] = {
					"Gormling Larva", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[166275] = {
					"Mistveil Shaper", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[164267] = {
					"Margrave Stradama", -- [1]
					"Plaguefall", -- [2]
				},
				[135699] = {
					"Ashvane Jailer", -- [1]
					"Tol Dagor", -- [2]
				},
				[164967] = {
					"Doctor Ickus", -- [1]
					"Plaguefall", -- [2]
				},
				[164363] = {
					"Undying Stonefiend", -- [1]
					"Halls of Atonement", -- [2]
				},
				[165415] = {
					"Toiling Groundskeeper", -- [1]
					"Halls of Atonement", -- [2]
				},
				[130027] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[101738] = {
					"Arcane Construct", -- [1]
					"8.0 Boost Experience - Horde", -- [2]
				},
				[166276] = {
					"Mistveil Guardian", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[168886] = {
					"Virulax Blightweaver", -- [1]
					"Plaguefall", -- [2]
				},
				[87761] = {
					"Dungeoneer's Training Dummy", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[162729] = {
					"Patchwerk Soldier", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[170484] = {
					"Chillbone Gnawer", -- [1]
					"8.0 Boost Experience - Horde", -- [2]
				},
				[163121] = {
					"Stitched Vanguard", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[163618] = {
					"Zolramus Necromancer", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[136665] = {
					"Ashvane Spotter", -- [1]
					"Tol Dagor", -- [2]
				},
				[168572] = {
					"Fungi Stormer", -- [1]
					"Plaguefall", -- [2]
				},
				[135366] = {
					"Blacktooth Arsonist", -- [1]
					"Tol Dagor", -- [2]
				},
				[168891] = {
					"Rigged Plagueborer", -- [1]
					"Plaguefall", -- [2]
				},
				[163058] = {
					"Mistveil Defender", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[172981] = {
					"Kyrian Stitchwerk", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[163122] = {
					"Brittlebone Warrior", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[130028] = {
					"Ashvane Priest", -- [1]
					"Tol Dagor", -- [2]
				},
				[163862] = {
					"Defender of Many Eyes", -- [1]
					"Plaguefall", -- [2]
				},
				[169498] = {
					"Plague Bomb", -- [1]
					"Plaguefall", -- [2]
				},
				[164563] = {
					"Vicious Gargon", -- [1]
					"Halls of Atonement", -- [2]
				},
				[164557] = {
					"Shard of Halkias", -- [1]
					"Halls of Atonement", -- [2]
				},
				[88288] = {
					"Dungeoneer's Training Dummy", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[163915] = {
					"Hatchling Nest", -- [1]
					"Plaguefall", -- [2]
				},
				[168988] = {
					"Overgrowth", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[165111] = {
					"Drust Spiteclaw", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[167731] = {
					"Separation Assistant", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[168574] = {
					"Pestilent Harvester", -- [1]
					"Plaguefall", -- [2]
				},
				[173360] = {
					"Plaguebelcher", -- [1]
					"Plaguefall", -- [2]
				},
				[163857] = {
					"Plaguebound Devoted", -- [1]
					"Plaguefall", -- [2]
				},
				[168153] = {
					"Plagueroc", -- [1]
					"Plaguefall", -- [2]
				},
				[170487] = {
					"Stoneguard Watcher", -- [1]
					"8.0 Boost Experience - Horde", -- [2]
				},
				[168310] = {
					"Plagueroc", -- [1]
					"Plaguefall", -- [2]
				},
				[127479] = {
					"The Sand Queen", -- [1]
					"Tol Dagor", -- [2]
				},
				[130087] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[165515] = {
					"Depraved Darkblade", -- [1]
					"Halls of Atonement", -- [2]
				},
				[168365] = {
					"Fungret Shroomtender", -- [1]
					"Plaguefall", -- [2]
				},
				[166079] = {
					"Brittlebone Crossbowman", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[167615] = {
					"Depraved Darkblade", -- [1]
					"Halls of Atonement", -- [2]
				},
				[166266] = {
					"Spare Parts", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[127503] = {
					"Overseer Korgus", -- [1]
					"Tol Dagor", -- [2]
				},
				[163157] = {
					"Amarth", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[168396] = {
					"Plaguebelcher", -- [1]
					"Plaguefall", -- [2]
				},
				[165408] = {
					"Halkias", -- [1]
					"Halls of Atonement", -- [2]
				},
				[167876] = {
					"Inquisitor Sigar", -- [1]
					"Halls of Atonement", -- [2]
				},
				[164815] = {
					"Zolramus Siphoner", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[165357] = {
					"Pestilence Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[127480] = {
					"Stinging Parasite", -- [1]
					"Tol Dagor", -- [2]
				},
				[163126] = {
					"Brittlebone Mage", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[167493] = {
					"Venomous Sniper", -- [1]
					"Plaguefall", -- [2]
				},
				[127381] = {
					"Silt Crab", -- [1]
					"Tol Dagor", -- [2]
				},
				[112000] = {
					"Horde Grunt", -- [1]
					"8.0 Boost Experience - Horde", -- [2]
				},
				[163891] = {
					"Rotmarrow Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[167111] = {
					"Spinemaw Staghorn", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[164567] = {
					"Ingra Maloch", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[164427] = {
					"Reanimated Warrior", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[163892] = {
					"Rotting Slimeclaw", -- [1]
					"Plaguefall", -- [2]
				},
				[165197] = {
					"Skeletal Monstrosity", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[167806] = {
					"Animated Sin", -- [1]
					"Halls of Atonement", -- [2]
				},
				[168578] = {
					"Fungalmancer", -- [1]
					"Plaguefall", -- [2]
				},
				[136735] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[164562] = {
					"Depraved Houndmaster", -- [1]
					"Halls of Atonement", -- [2]
				},
				[131112] = {
					"Cutwater Striker", -- [1]
					"Tol Dagor", -- [2]
				},
				[166302] = {
					"Corpse Harvester", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[163128] = {
					"Zolramus Sorcerer", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[134600] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[127497] = {
					"Ashvane Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[165824] = {
					"Nar'zudah", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[130582] = {
					"Despondent Scallywag", -- [1]
					"Tol Dagor", -- [2]
				},
				[167113] = {
					"Spinemaw Acidgullet", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[131445] = {
					"Block Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[165137] = {
					"Zolramus Gatekeeper", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[163894] = {
					"Blighted Spinebreaker", -- [1]
					"Plaguefall", -- [2]
				},
				[79414] = {
					"Training Dummy", -- [1]
					"8.0 Boost Experience - Horde", -- [2]
				},
				[169159] = {
					"Unstable Canister", -- [1]
					"Plaguefall", -- [2]
				},
				[168580] = {
					"Plagueborer", -- [1]
					"Plaguefall", -- [2]
				},
				[167892] = {
					"Tormented Soul", -- [1]
					"Halls of Atonement", -- [2]
				},
				[168627] = {
					"Plaguebinder", -- [1]
					"Plaguefall", -- [2]
				},
				[169696] = {
					"Mire Soldier", -- [1]
					"Plaguefall", -- [2]
				},
				[165138] = {
					"Blight Bag", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[111998] = {
					"Horde Grunt", -- [1]
					"8.0 Boost Experience - Horde", -- [2]
				},
				[168907] = {
					"Slime Tentacle", -- [1]
					"Plaguefall", -- [2]
				},
			},
			["hook_data_trash"] = {
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n    \n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        local horizontalLength = (-padding or 0)\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 1, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == 1) then\n                        auraIcon:SetPoint (\"bottomleft\", anchorPoint, \"bottomleft\", 0, 0)\n                    elseif (i % framersPerRow == 0) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding or 0)\n                        framersPerRow = framersPerRow + framersPerRow\n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                    horizontalLength = horizontalLength + auraIcon:GetWidth() + padding\n                end\n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 1, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == 1) then\n                        auraIcon:SetPoint (\"bottomright\", anchorPoint, \"bottomright\", 0, 0)\n                    elseif (i % framersPerRow == 0) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding or 0)\n                        framersPerRow = framersPerRow + framersPerRow\n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                    horizontalLength = horizontalLength + auraIcon:GetWidth() + padding\n                end                    \n            end\n            \n            --set the size of the buff frame\n            anchorPoint:SetWidth (horizontalLength)\n            anchorPoint:SetHeight (firstIcon:GetHeight())\n            \n        end\n    end\nend\n\n\n",
					},
					["__TrashAt"] = 1609250216,
					["Time"] = 1596741775,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Enabled"] = false,
					["Revision"] = 295,
					["semver"] = "",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Aura Reorder [Plater]",
					["HooksTemp"] = {
					},
					["Options"] = {
					},
				}, -- [1]
			},
			["hook_auto_imported"] = {
				["Reorder Nameplate"] = 4,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Hide Neutral Units"] = 1,
				["Cast Bar Icon Config"] = 2,
				["Aura Reorder"] = 3,
				["Combo Points"] = 4,
				["Extra Border"] = 2,
				["Target Color"] = 3,
				["Attacking Specific Unit"] = 1,
				["Execute Range"] = 1,
			},
			["captured_spells"] = {
				[204262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mikhoshamet",
					["npcID"] = 0,
				},
				[327584] = {
					["source"] = "Plaguebelcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168393,
				},
				[53385] = {
					["source"] = "Finti-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223202] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Backsplitter-Kazzak",
					["npcID"] = 0,
				},
				[347037] = {
					["source"] = "Riizla-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337824] = {
					["source"] = "Paksi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223203] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Backsplitter-Kazzak",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Ocarenyth-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[127230] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Molineux-Ghostlands",
					["npcID"] = 0,
				},
				[268211] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Runecarver Sorn",
					["npcID"] = 134150,
				},
				[344993] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vicious Gargon",
					["npcID"] = 164563,
				},
				[268212] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[327590] = {
					["source"] = "Plaguebelcher",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168393,
				},
				[125439] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nightreign-Ghostlands",
					["npcID"] = 0,
				},
				[323496] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Flesh Crafter",
					["npcID"] = 165872,
				},
				[268214] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Runecarver Sorn",
					["npcID"] = 134150,
				},
				[330664] = {
					["source"] = "Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166981,
				},
				[255966] = {
					["npcID"] = 126832,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
				},
				[322475] = {
					["encounterID"] = 2386,
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274359] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lord Stormsong",
					["npcID"] = 139737,
				},
				[222695] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[256991] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frightened Brutosaur",
					["npcID"] = 129668,
				},
				[336810] = {
					["source"] = "Tremaculum Soulhunter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167947,
				},
				[8004] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[133630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[326574] = {
					["npcID"] = 162689,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Surgeon Stitchflesh",
					["encounterID"] = 2389,
				},
				[324527] = {
					["encounterID"] = 2382,
					["source"] = "Globgrog",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164255,
				},
				[317361] = {
					["source"] = "Blóodraven",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24394] = {
					["type"] = "DEBUFF",
					["source"] = "Clefthoof",
					["encounterID"] = 2125,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[325552] = {
					["encounterID"] = 2385,
					["source"] = "Domina Venomblade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164266,
				},
				[57994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[527] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[2139] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[8680] = {
					["source"] = "Sundår-Ravencrest",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267203] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202225] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 105759,
				},
				[8936] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[262115] = {
					["source"] = "Felâir-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324536] = {
					["source"] = "Bastiancx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Priest of Gonk",
					["npcID"] = 131809,
				},
				[589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Umbrosus-Sylvanas",
					["npcID"] = 0,
				},
				[334776] = {
					["type"] = "BUFF",
					["source"] = "Rønin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268233] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Guardian Elemental",
					["npcID"] = 136249,
				},
				[260070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pa'kura Priest",
					["npcID"] = 131834,
				},
				[267211] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[190456] = {
					["type"] = "BUFF",
					["source"] = "Felâir-Stormscale",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[321471] = {
					["type"] = "BUFF",
					["source"] = "Mistcaller",
					["npcID"] = 164501,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2392,
				},
				[260072] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pa'kura Priest",
					["npcID"] = 131834,
				},
				[345019] = {
					["source"] = "Smygiz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268239] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Guardian Elemental",
					["npcID"] = 136249,
				},
				[5221] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[336832] = {
					["source"] = "Stärk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2643] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309193] = {
					["source"] = "Rakkisha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[691] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[697] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bigtdygothgf-Ravencrest",
					["npcID"] = 0,
				},
				[256493] = {
					["type"] = "BUFF",
					["source"] = "Azerite Footbomb",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129246,
				},
				[53390] = {
					["source"] = "Clubber-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mistveil Defender",
					["npcID"] = 171772,
				},
				[309199] = {
					["source"] = "Cirí-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132621] = {
					["source"] = "Trylletove-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328651] = {
					["source"] = "Venomous Sniper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167493,
				},
				[320462] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zolramus Gatekeeper",
					["npcID"] = 165137,
				},
				[185857] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Marine",
					["npcID"] = 130027,
				},
				[236021] = {
					["source"] = "Timetoheal-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35859] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nether Vapor",
					["npcID"] = 21002,
				},
				[176644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hòót-Ragnaros",
					["npcID"] = 0,
				},
				[326607] = {
					["type"] = "BUFF",
					["source"] = "Stoneborn Reaver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167612,
				},
				[195072] = {
					["source"] = "Bølla-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261616] = {
					["type"] = "BUFF",
					["source"] = "Katy Stampwhistle",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132969,
				},
				[196608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singsing-Lightning'sBlade",
					["npcID"] = 0,
				},
				[269279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ærön-Stormscale",
					["npcID"] = 0,
				},
				[323538] = {
					["npcID"] = 165410,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "High Adjudicator Aleez",
					["encounterID"] = 2403,
				},
				[781] = {
					["source"] = "Kvger-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ghostik-Ghostlands",
					["npcID"] = 0,
				},
				[193538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rîchi-Outland",
					["npcID"] = 0,
				},
				[265187] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["encounterID"] = 2101,
				},
				[225787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moldrus-Ravencrest",
					["npcID"] = 0,
				},
				[177159] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[328661] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168969,
				},
				[196099] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vaelke-TwistingNether",
					["npcID"] = 0,
				},
				[30283] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[264166] = {
					["npcID"] = 134828,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aqualing",
					["encounterID"] = 2130,
				},
				[304093] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Odalrik",
					["npcID"] = 172207,
				},
				[102417] = {
					["source"] = "Kinny-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Brittlebone Mage",
					["npcID"] = 163126,
				},
				[3355] = {
					["source"] = "Deathsaber-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307166] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Olssmaister-Silvermoon",
					["npcID"] = 0,
				},
				[845] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frimpala-TwistingNether",
					["npcID"] = 0,
				},
				[6789] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["encounterID"] = 2101,
				},
				[135700] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[853] = {
					["encounterID"] = 2106,
					["source"] = "Tùràmbàr-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195590] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Felskorn Torturer",
					["npcID"] = 96121,
				},
				[345048] = {
					["source"] = "Baaung",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[871] = {
					["type"] = "BUFF",
					["source"] = "Kuhmo-TarrenMill",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190984] = {
					["source"] = "Babawa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[48018] = {
					["source"] = "Østrogains-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[883] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[323552] = {
					["npcID"] = 165410,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "High Adjudicator Aleez",
					["encounterID"] = 2403,
				},
				[203782] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[331743] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mistveil Guardian",
					["npcID"] = 166276,
				},
				[16591] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Élsa-Karazhan",
					["npcID"] = 0,
				},
				[264178] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[921] = {
					["source"] = "Dsolve",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[269298] = {
					["source"] = "Hired Assassin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134232,
				},
				[326629] = {
					["type"] = "BUFF",
					["source"] = "Surgeon Stitchflesh",
					["npcID"] = 162689,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2389,
				},
				[255996] = {
					["encounterID"] = 2105,
					["source"] = "Babos-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224772] = {
					["source"] = "Kiraji",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185358] = {
					["source"] = "Zerodaypanda",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[343011] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
				},
				[323560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rothschild-Deathwing",
					["npcID"] = 0,
				},
				[326632] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Stoneborn Reaver",
					["npcID"] = 167612,
				},
				[343013] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
				},
				[33943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Legenaris",
					["npcID"] = 0,
				},
				[329706] = {
					["source"] = "Mawsworn Interceptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167941,
				},
				[309232] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Garlicbread-Deathwing",
					["npcID"] = 0,
				},
				[307185] = {
					["source"] = "Deydey-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31884] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bananasbaz-Talnivarr",
					["npcID"] = 0,
				},
				[326637] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stoneborn Eviscerator",
					["npcID"] = 167611,
				},
				[263165] = {
					["source"] = "Andal-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326638] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Stoneborn Eviscerator",
					["npcID"] = 167611,
				},
				[307187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fitch",
					["npcID"] = 0,
				},
				[328687] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brittlebone Crossbowman",
					["npcID"] = 166079,
				},
				[257537] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[327664] = {
					["npcID"] = 162689,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Surgeon Stitchflesh",
					["encounterID"] = 2389,
				},
				[160793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hòót-Ragnaros",
					["npcID"] = 0,
				},
				[186387] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fumino-Nemesis",
					["npcID"] = 0,
				},
				[326642] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stoneborn Eviscerator",
					["npcID"] = 167611,
				},
				[322548] = {
					["type"] = "BUFF",
					["source"] = "Stitchflesh's Creation",
					["npcID"] = 164578,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2389,
				},
				[176151] = {
					["source"] = "Velarea-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[322550] = {
					["npcID"] = 164517,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tred'ova",
					["encounterID"] = 2393,
				},
				[274434] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Galecaller Apprentice",
					["npcID"] = 139800,
				},
				[321527] = {
					["source"] = "Powq-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273411] = {
					["type"] = "BUFF",
					["source"] = "Aspix",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133944,
				},
				[1122] = {
					["source"] = "Professortom-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[307196] = {
					["source"] = "Sparx-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113942] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lockajizz-Lightning'sBlade",
					["npcID"] = 0,
				},
				[325624] = {
					["source"] = "Blóodraven",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257541] = {
					["source"] = "Englemakeren-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274437] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Galecaller Apprentice",
					["npcID"] = 139800,
				},
				[324601] = {
					["source"] = "Harding",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45334] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mortha",
					["npcID"] = 0,
				},
				[335863] = {
					["source"] = "Creepy Crawler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 169265,
				},
				[203795] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[290819] = {
					["type"] = "BUFF",
					["source"] = "Deathsaber-Draenor",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117014] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[118038] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[322557] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drust Soulcleaver",
					["npcID"] = 172991,
				},
				[254472] = {
					["source"] = "Pahandus-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260103] = {
					["encounterID"] = 2107,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257544] = {
					["type"] = "DEBUFF",
					["source"] = "Earthrager",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129802,
				},
				[320512] = {
					["source"] = "Rotting Slimeclaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 163892,
				},
				[203286] = {
					["source"] = "Faffy-Frostmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279564] = {
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167154,
				},
				[330752] = {
					["type"] = "BUFF",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2387,
				},
				[262161] = {
					["source"] = "Peonify-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279565] = {
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167154,
				},
				[322563] = {
					["npcID"] = 164517,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tred'ova",
					["encounterID"] = 2393,
				},
				[188443] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[213525] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Draenei Anchorite",
					["npcID"] = 97682,
				},
				[313350] = {
					["source"] = "General Purpose Bunny ZTO",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 62167,
				},
				[5302] = {
					["type"] = "BUFF",
					["source"] = "Kuhmo-TarrenMill",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279567] = {
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167154,
				},
				[313351] = {
					["source"] = "Pridefall Dredger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 156413,
				},
				[241680] = {
					["npcID"] = 139737,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lord Stormsong",
					["encounterID"] = 2130,
				},
				[201754] = {
					["source"] = "face",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165189,
				},
				[273428] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Crazysan-Ravencrest",
					["npcID"] = 0,
				},
				[322569] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drust Soulcleaver",
					["npcID"] = 172991,
				},
				[342021] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loyal Stoneborn",
					["npcID"] = 174175,
				},
				[207386] = {
					["source"] = "Ripco-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329737] = {
					["source"] = "Druwiwu-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281621] = {
					["source"] = "Mech Jockey",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130488,
				},
				[5782] = {
					["source"] = "Professortom-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1490] = {
					["source"] = "Berthollet-Pozzodell'Eternità",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Heavy Cannon",
					["npcID"] = 133972,
				},
				[12042] = {
					["source"] = "Nebroc-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280602] = {
					["source"] = "Mech Jockey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130488,
				},
				[348170] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stitchflesh's Creation",
					["npcID"] = 164578,
				},
				[48792] = {
					["source"] = "Katshu-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93985] = {
					["source"] = "Goobýpls-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[334863] = {
					["source"] = "Shoehorn-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Linglaoichi",
					["npcID"] = 0,
				},
				[6262] = {
					["source"] = "Østrogains-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263202] = {
					["source"] = "Venture Co. Earthshaper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[194594] = {
					["source"] = "Zerodaypanda",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[42650] = {
					["source"] = "Bloodynine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Uorwik-Nemesis",
					["npcID"] = 0,
				},
				[348176] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bridled Shadehound",
					["npcID"] = 173149,
				},
				[257044] = {
					["source"] = "Zerodaypanda",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26064] = {
					["source"] = "Sigilback",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[324631] = {
					["source"] = "Lightore-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246807] = {
					["source"] = "Ocarenyth-Outland",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186406] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bloodynine",
					["npcID"] = 0,
				},
				[327704] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Olssmaister-Silvermoon",
					["npcID"] = 0,
				},
				[327705] = {
					["source"] = "Dashibeth-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263209] = {
					["source"] = "Mine Rat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130437,
				},
				[264233] = {
					["type"] = "BUFF",
					["source"] = "Egg",
					["encounterID"] = 2125,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134516,
				},
				[264234] = {
					["encounterID"] = 2125,
					["source"] = "Egg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134516,
				},
				[265258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[1714] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[236060] = {
					["source"] = "Deirn-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264235] = {
					["encounterID"] = 2125,
					["source"] = "Egg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134517,
				},
				[106785] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[119582] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[327709] = {
					["source"] = "Rústy-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184362] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[292903] = {
					["source"] = "Ruiner Maroth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166714,
				},
				[264239] = {
					["type"] = "BUFF",
					["source"] = "Egg",
					["encounterID"] = 2125,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134517,
				},
				[16595] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Notkatty-Kazzak",
					["npcID"] = 0,
				},
				[335903] = {
					["source"] = "Malizious-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1822] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[335904] = {
					["source"] = "Malizious-Ravencrest",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16979] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mortha",
					["npcID"] = 0,
				},
				[330786] = {
					["source"] = "Ickor Bileflesh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 169861,
				},
				[85288] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1850] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[258075] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stinging Parasite",
					["npcID"] = 127480,
				},
				[287790] = {
					["source"] = "Redßarøn-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342049] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thallandorr-ArgentDawn",
					["npcID"] = 0,
				},
				[347168] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331812] = {
					["source"] = "Amalgamation of Light",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164388,
				},
				[207400] = {
					["source"] = "Clubber-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[331813] = {
					["source"] = "Amalgamation of Light",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164388,
				},
				[337956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Isweariheal-TwistingNether",
					["npcID"] = 0,
				},
				[265271] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184367] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83242] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fumino-Nemesis",
					["npcID"] = 0,
				},
				[203819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[265273] = {
					["type"] = "BUFF",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[132157] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[1966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[331818] = {
					["type"] = "DEBUFF",
					["source"] = "Domina Venomblade",
					["encounterID"] = 2385,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164266,
				},
				[324652] = {
					["encounterID"] = 2382,
					["source"] = "Globgrog",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164255,
				},
				[195630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[258079] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sewer Vicejaw",
					["npcID"] = 127482,
				},
				[2006] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[294966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leroga-Aggramar",
					["npcID"] = 0,
				},
				[267325] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[185394] = {
					["source"] = "Vixtie",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[317491] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267329] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[148541] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[17364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[322614] = {
					["npcID"] = 164517,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tred'ova",
					["encounterID"] = 2393,
				},
				[215598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cloom-Dragonblight",
					["npcID"] = 0,
				},
				[323639] = {
					["source"] = "Emberwake-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[340020] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[57755] = {
					["source"] = "Bq-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[319547] = {
					["source"] = "Aggregate of Doom",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165706,
				},
				[320571] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zolramus Sorcerer",
					["npcID"] = 163128,
				},
				[33697] = {
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[344118] = {
					["source"] = "Naustra-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62618] = {
					["source"] = "Blightwyrm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256039] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Overseer Korgus",
					["encounterID"] = 2104,
				},
				[296003] = {
					["source"] = "Clubber-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268362] = {
					["source"] = "Wanton Sapper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130653,
				},
				[111400] = {
					["source"] = "Pandae-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236077] = {
					["source"] = "Peonify-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2484] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[263246] = {
					["type"] = "BUFF",
					["source"] = "Aspix",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133944,
				},
				[10060] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Madura",
					["npcID"] = 0,
				},
				[24275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[342076] = {
					["source"] = "Zerodaypanda",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wotzoq",
					["npcID"] = 0,
				},
				[330816] = {
					["source"] = "Ickor Bileflesh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 169861,
				},
				[323650] = {
					["type"] = "DEBUFF",
					["source"] = "Ghastly Parishioner",
					["npcID"] = 165913,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2403,
				},
				[191034] = {
					["source"] = "Pufu-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rogush",
					["npcID"] = 0,
				},
				[192058] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[319556] = {
					["source"] = "Fearfulcat-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[50334] = {
					["type"] = "BUFF",
					["source"] = "Mortha",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2401,
				},
				[333889] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigtdygothgf-Ravencrest",
					["npcID"] = 0,
				},
				[319557] = {
					["source"] = "Fearfulcat-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105771] = {
					["source"] = "Felâir-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[325700] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Depraved Collector",
					["npcID"] = 165529,
				},
				[262228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frimpala-TwistingNether",
					["npcID"] = 0,
				},
				[325701] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Depraved Collector",
					["npcID"] = 165529,
				},
				[256044] = {
					["type"] = "DEBUFF",
					["source"] = "Overseer Korgus",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[292942] = {
					["source"] = "Ruiner Maroth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166714,
				},
				[26067] = {
					["source"] = "Goodspy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Neonoir-ArgentDawn",
					["npcID"] = 0,
				},
				[345155] = {
					["source"] = "Imprisoned Soul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 176149,
				},
				[297039] = {
					["source"] = "Gupalo-Terokkar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262232] = {
					["source"] = "Felâir-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201787] = {
					["source"] = "Powq-Sylvanas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263257] = {
					["encounterID"] = 2124,
					["source"] = "Aspix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133944,
				},
				[257582] = {
					["encounterID"] = 2106,
					["source"] = "Earthrager",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129802,
				},
				[319565] = {
					["source"] = "Østrogains-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267354] = {
					["source"] = "Hired Assassin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134232,
				},
				[2948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[326733] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maugris-TwistingNether",
					["npcID"] = 0,
				},
				[116011] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[52127] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scoobydobydo-Deathwing",
					["npcID"] = 0,
				},
				[263262] = {
					["encounterID"] = 2105,
					["source"] = "Shalebiter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134005,
				},
				[334926] = {
					["source"] = "Rigged Plagueborer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168891,
				},
				[49184] = {
					["source"] = "Deathgirl-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8269] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mightstone Savage",
					["npcID"] = 108283,
				},
				[79925] = {
					["source"] = "Seer Janidi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112002,
				},
				[320596] = {
					["npcID"] = 162691,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightbone",
					["encounterID"] = 2387,
				},
				[6343] = {
					["source"] = "Bq-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265315] = {
					["source"] = "Eye of Sethraliss",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135336,
				},
				[160331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nojavaaka-Kazzak",
					["npcID"] = 0,
				},
				[338003] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Depraved Obliterator",
					["npcID"] = 165414,
				},
				[338004] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toiling Groundskeeper",
					["npcID"] = 165415,
				},
				[322648] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2393,
				},
				[310364] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 159156,
				},
				[323673] = {
					["source"] = "Stouris-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267367] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130485,
				},
				[265320] = {
					["source"] = "Bastiancx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116014] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[316509] = {
					["source"] = "Carved Cataloger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156257,
				},
				[214593] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ferngrazer Doe",
					["npcID"] = 108313,
				},
				[331866] = {
					["source"] = "Smicker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263275] = {
					["type"] = "BUFF",
					["source"] = "Taskmaster Askari",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[187464] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[208963] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105427,
				},
				[324701] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zagtag",
					["npcID"] = 0,
				},
				[322654] = {
					["npcID"] = 164517,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tred'ova",
					["encounterID"] = 2393,
				},
				[338012] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Anima Fountain",
					["npcID"] = 166497,
				},
				[257593] = {
					["encounterID"] = 2106,
					["source"] = "Azerokk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[320610] = {
					["source"] = "Malice Shadow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165909,
				},
				[107570] = {
					["source"] = "Peonify-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275566] = {
					["source"] = "Poonpuncher-Magtheridon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54049] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhuumon",
					["npcID"] = 417,
				},
				[217668] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murvurk",
					["npcID"] = 0,
				},
				[331874] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 174877,
				},
				[3716] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Makkrit",
					["npcID"] = 1860,
				},
				[320614] = {
					["npcID"] = 164702,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Carrion Worm",
					["encounterID"] = 2387,
				},
				[51490] = {
					["source"] = "Bigothunter-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315496] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Iamtrash-Kazzak",
					["npcID"] = 0,
				},
				[203849] = {
					["source"] = "Abouji",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205385] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[185422] = {
					["source"] = "Smygiz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269429] = {
					["source"] = "Venture Co. War Machine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[262263] = {
					["source"] = "Grotesque Experiment",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133345,
				},
				[192077] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Luxsi-TwistingNether",
					["npcID"] = 0,
				},
				[338022] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Patchwerk Soldier",
					["npcID"] = 162729,
				},
				[339046] = {
					["source"] = "Withering Presence",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 169759,
				},
				[311405] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sladira-Ravencrest",
					["npcID"] = 0,
				},
				[260669] = {
					["encounterID"] = 2107,
					["source"] = "Rixxa Fluxflame",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[311406] = {
					["source"] = "Albinoilidan-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258622] = {
					["encounterID"] = 2106,
					["source"] = "Azerokk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[203852] = {
					["source"] = "Gorbad-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262268] = {
					["source"] = "Venture Co. Alchemist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133432,
				},
				[262270] = {
					["source"] = "Venture Co. Alchemist",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133432,
				},
				[108853] = {
					["source"] = "Englemakeren-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246851] = {
					["source"] = "Deathsaber-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192081] = {
					["source"] = "Druwiwu-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[110645] = {
					["source"] = "Zelenda-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246852] = {
					["source"] = "Deathsaber-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Neonoir-ArgentDawn",
					["npcID"] = 0,
				},
				[319603] = {
					["type"] = "DEBUFF",
					["source"] = "Echelon",
					["npcID"] = 164185,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2380,
				},
				[192082] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wind Rush Totem",
					["npcID"] = 97285,
				},
				[221771] = {
					["encounterID"] = 2106,
					["source"] = "Babos-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[326771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stoneborn Slasher",
					["npcID"] = 167607,
				},
				[223819] = {
					["type"] = "BUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[325748] = {
					["source"] = "Moofa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["source"] = "Azelthas-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320630] = {
					["type"] = "DEBUFF",
					["source"] = "Carrion Worm",
					["npcID"] = 164702,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2387,
				},
				[333939] = {
					["source"] = "Endlurker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165206,
				},
				[320631] = {
					["npcID"] = 164702,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Carrion Worm",
					["encounterID"] = 2387,
				},
				[257092] = {
					["npcID"] = 127479,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "The Sand Queen",
					["encounterID"] = 2101,
				},
				[338036] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Grarr-Deathwing",
					["npcID"] = 0,
				},
				[344179] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[322681] = {
					["npcID"] = 164578,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stitchflesh's Creation",
					["encounterID"] = 2389,
				},
				[319611] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2380,
				},
				[204883] = {
					["source"] = "Moffe",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206931] = {
					["source"] = "Fettedeilig",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[320637] = {
					["npcID"] = 162691,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightbone",
					["encounterID"] = 2387,
				},
				[338041] = {
					["source"] = "Synergistic-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115767] = {
					["source"] = "Bq-Karazhan",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mortha",
					["npcID"] = 0,
				},
				[257608] = {
					["type"] = "BUFF",
					["source"] = "The Sand Queen",
					["npcID"] = 127479,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[324736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mistveil Defender",
					["npcID"] = 163058,
				},
				[257609] = {
					["type"] = "BUFF",
					["source"] = "The Sand Queen",
					["npcID"] = 127479,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[324737] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mistveil Defender",
					["npcID"] = 171772,
				},
				[340094] = {
					["source"] = "Smygiz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275598] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140902,
				},
				[192090] = {
					["source"] = "Baaung",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324739] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nishikin",
					["npcID"] = 0,
				},
				[270481] = {
					["npcID"] = 135002,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demonic Tyrant",
					["encounterID"] = 2101,
				},
				[321669] = {
					["npcID"] = 165108,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Illusionary Clone",
					["encounterID"] = 2392,
				},
				[310408] = {
					["source"] = "Darkhaven Villager",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167744,
				},
				[320646] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2387,
				},
				[47399] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ferngrazer Doe",
					["npcID"] = 108313,
				},
				[281744] = {
					["source"] = "Rohtori-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328837] = {
					["source"] = "Harding",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263318] = {
					["encounterID"] = 2124,
					["source"] = "Aspix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133944,
				},
				[185438] = {
					["source"] = "Smygiz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265366] = {
					["npcID"] = 134828,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aqualing",
					["encounterID"] = 2130,
				},
				[5672] = {
					["type"] = "BUFF",
					["source"] = "Healing Stream Totem",
					["npcID"] = 3527,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[343173] = {
					["source"] = "Smygiz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312461] = {
					["source"] = "Animus Mite",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 159676,
				},
				[268440] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Crackshot",
					["npcID"] = 126918,
				},
				[326794] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Inquisitor Sigar",
					["npcID"] = 167876,
				},
				[5784] = {
					["source"] = "Zulq",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318605] = {
					["source"] = "Greater Ash Crawler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 163816,
				},
				[336009] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Isweariheal-TwistingNether",
					["npcID"] = 0,
				},
				[324748] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wildez",
					["npcID"] = 0,
				},
				[55078] = {
					["source"] = "Coldfinger",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[336010] = {
					["source"] = "Baralinnis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47528] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[320655] = {
					["npcID"] = 162691,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightbone",
					["encounterID"] = 2387,
				},
				[334988] = {
					["source"] = "Plaguebound Gargantuan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 171596,
				},
				[48168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96955,
				},
				[44457] = {
					["source"] = "Englemakeren-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113724] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Neonoir-ArgentDawn",
					["encounterID"] = 2131,
				},
				[257617] = {
					["npcID"] = 127479,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "The Sand Queen",
					["encounterID"] = 2101,
				},
				[345228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigfistalert",
					["npcID"] = 0,
				},
				[119611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ajay-Outland",
					["npcID"] = 0,
				},
				[323730] = {
					["type"] = "DEBUFF",
					["source"] = "Nalthor the Rimebinder",
					["npcID"] = 162693,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2390,
				},
				[124218] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Katryna-Karazhan",
					["npcID"] = 0,
				},
				[345230] = {
					["source"] = "Meetydudu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317589] = {
					["source"] = "Faffy-Frostmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256083] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Overseer Korgus",
					["encounterID"] = 2104,
				},
				[195682] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Felskorn Torturer",
					["npcID"] = 96121,
				},
				[322709] = {
					["npcID"] = 164517,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tred'ova",
					["encounterID"] = 2393,
				},
				[331923] = {
					["source"] = "Depraved Cryptkeeper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158910,
				},
				[326806] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Inquisitor Sigar",
					["npcID"] = 167876,
				},
				[217694] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258133] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bilge Rat Looter",
					["npcID"] = 127485,
				},
				[271526] = {
					["encounterID"] = 2106,
					["source"] = "Earthrager",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129802,
				},
				[342165] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326809] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lemuclmic-Deathwing",
					["npcID"] = 0,
				},
				[37548] = {
					["source"] = "Warlord Zakgra",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 105317,
				},
				[257622] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fumino-Nemesis",
					["npcID"] = 0,
				},
				[258134] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bilge Rat Looter",
					["npcID"] = 127485,
				},
				[267433] = {
					["source"] = "Mech Jockey",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130488,
				},
				[34477] = {
					["type"] = "BUFF",
					["source"] = "Catwoma-Sanguino",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34861] = {
					["encounterID"] = 2403,
					["source"] = "Moffe",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311457] = {
					["source"] = "Arkyn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311458] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Karcer-Dragonblight",
					["npcID"] = 0,
				},
				[342171] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maugris-TwistingNether",
					["npcID"] = 0,
				},
				[181867] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[327839] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
				},
				[195688] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blazesight Oculus",
					["npcID"] = 99450,
				},
				[320674] = {
					["source"] = "Cudlekins-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[325793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Depraved Houndmaster",
					["npcID"] = 164562,
				},
				[194153] = {
					["source"] = "Babawa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263345] = {
					["npcID"] = 134025,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Heavy Cannon",
					["encounterID"] = 2104,
				},
				[338079] = {
					["source"] = "Brood Ambusher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164737,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fghlp-Dragonblight",
					["npcID"] = 0,
				},
				[331937] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Khalaria-Silvermoon",
					["npcID"] = 0,
				},
				[77130] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shermanette",
					["npcID"] = 0,
				},
				[338081] = {
					["source"] = "Stealthling",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168837,
				},
				[274609] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136251,
				},
				[324773] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dargoz",
					["npcID"] = 0,
				},
				[325797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Depraved Houndmaster",
					["npcID"] = 164562,
				},
				[311465] = {
					["source"] = "Cheó-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199786] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivoid-BurningLegion",
					["encounterID"] = 2388,
				},
				[311466] = {
					["type"] = "BUFF",
					["source"] = "Kumlock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269493] = {
					["type"] = "BUFF",
					["source"] = "Coin-Operated Crowd Pummeler",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[311467] = {
					["source"] = "Dimag",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistveil Shaper",
					["npcID"] = 166275,
				},
				[322729] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[311468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shammkd",
					["npcID"] = 0,
				},
				[342181] = {
					["type"] = "BUFF",
					["source"] = "Phantti-Lightning'sBlade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311469] = {
					["source"] = "Chevywhippa-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195181] = {
					["source"] = "Coldfinger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[323755] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kirâ-Dragonblight",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[260190] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[195182] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257119] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[19483] = {
					["source"] = "Infernal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 89,
				},
				[326829] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Inquisitor Sigar",
					["npcID"] = 167876,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shivar",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Felâir-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311474] = {
					["source"] = "Zest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333997] = {
					["source"] = "Endlurker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165206,
				},
				[311475] = {
					["source"] = "Bugeza-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308404] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jahnacky-Dragonblight",
					["npcID"] = 0,
				},
				[61353] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dagna Flintlock",
					["npcID"] = 96779,
				},
				[311476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Perussjamppa-Silvermoon",
					["npcID"] = 0,
				},
				[308405] = {
					["source"] = "Norbit-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[342189] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Loyal Stoneborn",
					["npcID"] = 174175,
				},
				[323762] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kirâ-Dragonblight",
					["npcID"] = 0,
				},
				[310454] = {
					["source"] = "Whïtetïger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311478] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dom-Karazhan",
					["npcID"] = 0,
				},
				[97097] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 88779,
				},
				[323764] = {
					["source"] = "Pufu-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215661] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maugris-TwistingNether",
					["encounterID"] = 2381,
				},
				[311480] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ellipsiz",
					["npcID"] = 0,
				},
				[65873] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Escaped Convict",
					["npcID"] = 133605,
				},
				[311481] = {
					["source"] = "Chocolata-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12975] = {
					["type"] = "BUFF",
					["source"] = "Kuhmo-TarrenMill",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[321719] = {
					["source"] = "Absolver Meylann",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165151,
				},
				[48045] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[320696] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stitched Vanguard",
					["npcID"] = 163121,
				},
				[311483] = {
					["source"] = "Ðreamhatcher-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308412] = {
					["source"] = "Tarkel-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188534] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Itsosmpl-Ghostlands",
					["npcID"] = 0,
				},
				[280772] = {
					["encounterID"] = 2382,
					["source"] = "Pogopro-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311485] = {
					["source"] = "Zwehunter",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280773] = {
					["type"] = "DEBUFF",
					["source"] = "Pogopro-Stormscale",
					["encounterID"] = 2382,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258150] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bilge Rat Seaspeaker",
					["npcID"] = 130026,
				},
				[308415] = {
					["source"] = "Urizk-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262347] = {
					["encounterID"] = 2105,
					["source"] = "Coin-Operated Crowd Pummeler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[263371] = {
					["encounterID"] = 2124,
					["source"] = "Aspix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133944,
				},
				[321725] = {
					["type"] = "BUFF",
					["source"] = "Illusionary Clone",
					["npcID"] = 165108,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2392,
				},
				[188024] = {
					["source"] = "Fettedeilig",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ironhull Apprentice",
					["npcID"] = 139799,
				},
				[280776] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315584] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thompson",
					["npcID"] = 0,
				},
				[320703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stitched Vanguard",
					["npcID"] = 163121,
				},
				[326846] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Inquisitor Sigar",
					["npcID"] = 167876,
				},
				[311490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boostmeinpve-Kazzak",
					["npcID"] = 0,
				},
				[201846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[326847] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Inquisitor Sigar",
					["npcID"] = 167876,
				},
				[256105] = {
					["type"] = "DEBUFF",
					["source"] = "Overseer Korgus",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[232559] = {
					["source"] = "Goobýpls-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[330943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lishech-Dragonblight",
					["npcID"] = 0,
				},
				[311492] = {
					["source"] = "Zerodaypanda",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cravl-Ghostlands",
					["npcID"] = 0,
				},
				[311493] = {
					["source"] = "Whïtetïger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49966] = {
					["source"] = "Clefthoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165189,
				},
				[311494] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Molineux-Ghostlands",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[322756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zolramus Gatekeeper",
					["npcID"] = 165137,
				},
				[260202] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[59052] = {
					["source"] = "Deathgirl-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311496] = {
					["source"] = "Zerodaypanda",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[173184] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[78674] = {
					["source"] = "Babawa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311497] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Supremedonut-Wildhammer",
					["npcID"] = 0,
				},
				[311498] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Giratina-Dragonblight",
					["npcID"] = 0,
				},
				[311499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harr",
					["npcID"] = 0,
				},
				[40625] = {
					["source"] = "Shendelaze",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114250] = {
					["source"] = "Ocarenyth-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[339142] = {
					["type"] = "BUFF",
					["source"] = "Ginsta",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22812] = {
					["source"] = "Druwiwu-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308430] = {
					["source"] = "Nodan-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188031] = {
					["source"] = "Überox-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[327882] = {
					["source"] = "Plagueroc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168153,
				},
				[328906] = {
					["source"] = "Finti-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Banknoz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[320717] = {
					["type"] = "DEBUFF",
					["source"] = "Carrion Worm",
					["npcID"] = 164702,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2387,
				},
				[55342] = {
					["source"] = "Stärk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328908] = {
					["source"] = "Smygiz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47536] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[308434] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chunkers-Lightning'sBlade",
					["npcID"] = 0,
				},
				[322767] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drust Harvester",
					["npcID"] = 164921,
				},
				[258672] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Crackshot",
					["npcID"] = 126918,
				},
				[185474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Faendar-Ravencrest",
					["npcID"] = 0,
				},
				[188034] = {
					["source"] = "Hardiy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106830] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[108366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zarconix-Stormscale",
					["npcID"] = 0,
				},
				[324819] = {
					["source"] = "Envious Soul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 166621,
				},
				[264420] = {
					["source"] = "Virvel-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319703] = {
					["type"] = "DEBUFF",
					["source"] = "Echelon",
					["npcID"] = 164185,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2380,
				},
				[325846] = {
					["source"] = "Manifestation of Rage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160477,
				},
				[339155] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167493,
				},
				[259188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 127497,
				},
				[321753] = {
					["source"] = "Leeched Soul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165152,
				},
				[323802] = {
					["source"] = "Emberwake-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228477] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[53] = {
					["source"] = "Smygiz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196741] = {
					["source"] = "Shâdrach-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[341207] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[325851] = {
					["source"] = "Manifestation of Rage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160477,
				},
				[338137] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hydra Seed",
					["npcID"] = 172995,
				},
				[212610] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nightingales-Frostmane",
					["npcID"] = 0,
				},
				[196742] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigfistalert",
					["npcID"] = 0,
				},
				[225919] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azzigoth-Draenor",
					["npcID"] = 0,
				},
				[51505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[272620] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cutwater Striker",
					["npcID"] = 131112,
				},
				[326879] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stonefiend Anklebiter",
					["npcID"] = 167610,
				},
				[262383] = {
					["source"] = "Venture Co. War Machine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[313571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shamobu-TwistingNether",
					["npcID"] = 0,
				},
				[225921] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azzigoth-Draenor",
					["npcID"] = 0,
				},
				[210053] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stensture-Deathwing",
					["npcID"] = 0,
				},
				[33206] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[157331] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Storm Elemental",
					["npcID"] = 77942,
				},
				[198793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Conversant-Outland",
					["npcID"] = 0,
				},
				[205448] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[342242] = {
					["source"] = "Nebroc-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96946,
				},
				[113746] = {
					["source"] = "Whïtetïger",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319724] = {
					["type"] = "BUFF",
					["source"] = "Undying Stonefiend",
					["npcID"] = 164363,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2380,
				},
				[321772] = {
					["type"] = "BUFF",
					["source"] = "Droman Oulfarran",
					["npcID"] = 164804,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2397,
				},
				[326891] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Inquisitor Sigar",
					["npcID"] = 167876,
				},
				[260734] = {
					["source"] = "Bigothunter-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55090] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodynine",
					["npcID"] = 0,
				},
				[335082] = {
					["source"] = "Devjin-BurningBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259711] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Block Warden",
					["npcID"] = 131445,
				},
				[307443] = {
					["source"] = "Widdl-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345323] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2390,
				},
				[325872] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Depraved Obliterator",
					["npcID"] = 165414,
				},
				[123986] = {
					["source"] = "Wyllow-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263425] = {
					["source"] = "Adderis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133379,
				},
				[191634] = {
					["source"] = "Bigothunter-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[66] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[339184] = {
					["source"] = "Domina Venomblade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164266,
				},
				[319733] = {
					["npcID"] = 164185,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Echelon",
					["encounterID"] = 2380,
				},
				[1079] = {
					["source"] = "Gaidouris-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[325876] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Depraved Obliterator",
					["npcID"] = 165414,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yegar-Deathwing",
					["npcID"] = 0,
				},
				[106839] = {
					["source"] = "Goobýpls-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[334067] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lògics",
					["npcID"] = 0,
				},
				[269571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Samidin-Ravencrest",
					["npcID"] = 0,
				},
				[308474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lunagal",
					["npcID"] = 0,
				},
				[301308] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Luxsi-TwistingNether",
					["encounterID"] = 2387,
				},
				[307452] = {
					["source"] = "Lost Sybille",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157763,
				},
				[119381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Murvurk",
					["npcID"] = 0,
				},
				[307454] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320763] = {
					["source"] = "Mana Tide Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 10467,
				},
				[269576] = {
					["source"] = "Zerodaypanda",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333049] = {
					["source"] = "Stärk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222863] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bloodynine",
					["npcID"] = 0,
				},
				[345335] = {
					["source"] = "Emberwake-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73313] = {
					["source"] = "Dathing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262412] = {
					["source"] = "Mechanized Peacekeeper",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130485,
				},
				[325886] = {
					["source"] = "Mataru-Frostmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[40120] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wallahdruid-TwistingNether",
					["npcID"] = 0,
				},
				[48438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hailopai-Blackmoore",
					["npcID"] = 0,
				},
				[273677] = {
					["encounterID"] = 2127,
					["source"] = "Unknown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137204,
				},
				[336126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jules",
					["npcID"] = 0,
				},
				[272654] = {
					["source"] = "Mature Krolusk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134686,
				},
				[266512] = {
					["encounterID"] = 2126,
					["source"] = "Galvazzt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133389,
				},
				[320771] = {
					["npcID"] = 162693,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nalthor the Rimebinder",
					["encounterID"] = 2390,
				},
				[272655] = {
					["source"] = "Mature Krolusk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134686,
				},
				[261769] = {
					["source"] = "Poonpuncher-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320772] = {
					["type"] = "BUFF",
					["source"] = "Nalthor the Rimebinder",
					["npcID"] = 162693,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2390,
				},
				[308488] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272657] = {
					["source"] = "Scaled Krolusk Rider",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134629,
				},
				[157348] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Primal Storm Elemental",
					["npcID"] = 77942,
				},
				[272659] = {
					["source"] = "Scaled Krolusk Rider",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134629,
				},
				[326918] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kyruus-TwistingNether",
					["npcID"] = 0,
				},
				[327942] = {
					["source"] = "Windfury Totem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 6112,
				},
				[308491] = {
					["source"] = "Harding",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[329990] = {
					["source"] = "Animated Protector",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158644,
				},
				[115546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[336135] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Élsa-Karazhan",
					["npcID"] = 0,
				},
				[328969] = {
					["source"] = "Depraved Archivist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 176109,
				},
				[328970] = {
					["source"] = "Depraved Usher",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158908,
				},
				[80483] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thallandorr-ArgentDawn",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267546] = {
					["source"] = "Rowdy Reveler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144231,
				},
				[267547] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[294165] = {
					["source"] = "Soulsmith Yol-Mattar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165047,
				},
				[336139] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Turbodps-Karazhan",
					["npcID"] = 0,
				},
				[308498] = {
					["source"] = "Harding",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[321807] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zolramus Bonecarver",
					["npcID"] = 163619,
				},
				[320784] = {
					["type"] = "DEBUFF",
					["source"] = "Nalthor the Rimebinder",
					["npcID"] = 162693,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2390,
				},
				[341260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[309524] = {
					["source"] = "Gavkosh-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267551] = {
					["source"] = "Coin-Operated Crowd Pummeler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[272670] = {
					["source"] = "Sandswept Marksman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134600,
				},
				[347404] = {
					["source"] = "Mawsworn Willbreaker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167942,
				},
				[115804] = {
					["source"] = "Poonpuncher-Magtheridon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309526] = {
					["source"] = "Kellstrom-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[138927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bgmutra-Kazzak",
					["npcID"] = 0,
				},
				[341263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stuodur-Nemesis",
					["npcID"] = 0,
				},
				[198817] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308504] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcueid-Lightning'sBlade",
					["npcID"] = 0,
				},
				[154796] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chuma-Ravencrest",
					["npcID"] = 0,
				},
				[100] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zodvaal-Outland",
					["npcID"] = 0,
				},
				[260243] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harding",
					["npcID"] = 0,
				},
				[79206] = {
					["source"] = "Bigothunter-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154797] = {
					["source"] = "Zerodaypanda",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[198819] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lockajizz-Lightning'sBlade",
					["npcID"] = 0,
				},
				[308509] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sersin-Karazhan",
					["npcID"] = 0,
				},
				[272678] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309534] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Grarr-Deathwing",
					["npcID"] = 0,
				},
				[328986] = {
					["source"] = "Unstable Canister",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 169159,
				},
				[1715] = {
					["source"] = "Peonify-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1719] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[321821] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blight Bag",
					["npcID"] = 165138,
				},
				[230046] = {
					["source"] = "Laoise-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[338202] = {
					["source"] = "Stagsinger-Thunderhorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308514] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fitch",
					["npcID"] = 0,
				},
				[338203] = {
					["source"] = "Stagsinger-Thunderhorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32223] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Suzlit-GrimBatol",
					["npcID"] = 0,
				},
				[79976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 168597,
				},
				[338204] = {
					["source"] = "Stagsinger-Thunderhorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81256] = {
					["type"] = "BUFF",
					["source"] = "Coldfinger",
					["encounterID"] = 2125,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stunogdrep-Stormscale",
					["npcID"] = 0,
				},
				[163505] = {
					["source"] = "Gaidouris-Deathwing",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331042] = {
					["source"] = "Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167827,
				},
				[323876] = {
					["source"] = "Harding",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308520] = {
					["source"] = "Machunter-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116] = {
					["source"] = "Oxazepam-GrimBatol",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247454] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azzigoth-Draenor",
					["npcID"] = 0,
				},
				[341282] = {
					["source"] = "Necroschizm-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[335141] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nar'zudah",
					["npcID"] = 165824,
				},
				[114018] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[120] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[323881] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308525] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zeevee",
					["npcID"] = 0,
				},
				[321834] = {
					["npcID"] = 164501,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistcaller",
					["encounterID"] = 2392,
				},
				[247456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azzigoth-Draenor",
					["npcID"] = 0,
				},
				[1943] = {
					["source"] = "Smygiz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[272696] = {
					["source"] = "Crazed Incubator",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139425,
				},
				[324909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drust Boughbreaker",
					["npcID"] = 164926,
				},
				[272698] = {
					["source"] = "Crazed Incubator",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139425,
				},
				[194223] = {
					["source"] = "Pufu-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199854] = {
					["source"] = "Felâir-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[341291] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lantzas-Lightning'sBlade",
					["npcID"] = 0,
				},
				[272700] = {
					["source"] = "Faithless Tender",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134364,
				},
				[8122] = {
					["source"] = "Azelthas-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[342316] = {
					["source"] = "Matildá",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8212] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murvurk",
					["npcID"] = 0,
				},
				[275773] = {
					["source"] = "Khag-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301367] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zilvanas",
					["npcID"] = 0,
				},
				[20707] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[324914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistveil Tender",
					["npcID"] = 166299,
				},
				[212653] = {
					["source"] = "Blóodraven",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155835] = {
					["source"] = "Druwiwu-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[133] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sixyer-Kazzak",
					["encounterID"] = 2101,
				},
				[268609] = {
					["source"] = "Bastiancx-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[136] = {
					["encounterID"] = 2124,
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[234153] = {
					["encounterID"] = 2124,
					["source"] = "Bastiancx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Teqsama-Stormscale",
					["npcID"] = 0,
				},
				[330037] = {
					["source"] = "Fen Hornet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168361,
				},
				[275779] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[65081] = {
					["source"] = "Azelthas-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Highscht-Deathwing",
					["npcID"] = 0,
				},
				[195765] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yotnar",
					["npcID"] = 96175,
				},
				[196277] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[324923] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drust Boughbreaker",
					["npcID"] = 164926,
				},
				[335161] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19236] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[268619] = {
					["source"] = "Deathgirl-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blight Bag",
					["npcID"] = 165138,
				},
				[80240] = {
					["source"] = "Rooflighter-Outland",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122470] = {
					["type"] = "BUFF",
					["source"] = "Poonpuncher-Magtheridon",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["source"] = "Faru",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5211] = {
					["source"] = "Gaidouris-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328002] = {
					["source"] = "Pestilent Harvester",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168574,
				},
				[17253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cornofurente",
					["npcID"] = 165189,
				},
				[167105] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271698] = {
					["encounterID"] = 2106,
					["source"] = "Azerokk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[202425] = {
					["source"] = "Redßarøn-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124007] = {
					["source"] = "Xuen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 63508,
				},
				[320839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zolramus Siphoner",
					["npcID"] = 164815,
				},
				[172] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[116841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Beefster",
					["npcID"] = 0,
				},
				[152262] = {
					["source"] = "Drakfus-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53822] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Boemot-Outland",
					["npcID"] = 0,
				},
				[267611] = {
					["source"] = "Pallyiaan-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["source"] = "Ocarenyth-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[340300] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistveil Gorgegullet",
					["npcID"] = 173720,
				},
				[109933] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dakungen",
					["npcID"] = 0,
				},
				[216251] = {
					["source"] = "Clubber-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328016] = {
					["source"] = "Fungalmancer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168578,
				},
				[3110] = {
					["source"] = "Choyal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[271711] = {
					["source"] = "Babawa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16870] = {
					["source"] = "Moofa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116844] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Flowjoee-Drak'thul",
					["npcID"] = 0,
				},
				[221883] = {
					["source"] = "Latex-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[305497] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tymorâ-Silvermoon",
					["npcID"] = 0,
				},
				[340305] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistveil Gorgegullet",
					["npcID"] = 173720,
				},
				[326997] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stoneborn Slasher",
					["npcID"] = 167607,
				},
				[330069] = {
					["encounterID"] = 2382,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221885] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bloodclud-Dragonblight",
					["npcID"] = 0,
				},
				[81782] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[110959] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Élsa-Karazhan",
					["npcID"] = 0,
				},
				[6795] = {
					["source"] = "Druwiwu-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274792] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Released Crawg",
					["npcID"] = 140149,
				},
				[311648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nightingales-Frostmane",
					["npcID"] = 0,
				},
				[110960] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Élsa-Karazhan",
					["npcID"] = 0,
				},
				[19750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zuliana-Deathwing",
					["npcID"] = 0,
				},
				[260280] = {
					["type"] = "BUFF",
					["source"] = "Mogul Razdunk",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[260792] = {
					["source"] = "Unknown",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134600,
				},
				[264560] = {
					["npcID"] = 134056,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aqu'sirr",
					["encounterID"] = 2130,
				},
				[194249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[262513] = {
					["source"] = "Venture Co. Skyscorcher",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133436,
				},
				[203975] = {
					["source"] = "Yesod-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155347] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[262515] = {
					["source"] = "Venture Co. Skyscorcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133436,
				},
				[345439] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309608] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kirâ-Dragonblight",
					["npcID"] = 0,
				},
				[55233] = {
					["source"] = "Coldfinger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152277] = {
					["source"] = "Peonify-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Creepy-Deathwing",
					["npcID"] = 0,
				},
				[256700] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Psolarpaxtra-ChamberofAspects",
					["npcID"] = 0,
				},
				[331109] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116849] = {
					["source"] = "Tchervychek",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56641] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maemoblei-TwistingNether",
					["npcID"] = 0,
				},
				[48707] = {
					["source"] = "Bloodynine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[327016] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 159156,
				},
				[346470] = {
					["source"] = "Harding",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[343399] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mortha",
					["npcID"] = 0,
				},
				[199373] = {
					["source"] = "Army of the Dead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24207,
				},
				[309616] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kirâ-Dragonblight",
					["npcID"] = 0,
				},
				[309617] = {
					["source"] = "Hena-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[323951] = {
					["source"] = "Taskmaster Matyas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166081,
				},
				[264574] = {
					["source"] = "Sandswept Marksman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134600,
				},
				[32612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[213708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mortha",
					["npcID"] = 0,
				},
				[124274] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[309623] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Strafe-Deathwing",
					["npcID"] = 0,
				},
				[214222] = {
					["source"] = "Khag-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[257732] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blacktooth Knuckleduster",
					["npcID"] = 129547,
				},
				[196819] = {
					["source"] = "Smygiz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[322936] = {
					["npcID"] = 165408,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Halkias",
					["encounterID"] = 2401,
				},
				[44614] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[236746] = {
					["source"] = "Banzu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304510] = {
					["source"] = "Finti-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[322938] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drust Harvester",
					["npcID"] = 164921,
				},
				[256198] = {
					["type"] = "BUFF",
					["source"] = "Overseer Korgus",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[304511] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[322939] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drust Harvester",
					["npcID"] = 164921,
				},
				[329082] = {
					["source"] = "Mucksquint",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166042,
				},
				[256199] = {
					["type"] = "BUFF",
					["source"] = "Overseer Korgus",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[329083] = {
					["source"] = "Mucksquint",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166042,
				},
				[264587] = {
					["source"] = "Krolusk Pup",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134616,
				},
				[262540] = {
					["source"] = "Expert Technician",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133593,
				},
				[13877] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[191192] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Felskorn Runetwister",
					["npcID"] = 96215,
				},
				[346489] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 175897,
				},
				[322943] = {
					["npcID"] = 165408,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Halkias",
					["encounterID"] = 2401,
				},
				[329086] = {
					["source"] = "Mucksquint",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 166042,
				},
				[256201] = {
					["type"] = "DEBUFF",
					["source"] = "Overseer Korgus",
					["npcID"] = 127503,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2104,
				},
				[329087] = {
					["source"] = "Shamanysha-Outland",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334206] = {
					["source"] = "Bolduin-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5116] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[329088] = {
					["source"] = "Harding",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326017] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208086] = {
					["source"] = "Felâir-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212182] = {
					["source"] = "Lightore-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[335234] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[339] = {
					["source"] = "Praimefaya-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260811] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[321927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harding",
					["npcID"] = 0,
				},
				[104316] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[340355] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[348] = {
					["source"] = "Rooflighter-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[340356] = {
					["source"] = "Pestilence Slime",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164705,
				},
				[36554] = {
					["source"] = "Smygiz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274837] = {
					["source"] = "Gaidouris-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Illisandre-TwistingNether",
					["npcID"] = 0,
				},
				[272790] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[260813] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[5740] = {
					["source"] = "Rooflighter-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116858] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Improve-Sylvanas",
					["npcID"] = 0,
				},
				[51271] = {
					["type"] = "BUFF",
					["source"] = "Gadielo",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51399] = {
					["source"] = "Coldfinger",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[71558] = {
					["source"] = "Catwoma-Sanguino",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263583] = {
					["source"] = "Taskmaster Askari",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134012,
				},
				[268702] = {
					["type"] = "BUFF",
					["source"] = "Stonefury",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130635,
				},
				[192225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shamobu-TwistingNether",
					["npcID"] = 0,
				},
				[329104] = {
					["npcID"] = 164218,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lord Chamberlain",
					["encounterID"] = 2381,
				},
				[268703] = {
					["source"] = "Charged Dust Devil",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134990,
				},
				[198368] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scumfist-Draenor",
					["npcID"] = 0,
				},
				[71559] = {
					["source"] = "Catwoma-Sanguino",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263586] = {
					["source"] = "Taskmaster Askari",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134012,
				},
				[268705] = {
					["source"] = "Sand-Crusted Striker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135846,
				},
				[330131] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Improve-Sylvanas",
					["npcID"] = 0,
				},
				[330132] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[218845] = {
					["source"] = "Catwoma-Sanguino",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337299] = {
					["type"] = "BUFF",
					["source"] = "Hena-Ghostlands",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[322967] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drust Spiteclaw",
					["npcID"] = 165111,
				},
				[17962] = {
					["source"] = "Nonis-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[329110] = {
					["encounterID"] = 2384,
					["source"] = "Doctor Ickus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164967,
				},
				[268709] = {
					["source"] = "Venture Co. Earthshaper",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130661,
				},
				[322968] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drust Spiteclaw",
					["npcID"] = 165111,
				},
				[330135] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212704] = {
					["source"] = "Zaejine-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308637] = {
					["source"] = "Fyllekatt",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329113] = {
					["npcID"] = 164218,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lord Chamberlain",
					["encounterID"] = 2381,
				},
				[268712] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130653,
				},
				[13750] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[314783] = {
					["source"] = "Druwiwu-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[325021] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mistveil Stalker",
					["npcID"] = 166301,
				},
				[281000] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[60103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[326046] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spinemaw Staghorn",
					["npcID"] = 167111,
				},
				[328094] = {
					["source"] = "Virulax Blightweaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168886,
				},
				[271788] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thallandorr-ArgentDawn",
					["npcID"] = 0,
				},
				[321952] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tirnenn Villager",
					["npcID"] = 164929,
				},
				[325024] = {
					["source"] = "Darkwall Suppresser",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 169707,
				},
				[322977] = {
					["npcID"] = 165408,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Halkias",
					["encounterID"] = 2401,
				},
				[196840] = {
					["source"] = "Bibbiråtta",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312740] = {
					["source"] = "Druwiwu-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263601] = {
					["source"] = "Taskmaster Askari",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[325027] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drust Boughbreaker",
					["npcID"] = 164926,
				},
				[121471] = {
					["source"] = "Riizla-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314791] = {
					["source"] = "Stärk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[465] = {
					["source"] = "Meithos-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331172] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2393,
				},
				[191212] = {
					["source"] = "Aniothos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326054] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314793] = {
					["source"] = "Faffy-Frostmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272820] = {
					["source"] = "Imbued Stormcaller",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134599,
				},
				[15286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[22570] = {
					["source"] = "Anydelx-Frostmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260829] = {
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132338,
				},
				[147193] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[217832] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azzigoth-Draenor",
					["npcID"] = 0,
				},
				[326059] = {
					["source"] = "Bigothunter-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[310703] = {
					["source"] = "Abused Soul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 159459,
				},
				[260318] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[46924] = {
					["source"] = "Pogopro-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mourias-Lightning'sBlade",
					["npcID"] = 0,
				},
				[171253] = {
					["source"] = "Corvana-Kilrogg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[321968] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tirnenn Villager",
					["npcID"] = 164929,
				},
				[114052] = {
					["type"] = "BUFF",
					["source"] = "Shamobu-TwistingNether",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2387,
				},
				[334255] = {
					["source"] = "Ðreamhatcher-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317877] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Darkwing Commander",
					["npcID"] = 165267,
				},
				[338353] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Corpse Collector",
					["npcID"] = 173016,
				},
				[546] = {
					["source"] = "Kallestra-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316855] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stone Legion Warden",
					["npcID"] = 167908,
				},
				[556] = {
					["source"] = "Sparx-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314809] = {
					["source"] = "Goobýpls-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[344498] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[321976] = {
					["encounterID"] = 2384,
					["source"] = "Pestilence Slime",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165357,
				},
				[145152] = {
					["source"] = "Gaidouris-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[338357] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kyrian Stitchwerk",
					["npcID"] = 172981,
				},
				[323001] = {
					["type"] = "DEBUFF",
					["source"] = "Halkias",
					["npcID"] = 165408,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2401,
				},
				[115078] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Murvurk",
					["npcID"] = 0,
				},
				[586] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[204019] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Blóodraven",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260838] = {
					["encounterID"] = 2108,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328124] = {
					["type"] = "BUFF",
					["source"] = "Undying Stonefiend",
					["npcID"] = 164363,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2380,
				},
				[263628] = {
					["source"] = "Mechanized Peacekeeper",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130485,
				},
				[297412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rapturekid-Ravencrest",
					["npcID"] = 0,
				},
				[243435] = {
					["type"] = "BUFF",
					["source"] = "Poonpuncher-Magtheridon",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328125] = {
					["npcID"] = 164363,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Undying Stonefiend",
					["encounterID"] = 2380,
				},
				[204021] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[208628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ednasmaster-Dragonblight",
					["npcID"] = 0,
				},
				[324031] = {
					["source"] = "Theheat-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[329151] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Taskmaster Matyas",
					["npcID"] = 165834,
				},
				[327104] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singsing-Lightning'sBlade",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Tùràmbàr-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334271] = {
					["source"] = "Goobýpls-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278989] = {
					["source"] = "Paladaniel-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[255723] = {
					["source"] = "Druwiwu-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Víperz-Dragonblight",
					["npcID"] = 0,
				},
				[337345] = {
					["source"] = "Fanatic Crusader",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 159459,
				},
				[263636] = {
					["source"] = "Addled Thug",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130435,
				},
				[25771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Spedi-Dragonblight",
					["npcID"] = 0,
				},
				[295373] = {
					["source"] = "Tastemycombo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jahden Fla",
					["npcID"] = 122704,
				},
				[686] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[52174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wotzoq",
					["npcID"] = 0,
				},
				[337348] = {
					["source"] = "Arrogant Blademaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 159459,
				},
				[334277] = {
					["source"] = "Faffy-Frostmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[702] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["encounterID"] = 2101,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mick-Deathwing",
					["npcID"] = 0,
				},
				[308685] = {
					["source"] = "Malizious-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bestmageeu-Deathwing",
					["npcID"] = 0,
				},
				[337351] = {
					["source"] = "Covetous Pirate-King",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 159459,
				},
				[326090] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spinemaw Reaver",
					["npcID"] = 167116,
				},
				[295378] = {
					["source"] = "Wolfgrim",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329162] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Taskmaster Matyas",
					["npcID"] = 165834,
				},
				[323020] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drust Spiteclaw",
					["npcID"] = 165111,
				},
				[329163] = {
					["source"] = "Stealthling",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168837,
				},
				[264667] = {
					["source"] = "Clefthoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[118922] = {
					["source"] = "Kvger-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[341449] = {
					["source"] = "Octabia-Sanguino",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Psychoses",
					["npcID"] = 0,
				},
				[345545] = {
					["source"] = "Redsnk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[321999] = {
					["source"] = "Pestilence Slime",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164705,
				},
				[213243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[345546] = {
					["source"] = "Meetydudu",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317905] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Darkwing Rebel",
					["npcID"] = 165323,
				},
				[228600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Gj",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329168] = {
					["npcID"] = 165737,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sinstone Statue",
					["encounterID"] = 2381,
				},
				[774] = {
					["source"] = "Pufu-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57934] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[12472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[329170] = {
					["npcID"] = 165737,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sinstone Statue",
					["encounterID"] = 2381,
				},
				[347598] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "General Purpose Bunny ZTO",
					["npcID"] = 172537,
				},
				[329171] = {
					["npcID"] = 165737,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sinstone Statue",
					["encounterID"] = 2381,
				},
				[343504] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Opeth",
					["npcID"] = 174783,
				},
				[345552] = {
					["source"] = "Mawsworn Harbinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168585,
				},
				[347600] = {
					["source"] = "Geret",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Amunn-Lightning'sBlade",
					["npcID"] = 0,
				},
				[8921] = {
					["source"] = "Babawa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[818] = {
					["source"] = "Tarkel-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[345554] = {
					["source"] = "Mawsworn Harbinger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168585,
				},
				[304606] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Amunn-Lightning'sBlade",
					["npcID"] = 0,
				},
				[334295] = {
					["source"] = "Peék-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[343509] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Opeth",
					["npcID"] = 174783,
				},
				[111759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[268776] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 130257,
				},
				[327130] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Flesh Crafter",
					["npcID"] = 165872,
				},
				[194310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bloodynine",
					["npcID"] = 0,
				},
				[187656] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Felskorn Warmonger",
					["npcID"] = 96135,
				},
				[193287] = {
					["source"] = "Finti-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Amunn-Lightning'sBlade",
					["npcID"] = 0,
				},
				[257272] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sharkbait",
					["npcID"] = 129743,
				},
				[304612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Amunn-Lightning'sBlade",
					["npcID"] = 0,
				},
				[257785] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jes Howlis",
					["encounterID"] = 2102,
				},
				[257274] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[323043] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drust Spiteclaw",
					["npcID"] = 165111,
				},
				[318949] = {
					["source"] = "Blighted Spinebreaker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 163894,
				},
				[324068] = {
					["source"] = "Lerazz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[304619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Amunn-Lightning'sBlade",
					["npcID"] = 0,
				},
				[212743] = {
					["source"] = "Dsolve",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255741] = {
					["source"] = "Scaled Krolusk Rider",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134629,
				},
				[324073] = {
					["source"] = "Lightore-Deathwing",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[310765] = {
					["source"] = "Depraved Tormentor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158897,
				},
				[974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[50259] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[980] = {
					["source"] = "Bastiancx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23214] = {
					["source"] = "Maidenton-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[343527] = {
					["source"] = "Paladaniel-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[321005] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ingra Maloch",
					["npcID"] = 164567,
				},
				[335338] = {
					["type"] = "DEBUFF",
					["source"] = "Lord Chamberlain",
					["npcID"] = 164218,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2381,
				},
				[262652] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[325101] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Steward",
					["npcID"] = 166663,
				},
				[213771] = {
					["source"] = "Druwiwu-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268797] = {
					["source"] = "Venture Co. Alchemist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133432,
				},
				[20271] = {
					["source"] = "Ocarenyth-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[323057] = {
					["npcID"] = 164567,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ingra Maloch",
					["encounterID"] = 2397,
				},
				[321010] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ingra Maloch",
					["npcID"] = 164567,
				},
				[323058] = {
					["source"] = "Salvage Dredger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165609,
				},
				[1044] = {
					["source"] = "Kondemn-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Glitterklitt",
					["npcID"] = 0,
				},
				[323059] = {
					["npcID"] = 164804,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Droman Oulfarran",
					["encounterID"] = 2397,
				},
				[1064] = {
					["source"] = "Clubber-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[334321] = {
					["type"] = "BUFF",
					["source"] = "Surgeon Stitchflesh",
					["npcID"] = 162689,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2389,
				},
				[327155] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loyal Creation",
					["npcID"] = 165911,
				},
				[162074] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodtotem Flameheart",
					["npcID"] = 100435,
				},
				[289277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Beachbodie",
					["npcID"] = 0,
				},
				[328180] = {
					["source"] = "Plaguebinder",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168627,
				},
				[223500] = {
					["source"] = "Kallestra-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257284] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thallandorr-ArgentDawn",
					["npcID"] = 0,
				},
				[336372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frimpala-TwistingNether",
					["npcID"] = 0,
				},
				[271877] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[160029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[1160] = {
					["source"] = "Kuhmo-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22703] = {
					["source"] = "Professortom-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269831] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236299] = {
					["source"] = "Furionss-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307711] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oversize-Deathwing",
					["npcID"] = 0,
				},
				[195350] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mightstone Savage",
					["npcID"] = 96236,
				},
				[268810] = {
					["source"] = "Test Subject",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133963,
				},
				[327164] = {
					["source"] = "Bigothunter-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219921] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Throwing Veggies",
					["npcID"] = 110605,
				},
				[292359] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Luhcnaz-Sylvanas",
					["npcID"] = 0,
				},
				[292360] = {
					["source"] = "Rezan-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Officer",
					["npcID"] = 127486,
				},
				[292361] = {
					["source"] = "Redsnk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268815] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133963,
				},
				[292362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Royaldeath-Dragonblight",
					["npcID"] = 0,
				},
				[5246] = {
					["source"] = "Mataru-Frostmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292363] = {
					["source"] = "Stoofpot",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292364] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zeevee",
					["npcID"] = 0,
				},
				[316935] = {
					["source"] = "Briarbane Sentinel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166432,
				},
				[316936] = {
					["source"] = "Azkelina-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194844] = {
					["source"] = "Fettedeilig",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115098] = {
					["source"] = "Whïtetïger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197916] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Creepy-Deathwing",
					["npcID"] = 0,
				},
				[259853] = {
					["type"] = "DEBUFF",
					["source"] = "Rixxa Fluxflame",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129231,
				},
				[325130] = {
					["source"] = "Stärk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[320012] = {
					["type"] = "BUFF",
					["source"] = "Amarth",
					["npcID"] = 163157,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2388,
				},
				[271896] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[210714] = {
					["source"] = "Shamanysha-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1464] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102558] = {
					["source"] = "Druwiwu-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23920] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273947] = {
					["source"] = "Coldfinger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328206] = {
					["npcID"] = 164185,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Echelon",
					["encounterID"] = 2380,
				},
				[197919] = {
					["source"] = "Tomaat-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259856] = {
					["encounterID"] = 2107,
					["source"] = "Rixxa Fluxflame",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[344587] = {
					["source"] = "Jiingo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8219] = {
					["source"] = "Haeli",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209693] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[260369] = {
					["type"] = "DEBUFF",
					["source"] = "Dsolve",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 17252,
				},
				[289308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[188196] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[270882] = {
					["type"] = "DEBUFF",
					["source"] = "Azerite Footbomb",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129246,
				},
				[345616] = {
					["source"] = "Odalrik",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 172207,
				},
				[306715] = {
					["source"] = "Megatorn-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[273956] = {
					["source"] = "Faithless Tender",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134364,
				},
				[260372] = {
					["source"] = "Venture Co. Skyscorcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133436,
				},
				[329239] = {
					["source"] = "Decaying Flesh Giant",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 163882,
				},
				[328216] = {
					["source"] = "Harding",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132404] = {
					["source"] = "Bq-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1680] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[219935] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Throwing Crabs",
					["npcID"] = 110608,
				},
				[257814] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jes Howlis",
					["encounterID"] = 2102,
				},
				[332313] = {
					["encounterID"] = 2385,
					["source"] = "Domina Venomblade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164266,
				},
				[234268] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 117837,
				},
				[338456] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kyrian Stitchwerk",
					["npcID"] = 172981,
				},
				[332314] = {
					["encounterID"] = 2385,
					["source"] = "Assassin Stalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 170478,
				},
				[267818] = {
					["npcID"] = 134058,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Galecaller Faye",
					["encounterID"] = 2131,
				},
				[324125] = {
					["source"] = "Harding",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131894] = {
					["source"] = "Grucan-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328221] = {
					["source"] = "Highlord Darion Mograine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166723,
				},
				[345625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nar'zudah",
					["npcID"] = 165824,
				},
				[146739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[324128] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cravl-Ghostlands",
					["npcID"] = 0,
				},
				[1784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cofagrigus",
					["npcID"] = 0,
				},
				[268846] = {
					["source"] = "Weapons Tester",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136934,
				},
				[53209] = {
					["source"] = "Catwoma-Sanguino",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[320035] = {
					["source"] = "Faffy-Frostmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132409] = {
					["source"] = "Østrogains-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1856] = {
					["source"] = "Smygiz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spedi-Dragonblight",
					["npcID"] = 0,
				},
				[338468] = {
					["source"] = "Swollen Soul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168083,
				},
				[328231] = {
					["source"] = "Harding",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nessiybella-Lightning'sBlade",
					["npcID"] = 0,
				},
				[257821] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 126845,
				},
				[107428] = {
					["source"] = "Poonpuncher-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228645] = {
					["source"] = "Rune Weapon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 27893,
				},
				[329258] = {
					["type"] = "DEBUFF",
					["source"] = "Sinstone Statue",
					["npcID"] = 165737,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2381,
				},
				[202028] = {
					["source"] = "Gaidouris-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273977] = {
					["source"] = "Coldfinger",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[264765] = {
					["source"] = "Static-charged Dervish",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134691,
				},
				[329262] = {
					["type"] = "DEBUFF",
					["source"] = "Lord Chamberlain",
					["npcID"] = 164218,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2381,
				},
				[269885] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[219946] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Throwing Grain",
					["npcID"] = 110609,
				},
				[187698] = {
					["source"] = "Catwoma-Sanguino",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32752] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[8220] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ripglossxoxo",
					["npcID"] = 0,
				},
				[322098] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[269887] = {
					["source"] = "Poonpuncher-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[341550] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snowyuwu-Kazzak",
					["npcID"] = 0,
				},
				[257314] = {
					["type"] = "BUFF",
					["source"] = "Irontide Grenadier",
					["npcID"] = 129758,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[160058] = {
					["source"] = "Clefthoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[268865] = {
					["source"] = "Weapons Tester",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136934,
				},
				[322101] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Metrovich-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[257827] = {
					["type"] = "BUFF",
					["source"] = "Jes Howlis",
					["npcID"] = 127484,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[311865] = {
					["source"] = "Sixtyniine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[325174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spirit Link Totem",
					["npcID"] = 53006,
				},
				[108199] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311866] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blackwandir-Lightning'sBlade",
					["npcID"] = 0,
				},
				[273988] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Phanos-Draenor",
					["npcID"] = 0,
				},
				[101545] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Murvurk",
					["npcID"] = 0,
				},
				[327225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[231724] = {
					["source"] = "Scauronne-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269896] = {
					["source"] = "Faithless Tender",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134364,
				},
				[121253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Poonpuncher-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[322109] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Murvurk",
					["npcID"] = 0,
				},
				[204596] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[268877] = {
					["source"] = "Deathsaber-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187706] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Felskorn Torturer",
					["npcID"] = 96121,
				},
				[323137] = {
					["npcID"] = 164804,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Droman Oulfarran",
					["encounterID"] = 2397,
				},
				[340541] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Antax-Draenor",
					["npcID"] = 0,
				},
				[323138] = {
					["npcID"] = 164567,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ingra Maloch",
					["encounterID"] = 2397,
				},
				[5215] = {
					["source"] = "Braveface-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Poonpuncher-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[336449] = {
					["source"] = "Decaying Flesh Giant",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163882,
				},
				[195386] = {
					["source"] = "Anydelx-Frostmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34914] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Umbrosus-Sylvanas",
					["npcID"] = 0,
				},
				[322118] = {
					["source"] = "Tomaat-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235313] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[340546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wendlgo",
					["npcID"] = 0,
				},
				[112042] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[5487] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Votaro",
					["npcID"] = 0,
				},
				[323143] = {
					["type"] = "BUFF",
					["source"] = "Lord Chamberlain",
					["npcID"] = 164218,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2381,
				},
				[320072] = {
					["source"] = "Decaying Flesh Giant",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163882,
				},
				[18165] = {
					["source"] = "Anduin Wrynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167907,
				},
				[195388] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slash Gutspill",
					["npcID"] = 90747,
				},
				[327240] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Loyal Creation",
					["npcID"] = 165911,
				},
				[268887] = {
					["source"] = "Fearfulcat-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331337] = {
					["source"] = "Rókhan-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[134477] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[274009] = {
					["source"] = "Fettedeilig",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342601] = {
					["source"] = "Pandae-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[323150] = {
					["npcID"] = 165737,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sinstone Statue",
					["encounterID"] = 2381,
				},
				[190784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aríel-Deathwing",
					["npcID"] = 0,
				},
				[212283] = {
					["source"] = "Smygiz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225080] = {
					["source"] = "Bigothunter-Ravencrest",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258864] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Marine",
					["npcID"] = 130027,
				},
				[281178] = {
					["source"] = "Ocarenyth-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[340556] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dummehund-Deathwing",
					["npcID"] = 0,
				},
				[263775] = {
					["encounterID"] = 2124,
					["source"] = "Aspix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133944,
				},
				[118699] = {
					["source"] = "Professortom-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8221] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Beachbodie",
					["npcID"] = 0,
				},
				[49376] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[325202] = {
					["source"] = "Poonpuncher-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Poonpuncher-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[310871] = {
					["source"] = "Jackiefrost",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328275] = {
					["source"] = "Harding",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318038] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thundermilk-Karazhan",
					["npcID"] = 0,
				},
				[47585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[256821] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shabaq-TwistingNether",
					["npcID"] = 0,
				},
				[258869] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Flamecaster",
					["npcID"] = 127488,
				},
				[169291] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Legenaris",
					["npcID"] = 0,
				},
				[207682] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
				},
				[176458] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blacksmithing Follower - Horde",
					["npcID"] = 88402,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mick-Deathwing",
					["npcID"] = 0,
				},
				[252216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Swedrftgybhu-Karazhan",
					["npcID"] = 0,
				},
				[19574] = {
					["source"] = "Deathsaber-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328285] = {
					["source"] = "Shadow Duelist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157563,
				},
				[207684] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azzigoth-Draenor",
					["npcID"] = 0,
				},
				[328286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Noble Courtier",
					["npcID"] = 176379,
				},
				[329310] = {
					["source"] = "Depraved Guarantor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156909,
				},
				[330334] = {
					["source"] = "Peonify-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328287] = {
					["source"] = "Depraved Carver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 176101,
				},
				[207685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
				},
				[281195] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thallandorr-ArgentDawn",
					["npcID"] = 0,
				},
				[3600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Earthbind Totem",
					["npcID"] = 2630,
				},
				[206662] = {
					["source"] = "Megatorn-Deathwing",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267888] = {
					["npcID"] = 0,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2131,
				},
				[326242] = {
					["type"] = "DEBUFF",
					["source"] = "Globgrog",
					["encounterID"] = 2382,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164255,
				},
				[328291] = {
					["source"] = "Briarbane Footman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166653,
				},
				[267890] = {
					["npcID"] = 0,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2131,
				},
				[343648] = {
					["source"] = "Pufu-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267891] = {
					["npcID"] = 134058,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Galecaller Faye",
					["encounterID"] = 2131,
				},
				[320103] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164550,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mick-Deathwing",
					["npcID"] = 0,
				},
				[261947] = {
					["source"] = "Poonpuncher-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292463] = {
					["source"] = "Coldfinger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97462] = {
					["source"] = "Peonify-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[329319] = {
					["source"] = "Soulsmith Yol-Mattar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165047,
				},
				[323177] = {
					["type"] = "BUFF",
					["source"] = "Droman Oulfarran",
					["npcID"] = 164804,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2397,
				},
				[193357] = {
					["source"] = "Donkarnage-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329321] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vicious Gargon",
					["npcID"] = 164563,
				},
				[193358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[97463] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329324] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vicious Gargon",
					["npcID"] = 164563,
				},
				[334443] = {
					["source"] = "Cucu-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335467] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[303731] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Herdis-Lightning'sBlade",
					["npcID"] = 0,
				},
				[345705] = {
					["source"] = "Harding",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[334444] = {
					["source"] = "Harding",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[332397] = {
					["type"] = "DEBUFF",
					["source"] = "Cmeed-Draenor",
					["encounterID"] = 2385,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263806] = {
					["source"] = "Shamanysha-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["source"] = "Azelthas-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207693] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[328305] = {
					["source"] = "Riizla-Lightning'sBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267904] = {
					["npcID"] = 0,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2131,
				},
				[334448] = {
					["source"] = "Cucu-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267905] = {
					["npcID"] = 134063,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brother Ironhull",
					["encounterID"] = 2131,
				},
				[85948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodynine",
					["npcID"] = 0,
				},
				[205648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rietze-Kazzak",
					["npcID"] = 0,
				},
				[323190] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stitched Vanguard",
					["npcID"] = 163121,
				},
				[248646] = {
					["source"] = "Xingmi-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184662] = {
					["source"] = "Ocarenyth-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73920] = {
					["source"] = "Bugeza-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[182104] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[211793] = {
					["source"] = "Bolduin-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262794] = {
					["source"] = "Venture Co. Mastermind",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133430,
				},
				[209746] = {
					["source"] = "Babawa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329340] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "High Adjudicator Aleez",
					["npcID"] = 165410,
				},
				[323198] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2390,
				},
				[335485] = {
					["source"] = "Stygian Giant",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166415,
				},
				[126389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ressof-Kazzak",
					["npcID"] = 0,
				},
				[118455] = {
					["source"] = "Deathsaber-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mortha",
					["npcID"] = 0,
				},
				[320130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kadida-TwistingNether",
					["npcID"] = 0,
				},
				[330368] = {
					["source"] = "Scauronne-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Asyris",
					["npcID"] = 0,
				},
				[34026] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269970] = {
					["type"] = "DEBUFF",
					["source"] = "Merektha",
					["encounterID"] = 2125,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133384,
				},
				[262804] = {
					["source"] = "Venture Co. Mastermind",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133430,
				},
				[256333] = {
					["source"] = "Coldfinger",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Creepy-Deathwing",
					["npcID"] = 0,
				},
				[323209] = {
					["npcID"] = 165737,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sinstone Statue",
					["encounterID"] = 2381,
				},
				[205146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[326281] = {
					["npcID"] = 164517,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tred'ova",
					["encounterID"] = 2393,
				},
				[306830] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azzigoth-Draenor",
					["npcID"] = 0,
				},
				[257870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irontide Buccaneer",
					["npcID"] = 130011,
				},
				[262811] = {
					["source"] = "Unknown",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133753,
				},
				[19577] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[334476] = {
					["npcID"] = 162689,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Surgeon Stitchflesh",
					["encounterID"] = 2389,
				},
				[196447] = {
					["source"] = "Professortom-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300693] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shamobu-TwistingNether",
					["npcID"] = 0,
				},
				[206685] = {
					["source"] = "Spitting Cobra",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 104493,
				},
				[215387] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cloom-Dragonblight",
					["npcID"] = 0,
				},
				[114108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bananmixarn-Deathwing",
					["npcID"] = 0,
				},
				[126649] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kadida-TwistingNether",
					["npcID"] = 0,
				},
				[20473] = {
					["source"] = "Khag-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53351] = {
					["source"] = "Lunesa-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sabre",
					["npcID"] = 165189,
				},
				[211805] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kyruus-TwistingNether",
					["npcID"] = 0,
				},
				[265889] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blacktooth Arsonist",
					["npcID"] = 135366,
				},
				[328338] = {
					["source"] = "Venomous Sniper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167493,
				},
				[335505] = {
					["source"] = "Stygian Giant",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166415,
				},
				[101568] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Turbodps-Karazhan",
					["npcID"] = 0,
				},
				[323221] = {
					["type"] = "DEBUFF",
					["source"] = "Sinstone Statue",
					["npcID"] = 165737,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2381,
				},
				[119996] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Murvurk",
					["npcID"] = 0,
				},
				[125883] = {
					["source"] = "Whïtetïger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328343] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168747,
				},
				[267944] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133392,
				},
				[334488] = {
					["npcID"] = 162689,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Surgeon Stitchflesh",
					["encounterID"] = 2389,
				},
				[116670] = {
					["source"] = "Poonpuncher-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[325275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nyarlathotep-Deathwing",
					["npcID"] = 0,
				},
				[207203] = {
					["source"] = "Deathgirl-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266923] = {
					["type"] = "DEBUFF",
					["source"] = "Energy Core",
					["encounterID"] = 2126,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135445,
				},
				[308897] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kenséi",
					["npcID"] = 0,
				},
				[166766] = {
					["source"] = "Mawsworn Shackler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167937,
				},
				[330397] = {
					["source"] = "Blistered Vagrant",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 160537,
				},
				[263854] = {
					["encounterID"] = 2107,
					["source"] = "Raptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165189,
				},
				[330398] = {
					["source"] = "Crazed Ash Ghoul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157733,
				},
				[328351] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[330399] = {
					["source"] = "Sabina",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168525,
				},
				[330400] = {
					["source"] = "Mumbling Ash Ghoul",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158578,
				},
				[316068] = {
					["source"] = "Darkhaven Dredger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156064,
				},
				[224098] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elana",
					["npcID"] = 112575,
				},
				[16827] = {
					["source"] = "Cat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165189,
				},
				[323236] = {
					["npcID"] = 164218,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lord Chamberlain",
					["encounterID"] = 2381,
				},
				[58984] = {
					["source"] = "Emberwake-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[330403] = {
					["source"] = "Plagueroc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168153,
				},
				[21562] = {
					["source"] = "Azelthas-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[343713] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nightingales-Frostmane",
					["npcID"] = 0,
				},
				[316072] = {
					["source"] = "Darkhaven Dredger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156064,
				},
				[263861] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cornofurente",
					["npcID"] = 165189,
				},
				[134522] = {
					["source"] = "Mezilo-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333477] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Goregrind",
					["npcID"] = 163621,
				},
				[26297] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mortha",
					["npcID"] = 0,
				},
				[265911] = {
					["source"] = "Agitated Nimbus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136076,
				},
				[320170] = {
					["npcID"] = 162692,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Amarth",
					["encounterID"] = 2388,
				},
				[333479] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rotspew",
					["npcID"] = 163620,
				},
				[330408] = {
					["source"] = "Sabina",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168525,
				},
				[265912] = {
					["source"] = "Agitated Nimbus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136076,
				},
				[320171] = {
					["npcID"] = 163157,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Amarth",
					["encounterID"] = 2388,
				},
				[330409] = {
					["source"] = "Ashen Ravager",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158420,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2401,
				},
				[328362] = {
					["source"] = "Phael the Afflictor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167834,
				},
				[190319] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[190831] = {
					["source"] = "Drpidge-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333482] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rotspew",
					["npcID"] = 163620,
				},
				[343721] = {
					["source"] = "Paladaniel-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328365] = {
					["source"] = "Venomous Sniper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167493,
				},
				[48108] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333485] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rotspew",
					["npcID"] = 163620,
				},
				[326319] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drust Harvester",
					["npcID"] = 164921,
				},
				[343724] = {
					["source"] = "Pallyiaan-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209261] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Exicuta-Stormscale",
					["npcID"] = 0,
				},
				[96312] = {
					["type"] = "BUFF",
					["source"] = "Yoxi-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[338606] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Separation Assistant",
					["npcID"] = 167731,
				},
				[323250] = {
					["type"] = "DEBUFF",
					["source"] = "Droman Oulfarran",
					["npcID"] = 164804,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2397,
				},
				[335345] = {
					["type"] = "DEBUFF",
					["source"] = "Lord Chamberlain",
					["encounterID"] = 2381,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164218,
				},
				[300728] = {
					["source"] = "Smicker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[330417] = {
					["source"] = "Mire Soldier",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 169696,
				},
				[257028] = {
					["npcID"] = 127490,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Knight Captain Valyri",
					["encounterID"] = 2103,
				},
				[326617] = {
					["type"] = "DEBUFF",
					["source"] = "Stoneborn Reaver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167612,
				},
				[267969] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Temple Attendant",
					["npcID"] = 134137,
				},
				[317349] = {
					["encounterID"] = 2401,
					["source"] = "Kuhmo-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Moffe",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64843] = {
					["type"] = "BUFF",
					["source"] = "Moffe",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329395] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Honored Duelist",
					["npcID"] = 165265,
				},
				[2061] = {
					["source"] = "Moffe",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[280719] = {
					["source"] = "Dsolve",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[106951] = {
					["source"] = "Meetydudu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[338610] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Separation Assistant",
					["npcID"] = 167731,
				},
				[260364] = {
					["source"] = "Dsolve",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[331718] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mistveil Defender",
					["npcID"] = 171772,
				},
				[132168] = {
					["type"] = "DEBUFF",
					["source"] = "Kuhmo-TarrenMill",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Metrovich-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[596] = {
					["source"] = "Moffe",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[355] = {
					["source"] = "Kuhmo-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267973] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Temple Attendant",
					["npcID"] = 134137,
				},
				[322232] = {
					["encounterID"] = 2386,
					["source"] = "Margrave Stradama",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164267,
				},
				[320788] = {
					["npcID"] = 162693,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nalthor the Rimebinder",
					["encounterID"] = 2390,
				},
				[199027] = {
					["source"] = "Nìcetry-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[71556] = {
					["source"] = "Catwoma-Sanguino",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264903] = {
					["type"] = "BUFF",
					["source"] = "Aqu'sirr",
					["npcID"] = 134056,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2130,
				},
				[336465] = {
					["type"] = "BUFF",
					["source"] = "Kuhmo-TarrenMill",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cofagrigus",
					["npcID"] = 0,
				},
				[258917] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Priest",
					["npcID"] = 130028,
				},
				[285500] = {
					["type"] = "BUFF",
					["source"] = "Dsolve",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6572] = {
					["source"] = "Kuhmo-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[336567] = {
					["source"] = "Tormented Amalgamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165976,
				},
				[81141] = {
					["source"] = "Coldfinger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120517] = {
					["source"] = "Moffe",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2060] = {
					["source"] = "Moffe",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[75532] = {
					["type"] = "BUFF",
					["source"] = "Sevdaliza-Draenor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267977] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shrine Templar",
					["npcID"] = 134139,
				},
				[285381] = {
					["source"] = "Goobýpls-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311487] = {
					["type"] = "BUFF",
					["source"] = "Gheld",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326434] = {
					["type"] = "BUFF",
					["source"] = "Chutê-DunModr",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197625] = {
					["type"] = "BUFF",
					["source"] = "Wildev-Bloodhoof",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337341] = {
					["type"] = "DEBUFF",
					["source"] = "Solflekk-Silvermoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265931] = {
					["source"] = "Rooflighter-Outland",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155777] = {
					["type"] = "BUFF",
					["source"] = "Bryzix",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["source"] = "Babawa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203407] = {
					["type"] = "BUFF",
					["source"] = "Bryzix",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[343737] = {
					["source"] = "Yu'lon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165374,
				},
				[289184] = {
					["type"] = "BUFF",
					["source"] = "Marvil-Ghostlands",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56814] = {
					["type"] = "BUFF",
					["source"] = "Kribbe-Lightning'sBlade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313015] = {
					["type"] = "DEBUFF",
					["source"] = "Takeron",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334802] = {
					["type"] = "BUFF",
					["source"] = "Rønin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263914] = {
					["encounterID"] = 2125,
					["source"] = "Merektha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133384,
				},
				[267981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shrine Templar",
					["npcID"] = 134139,
				},
				[261602] = {
					["source"] = "Superzazzy-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[331623] = {
					["type"] = "BUFF",
					["source"] = "Ohhwarlock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345696] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slorina-Ghostlands",
					["npcID"] = 0,
				},
				[195457] = {
					["source"] = "Gangrena-Lightning'sBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[343958] = {
					["type"] = "BUFF",
					["source"] = "Keeli-Deathwing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315075] = {
					["source"] = "Druwiwu-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316099] = {
					["encounterID"] = 2124,
					["source"] = "Bastiancx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[94719] = {
					["source"] = "Skullbender-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[323760] = {
					["source"] = "Ennba",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[165760] = {
					["source"] = "Highlord Darion Mograine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166723,
				},
				[223499] = {
					["type"] = "BUFF",
					["source"] = "Trestubbe-Karazhan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5217] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[331462] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Giratina-Dragonblight",
					["npcID"] = 0,
				},
				[299789] = {
					["type"] = "BUFF",
					["source"] = "Amper-Ghostlands",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311489] = {
					["source"] = "Thiccelfears-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2641] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2649] = {
					["source"] = "Cat",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[337344] = {
					["source"] = "Cruel Mystic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 159459,
				},
				[276111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fatfall",
					["npcID"] = 0,
				},
				[199545] = {
					["type"] = "BUFF",
					["source"] = "Dreamonic",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184575] = {
					["source"] = "Ocarenyth-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257899] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irontide Ravager",
					["npcID"] = 130012,
				},
				[324293] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skeletal Marauder",
					["npcID"] = 165919,
				},
				[59628] = {
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2381,
				},
				[330436] = {
					["source"] = "Mawsworn Collector",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 169605,
				},
				[319175] = {
					["source"] = "Dsolve",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[303041] = {
					["source"] = "Leonz-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15039] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodtotem Flameheart",
					["npcID"] = 100435,
				},
				[254474] = {
					["source"] = "Balsacs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334748] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Corpse Harvester",
					["npcID"] = 166302,
				},
				[320200] = {
					["npcID"] = 162689,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Surgeon Stitchflesh",
					["encounterID"] = 2389,
				},
				[207640] = {
					["source"] = "Moofa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[330438] = {
					["source"] = "Tormented Amalgamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165976,
				},
				[290512] = {
					["source"] = "Powq-Sylvanas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160832] = {
					["source"] = "Hilliana-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[327581] = {
					["encounterID"] = 2382,
					["source"] = "Plaguebelcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168396,
				},
				[199844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Moofa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2825] = {
					["type"] = "BUFF",
					["source"] = "Luxsi-TwistingNether",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2387,
				},
				[321226] = {
					["type"] = "BUFF",
					["source"] = "Amarth",
					["npcID"] = 163157,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2388,
				},
				[325727] = {
					["source"] = "Moofa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15487] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[316511] = {
					["source"] = "Fiendish Lookout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158479,
				},
				[257495] = {
					["type"] = "BUFF",
					["source"] = "The Sand Queen",
					["npcID"] = 127479,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[336967] = {
					["source"] = "Summoner Marcelis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168093,
				},
				[5761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rezurektor-Stormscale",
					["npcID"] = 0,
				},
				[205179] = {
					["source"] = "Bastiancx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[327701] = {
					["source"] = "Woximus-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[346822] = {
					["source"] = "Stygian Abductor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 176010,
				},
				[331399] = {
					["type"] = "DEBUFF",
					["source"] = "Margrave Stradama",
					["encounterID"] = 2386,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164267,
				},
				[322236] = {
					["encounterID"] = 2386,
					["source"] = "Malignant Spawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165430,
				},
				[122313] = {
					["source"] = "Finti-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126664] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[73685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pandhora-TwistingNether",
					["npcID"] = 0,
				},
				[205180] = {
					["type"] = "BUFF",
					["source"] = "Bastiancx-TwistingNether",
					["encounterID"] = 2125,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333406] = {
					["encounterID"] = 2385,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vivi-Lightning'sBlade",
					["npcID"] = 0,
				},
				[190336] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[316958] = {
					["source"] = "Finti-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[325245] = {
					["encounterID"] = 2385,
					["source"] = "Domina Venomblade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164266,
				},
				[204157] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[262377] = {
					["source"] = "Crawler Mine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133482,
				},
				[320208] = {
					["npcID"] = 164578,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stitchflesh's Creation",
					["encounterID"] = 2389,
				},
				[16191] = {
					["source"] = "Yagababa-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[338636] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Separation Assistant",
					["npcID"] = 167731,
				},
				[298710] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fortunâ",
					["npcID"] = 0,
				},
				[6807] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mortha",
					["npcID"] = 0,
				},
				[328400] = {
					["source"] = "Brood Ambusher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164737,
				},
				[338077] = {
					["source"] = "Brood Ambusher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164737,
				},
				[188290] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cravl-Ghostlands",
					["npcID"] = 0,
				},
				[221562] = {
					["source"] = "Fettedeilig",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263637] = {
					["source"] = "Addled Thug",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130435,
				},
				[319120] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334899] = {
					["source"] = "Venomous Sniper",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 174802,
				},
				[62061] = {
					["source"] = "Kvger-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329425] = {
					["source"] = "Protector of Flame",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157824,
				},
				[108238] = {
					["source"] = "Druwiwu-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96771,
				},
				[320212] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kadida-TwistingNether",
					["npcID"] = 0,
				},
				[208353] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pinilla-TwistingNether",
					["npcID"] = 0,
				},
				[341443] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["encounterID"] = 2384,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 170927,
				},
				[334511] = {
					["type"] = "BUFF",
					["source"] = "Adriancete-DunModr",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2392,
				},
				[331966] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["encounterID"] = 2384,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165357,
				},
				[288477] = {
					["source"] = "Itsloboclo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256374] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Khalaria-Silvermoon",
					["npcID"] = 0,
				},
				[326032] = {
					["source"] = "Manifestation of Gluttony",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 160455,
				},
				[311479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Valentin-Karazhan",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Machunter-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320517] = {
					["source"] = "Blighted Spinebreaker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 163894,
				},
				[336451] = {
					["source"] = "Defender of Many Eyes",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163862,
				},
				[264773] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2130,
				},
				[320542] = {
					["source"] = "Virulax Blightweaver",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168886,
				},
				[319383] = {
					["source"] = "Aggregate of Doom",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165706,
				},
				[257908] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Officer",
					["npcID"] = 127106,
				},
				[340357] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164705,
				},
				[26074] = {
					["source"] = "Goodspy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[342739] = {
					["source"] = "Plaguebound Gargantuan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 171596,
				},
				[194679] = {
					["source"] = "Coldfinger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[633] = {
					["encounterID"] = 2382,
					["source"] = "Khag-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[138130] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69792,
				},
				[330455] = {
					["source"] = "Jovraal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161271,
				},
				[274149] = {
					["encounterID"] = 2127,
					["source"] = "Energy Fragment",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142929,
				},
				[6673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wotzoq",
					["npcID"] = 0,
				},
				[263912] = {
					["encounterID"] = 2125,
					["source"] = "Merektha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133384,
				},
				[311459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Larskendikos",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Necrosick-Pozzodell'Eternità",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328409] = {
					["source"] = "Brood Ambusher",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164737,
				},
				[197835] = {
					["source"] = "Worgveum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193356] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[1706] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[213981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Joneztheone-Stormscale",
					["npcID"] = 0,
				},
				[3409] = {
					["source"] = "Smygiz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[198533] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jade Serpent Statue",
					["npcID"] = 60849,
				},
				[336601] = {
					["source"] = "Tormented Amalgamation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165976,
				},
				[332865] = {
					["encounterID"] = 2382,
					["source"] = "Globgrog",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164255,
				},
				[342744] = {
					["source"] = "Lady Jaina Proudmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167154,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xharia-Dragonblight",
					["npcID"] = 0,
				},
				[82326] = {
					["source"] = "Khag-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115151] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ajay-Outland",
					["npcID"] = 0,
				},
				[117952] = {
					["source"] = "Poonpuncher-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[4987] = {
					["source"] = "Khag-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328413] = {
					["source"] = "Briarbane Cavalier",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166654,
				},
				[321247] = {
					["npcID"] = 163157,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Amarth",
					["encounterID"] = 2388,
				},
				[264368] = {
					["encounterID"] = 2125,
					["source"] = "Unknown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134516,
				},
				[208772] = {
					["type"] = "DEBUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[328414] = {
					["source"] = "Venthyr Aristocrat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 157805,
				},
				[32379] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[36213] = {
					["npcID"] = 95072,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Earth Elemental",
					["encounterID"] = 2387,
				},
				[327995] = {
					["source"] = "Pestilent Harvester",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168574,
				},
				[328015] = {
					["source"] = "Fungalmancer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168578,
				},
				[328177] = {
					["source"] = "Fungi Stormer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168572,
				},
				[338653] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stitching Assistant",
					["npcID"] = 173044,
				},
				[118779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frimpala-TwistingNether",
					["npcID"] = 0,
				},
				[187874] = {
					["source"] = "Cudlekins-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[342443] = {
					["source"] = "Plagueroc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168310,
				},
				[328029] = {
					["source"] = "Plagueroc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168310,
				},
				[327393] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zolramus Necromancer",
					["npcID"] = 163618,
				},
				[330423] = {
					["source"] = "Fungi Stormer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168572,
				},
				[330738] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257402] = {
					["npcID"] = 126983,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harlan Sweete",
					["encounterID"] = 2096,
				},
				[328662] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168969,
				},
				[324323] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skeletal Marauder",
					["npcID"] = 165919,
				},
				[258938] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ashvane Priest",
					["npcID"] = 130028,
				},
				[342751] = {
					["source"] = "Plaguebound Gargantuan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 171596,
				},
				[77762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[155625] = {
					["source"] = "Gaidouris-Deathwing",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[321253] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["encounterID"] = 2388,
				},
				[330401] = {
					["source"] = "Sabina",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168525,
				},
				[327396] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zolramus Necromancer",
					["npcID"] = 163618,
				},
				[330406] = {
					["source"] = "Wolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[313064] = {
					["source"] = "Harding",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[330405] = {
					["source"] = "Sabina",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168525,
				},
				[312645] = {
					["source"] = "Harding",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[135299] = {
					["source"] = "Catwoma-Sanguino",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313065] = {
					["source"] = "Harding",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185313] = {
					["source"] = "Smygiz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[339683] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Duplo-GrimBatol",
					["npcID"] = 0,
				},
				[197003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harr",
					["npcID"] = 0,
				},
				[319941] = {
					["npcID"] = 164185,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Echelon",
					["encounterID"] = 2380,
				},
				[342755] = {
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167154,
				},
				[186254] = {
					["source"] = "Deathsaber-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[263927] = {
					["type"] = "DEBUFF",
					["source"] = "Merektha",
					["encounterID"] = 2125,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133384,
				},
				[118522] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[270070] = {
					["source"] = "Roguedansky",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[325223] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistveil Stinger",
					["npcID"] = 166304,
				},
				[267584] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136154,
				},
				[45242] = {
					["source"] = "Azelthas-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320592] = {
					["source"] = "Ravenous Swarm",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160613,
				},
				[268024] = {
					["type"] = "DEBUFF",
					["source"] = "Heart of Sethraliss",
					["encounterID"] = 2127,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135641,
				},
				[195292] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[227151] = {
					["source"] = "Smygiz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260643] = {
					["source"] = "Bulker-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263423] = {
					["source"] = "Hound",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165189,
				},
				[268027] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Living Current",
					["npcID"] = 134144,
				},
				[202636] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tymorâ-Silvermoon",
					["npcID"] = 0,
				},
				[292910] = {
					["source"] = "Mawsworn Shackler",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167937,
				},
				[31661] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259533] = {
					["encounterID"] = 2107,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268183] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22842] = {
					["source"] = "Druwiwu-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205708] = {
					["source"] = "Oxazepam-GrimBatol",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sanddokan-Kazzak",
					["npcID"] = 0,
				},
				[186257] = {
					["source"] = "Jezzaminey-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zolramus Bonemender",
					["npcID"] = 165222,
				},
				[268028] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Living Current",
					["npcID"] = 134144,
				},
				[326382] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Workshop Portal",
					["npcID"] = 167730,
				},
				[26000] = {
					["source"] = "Pat's Snowcloud Guy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 15730,
				},
				[268616] = {
					["source"] = "Babos-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[408] = {
					["source"] = "Smygiz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[105174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[219018] = {
					["source"] = "Seer Janidi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112002,
				},
				[118905] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Capacitor Totem",
					["npcID"] = 61245,
				},
				[268030] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tidesage Spiritualist",
					["npcID"] = 136186,
				},
				[98008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shamobu-TwistingNether",
					["npcID"] = 0,
				},
				[269129] = {
					["source"] = "Imbued Stormcaller",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134599,
				},
				[214621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Isweariheal-TwistingNether",
					["npcID"] = 0,
				},
				[272126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bubbl-TwistingNether",
					["npcID"] = 0,
				},
				[340358] = {
					["source"] = "Unknown",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168627,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kadida-TwistingNether",
					["npcID"] = 0,
				},
				[271103] = {
					["source"] = "Tùràmbàr-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326021] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spinemaw Gorger",
					["npcID"] = 172312,
				},
				[257410] = {
					["source"] = "Omnixm-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[325423] = {
					["source"] = "Mawsworn Harbinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165983,
				},
				[323547] = {
					["source"] = "Smygiz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184364] = {
					["source"] = "Devjin-BurningBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272699] = {
					["source"] = "Faithless Tender",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134364,
				},
				[265986] = {
					["encounterID"] = 2126,
					["source"] = "Energy Core",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135445,
				},
				[271105] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nightingales-Frostmane",
					["npcID"] = 0,
				},
				[321973] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[11327] = {
					["source"] = "Smygiz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21343] = {
					["source"] = "Fjörgyn-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45524] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kyruus-TwistingNether",
					["npcID"] = 0,
				},
				[73630] = {
					["source"] = "Finti-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326389] = {
					["npcID"] = 164185,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Echelon",
					["encounterID"] = 2380,
				},
				[190356] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Blóodraven",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124280] = {
					["type"] = "DEBUFF",
					["source"] = "Poonpuncher-Magtheridon",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258058] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Silt Crab",
					["npcID"] = 127381,
				},
				[223306] = {
					["source"] = "Khag-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[330323] = {
					["source"] = "Scauronne-Lightning'sBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aríel-Deathwing",
					["npcID"] = 0,
				},
				[346866] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Loyal Stoneborn",
					["npcID"] = 174175,
				},
				[54680] = {
					["source"] = "face",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165189,
				},
				[329013] = {
					["source"] = "Depraved Carver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156911,
				},
				[324867] = {
					["source"] = "Lightore-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77535] = {
					["source"] = "Coldfinger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217200] = {
					["source"] = "Lunesa-Ghostlands",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246152] = {
					["source"] = "Lunesa-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demonos-Deathwing",
					["npcID"] = 0,
				},
				[47541] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[203155] = {
					["source"] = "Harding",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345466] = {
					["source"] = "Xingmi-Sylvanas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nightingales-Frostmane",
					["npcID"] = 0,
				},
				[321329] = {
					["source"] = "Faffy-Frostmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zakuku-TarrenMill",
					["npcID"] = 0,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nessiybella-Lightning'sBlade",
					["npcID"] = 0,
				},
				[121557] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[247676] = {
					["source"] = "Finti-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268415] = {
					["source"] = "Azerite Extractor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136643,
				},
				[198103] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Luxsi-TwistingNether",
					["encounterID"] = 2387,
				},
				[257415] = {
					["source"] = "Tormentorz-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147362] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maemoblei-TwistingNether",
					["encounterID"] = 2093,
				},
				[107574] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[177051] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[23922] = {
					["source"] = "Bq-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harding",
					["npcID"] = 0,
				},
				[48020] = {
					["source"] = "Østrogains-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
				},
				[155158] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Felskorn Raider",
					["npcID"] = 96129,
				},
				[316942] = {
					["source"] = "Stoneborn Abductor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167451,
				},
				[326396] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zuliana-Deathwing",
					["npcID"] = 0,
				},
				[322304] = {
					["encounterID"] = 2386,
					["source"] = "Margrave Stradama",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164267,
				},
				[321406] = {
					["encounterID"] = 2384,
					["source"] = "Plague Bomb",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 169498,
				},
				[334864] = {
					["source"] = "Goobýpls-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ashvane Priest",
					["npcID"] = 130028,
				},
				[116095] = {
					["source"] = "Xingmi-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257315] = {
					["npcID"] = 129758,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Grenadier",
					["encounterID"] = 2096,
				},
				[53365] = {
					["source"] = "Fettedeilig",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345495] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frothing Pustule",
					["npcID"] = 175519,
				},
				[21169] = {
					["source"] = "Bigothunter-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[109304] = {
					["source"] = "Lunesa-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[137639] = {
					["type"] = "BUFF",
					["source"] = "Poonpuncher-Magtheridon",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[6552] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[347901] = {
					["source"] = "Omnixm-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Laurelyn-Pozzodell'Eternità",
					["npcID"] = 0,
				},
				[108280] = {
					["source"] = "Bugeza-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187653] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Felskorn Warmonger",
					["npcID"] = 96135,
				},
				[319237] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Morphaus-Outland",
					["npcID"] = 0,
				},
				[105691] = {
					["source"] = "Oxazepam-GrimBatol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268050] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tidesage Spiritualist",
					["npcID"] = 136186,
				},
				[5760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[198837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Risen Skulker",
					["npcID"] = 99541,
				},
				[5394] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rietze-Kazzak",
					["encounterID"] = 2101,
				},
				[185245] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[202137] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azzigoth-Draenor",
					["npcID"] = 0,
				},
				[197690] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Backsplitter-Kazzak",
					["npcID"] = 0,
				},
				[268893] = {
					["source"] = "Fearfulcat-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61336] = {
					["source"] = "Yesod-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["source"] = "Mems-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114050] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[287504] = {
					["source"] = "Powq-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Shivar",
					["npcID"] = 0,
				},
				[263276] = {
					["type"] = "DEBUFF",
					["source"] = "Taskmaster Askari",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[257305] = {
					["type"] = "DEBUFF",
					["source"] = "Harlan Sweete",
					["npcID"] = 126983,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[337346] = {
					["source"] = "Vain Courtier",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 159459,
				},
				[320040] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163882,
				},
				[338693] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Workshop Portal",
					["npcID"] = 173174,
				},
				[49143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kyruus-TwistingNether",
					["npcID"] = 0,
				},
				[338804] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lògics",
					["npcID"] = 0,
				},
				[61684] = {
					["source"] = "Cat",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[326409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shard of Halkias",
					["npcID"] = 164557,
				},
				[337296] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Singsing-Lightning'sBlade",
					["npcID"] = 0,
				},
				[11426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shivar",
					["npcID"] = 0,
				},
				[155722] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[257422] = {
					["type"] = "BUFF",
					["source"] = "Övärlden",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311054] = {
					["source"] = "Whïtetïger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irontide Mastiff",
					["npcID"] = 128551,
				},
				[1449] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[202140] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308506] = {
					["source"] = "Ostbankaren-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256911] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frightened Brutosaur",
					["npcID"] = 129668,
				},
				[46968] = {
					["source"] = "Kuhmo-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29722] = {
					["source"] = "Nonis-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262940] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133753,
				},
				[268059] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tidesage Spiritualist",
					["npcID"] = 136186,
				},
				[259092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Stormcaller",
					["npcID"] = 126919,
				},
				[260279] = {
					["encounterID"] = 2108,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195799] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yotnar",
					["npcID"] = 96175,
				},
				[257397] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Bonesaw",
					["npcID"] = 129788,
				},
				[280230] = {
					["source"] = "Statue Eyes",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136291,
				},
				[6770] = {
					["source"] = "Nìcetry-Ravencrest",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156073] = {
					["source"] = "Goblié",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268061] = {
					["source"] = "Plague Doctor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139949,
				},
				[53563] = {
					["source"] = "Khag-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205523] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[232698] = {
					["source"] = "Cheó-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101643] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murvurk",
					["npcID"] = 0,
				},
				[271456] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[269090] = {
					["source"] = "Ordnance Specialist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137029,
				},
				[123904] = {
					["type"] = "BUFF",
					["source"] = "Poonpuncher-Magtheridon",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256016] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[185763] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[34428] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frimpala-TwistingNether",
					["npcID"] = 0,
				},
				[79638] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unbreakable-Karazhan",
					["npcID"] = 0,
				},
				[294895] = {
					["source"] = "Tauren Warbrave",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 172122,
				},
				[257426] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Enforcer",
					["npcID"] = 129602,
				},
				[330067] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[253595] = {
					["source"] = "Bolduin-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[325395] = {
					["encounterID"] = 2385,
					["source"] = "Shadowclone Stalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166813,
				},
				[259474] = {
					["encounterID"] = 2107,
					["source"] = "Rixxa Fluxflame",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[46585] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ehlikef-Karazhan",
					["npcID"] = 0,
				},
				[324372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skeletal Monstrosity",
					["npcID"] = 165197,
				},
				[267278] = {
					["source"] = "Static-charged Dervish",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134691,
				},
				[334610] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Spare Parts",
					["npcID"] = 166266,
				},
				[338344] = {
					["source"] = "Bugeza-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162264] = {
					["source"] = "Emberwake-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329492] = {
					["source"] = "Deirn-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Reewy-Ravencrest",
					["npcID"] = 0,
				},
				[274210] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 139626,
				},
				[115994] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Møñkëýx-TwistingNether",
					["npcID"] = 0,
				},
				[116189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[269092] = {
					["source"] = "Ordnance Specialist",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137029,
				},
				[324603] = {
					["source"] = "Harding",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Machunter-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269686] = {
					["encounterID"] = 2127,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267899] = {
					["npcID"] = 134063,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brother Ironhull",
					["encounterID"] = 2131,
				},
				[212792] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[265001] = {
					["npcID"] = 134828,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aqualing",
					["encounterID"] = 2130,
				},
				[30449] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[293664] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fanxy-Karazhan",
					["npcID"] = 0,
				},
				[16564] = {
					["source"] = "Stoneguard Watcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 170487,
				},
				[267047] = {
					["encounterID"] = 2125,
					["source"] = "Unknown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134390,
				},
				[18562] = {
					["source"] = "Moofa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[50977] = {
					["source"] = "Isharil-Lightning'sBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90361] = {
					["source"] = "Geisterbestie",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[269099] = {
					["source"] = "Venture Co. War Machine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[207778] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shamobu-TwistingNether",
					["npcID"] = 0,
				},
				[318236] = {
					["source"] = "Maddened Summoner",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163819,
				},
				[256038] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Overseer Korgus",
					["encounterID"] = 2104,
				},
				[156079] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[321712] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116705] = {
					["source"] = "Poonpuncher-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[339736] = {
					["source"] = "Lunesa-Ghostlands",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328475] = {
					["source"] = "Brood Ambusher",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164737,
				},
				[257777] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jes Howlis",
					["encounterID"] = 2102,
				},
				[1725] = {
					["source"] = "Dsolve",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316830] = {
					["source"] = "Stoneborn Abductor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167451,
				},
				[324381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skeletal Monstrosity",
					["npcID"] = 165197,
				},
				[49576] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31935] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[339738] = {
					["source"] = "Lunesa-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204301] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[2098] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[204197] = {
					["source"] = "Azelthas-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[321894] = {
					["npcID"] = 162693,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nalthor the Rimebinder",
					["encounterID"] = 2390,
				},
				[325224] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistveil Stinger",
					["npcID"] = 166304,
				},
				[194509] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[317920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zeronor",
					["npcID"] = 0,
				},
				[266030] = {
					["source"] = "Rooflighter-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262348] = {
					["source"] = "Crawler Mine",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133482,
				},
				[8512] = {
					["source"] = "Malizious-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289577] = {
					["source"] = "Andal-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257278] = {
					["npcID"] = 126983,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harlan Sweete",
					["encounterID"] = 2096,
				},
				[198688] = {
					["source"] = "Lightore-Deathwing",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193455] = {
					["source"] = "Lunesa-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[342813] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167907,
				},
				[311464] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Omenles-Lightning'sBlade",
					["npcID"] = 0,
				},
				[324386] = {
					["type"] = "BUFF",
					["source"] = "Pandhora-TwistingNether",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2392,
				},
				[333600] = {
					["source"] = "Unknown",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160421,
				},
				[342814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[79849] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 47248,
				},
				[324387] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skeletal Monstrosity",
					["npcID"] = 165197,
				},
				[1833] = {
					["source"] = "Smygiz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183218] = {
					["source"] = "Ocarenyth-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Suzlit-GrimBatol",
					["npcID"] = 0,
				},
				[218164] = {
					["source"] = "Babos-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[333602] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brittlebone Mage",
					["npcID"] = 163126,
				},
				[193456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Notkatty-Kazzak",
					["npcID"] = 0,
				},
				[311471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Omenles-Lightning'sBlade",
					["npcID"] = 0,
				},
				[231843] = {
					["source"] = "Ocarenyth-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[219589] = {
					["source"] = "Deirn-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51714] = {
					["source"] = "Ailuroquence-Ragnaros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1953] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Henessy-Karazhan",
					["npcID"] = 0,
				},
				[204513] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
				},
				[257436] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Corsair",
					["npcID"] = 126928,
				},
				[319272] = {
					["source"] = "Ash Crawler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164143,
				},
				[332581] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 163894,
				},
				[205025] = {
					["source"] = "Brilquarion-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58180] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[290608] = {
					["source"] = "Fugly",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[312107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Morphaus-Outland",
					["npcID"] = 0,
				},
				[228260] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[257437] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Corsair",
					["npcID"] = 126928,
				},
				[324667] = {
					["encounterID"] = 2382,
					["source"] = "Globgrog",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164255,
				},
				[18499] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197548] = {
					["source"] = "Offerbaby",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326441] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shard of Halkias",
					["npcID"] = 164557,
				},
				[256955] = {
					["npcID"] = 127490,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Knight Captain Valyri",
					["encounterID"] = 2103,
				},
				[324394] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skeletal Monstrosity",
					["npcID"] = 165197,
				},
				[325418] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spinemaw Acidgullet",
					["npcID"] = 167113,
				},
				[326092] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Spinemaw Reaver",
					["npcID"] = 167116,
				},
				[278326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199600] = {
					["source"] = "Donkarnage-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84714] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[187827] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[152108] = {
					["source"] = "Rooflighter-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irontide Stormcaller",
					["npcID"] = 126919,
				},
				[208097] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[224729] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Buccaneer",
					["npcID"] = 130011,
				},
				[328492] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304946] = {
					["source"] = "Mawsworn Harbinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165983,
				},
				[318255] = {
					["source"] = "Ash Crawler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 163575,
				},
				[260242] = {
					["source"] = "Zerodaypanda",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328493] = {
					["source"] = "Anduin Wrynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 172119,
				},
				[276282] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Galecaller Apprentice",
					["npcID"] = 139800,
				},
				[191920] = {
					["source"] = "Sonora-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mõõn-Deathwing",
					["npcID"] = 0,
				},
				[344874] = {
					["type"] = "DEBUFF",
					["source"] = "Echelon",
					["npcID"] = 164185,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2380,
				},
				[304948] = {
					["source"] = "Mawsworn Harbinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165983,
				},
				[200166] = {
					["source"] = "Emberwake-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11986] = {
					["source"] = "Seer Janidi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112002,
				},
				[308026] = {
					["source"] = "Protector of Flame",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157824,
				},
				[24450] = {
					["source"] = "Cat",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[49020] = {
					["source"] = "Deathgirl-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2050] = {
					["source"] = "Moffe",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Snowyuwu-Kazzak",
					["npcID"] = 0,
				},
				[258321] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Bonesaw",
					["npcID"] = 129788,
				},
				[79854] = {
					["source"] = "Cain Firesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112038,
				},
				[104318] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wild Imp",
					["npcID"] = 55659,
				},
				[91800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Stonechewer",
					["npcID"] = 26125,
				},
				[276286] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334640] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 171474,
				},
				[333612] = {
					["source"] = "Devourer Mite",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 175077,
				},
				[205231] = {
					["encounterID"] = 2125,
					["source"] = "Darkglare",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103673,
				},
				[189363] = {
					["source"] = "Finti-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198065] = {
					["source"] = "Faffy-Frostmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["source"] = "Chocolata-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272412] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cutwater Harpooner",
					["npcID"] = 129601,
				},
				[195506] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Felskorn Raider",
					["npcID"] = 108306,
				},
				[8676] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[203277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wildez",
					["npcID"] = 0,
				},
				[190446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[279000] = {
					["encounterID"] = 2127,
					["source"] = "Avatar of Sethraliss",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133392,
				},
				[77472] = {
					["source"] = "Clubber-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267589] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139163,
				},
				[328501] = {
					["source"] = "Rigged Plagueborer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168891,
				},
				[331574] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistcaller",
					["npcID"] = 170217,
				},
				[202164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wotzoq",
					["npcID"] = 0,
				},
				[257956] = {
					["type"] = "BUFF",
					["source"] = "Jes Howlis",
					["npcID"] = 127484,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[258254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 130467,
				},
				[337716] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lenyelem",
					["npcID"] = 0,
				},
				[57723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Evillspawn-Outland",
					["npcID"] = 0,
				},
				[255909] = {
					["source"] = "Smygiz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316218] = {
					["source"] = "Darkhaven Dredger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156064,
				},
				[199603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[26573] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[319290] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stitched Vanguard",
					["npcID"] = 163121,
				},
				[257793] = {
					["npcID"] = 127484,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jes Howlis",
					["encounterID"] = 2102,
				},
				[313148] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shamobu-TwistingNether",
					["npcID"] = 0,
				},
				[45438] = {
					["type"] = "BUFF",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2102,
				},
				[324987] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistveil Stalker",
					["npcID"] = 166301,
				},
				[316220] = {
					["source"] = "Smygiz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262554] = {
					["source"] = "Expert Technician",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133593,
				},
				[85739] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79855] = {
					["source"] = "Cain Firesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112038,
				},
				[123586] = {
					["source"] = "Poonpuncher-Magtheridon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124682] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Creepy-Deathwing",
					["npcID"] = 0,
				},
				[198069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trailmix",
					["npcID"] = 0,
				},
				[58875] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Grarr-Deathwing",
					["npcID"] = 0,
				},
				[34433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[331939] = {
					["source"] = "Azelthas-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199721] = {
					["source"] = "Azakek-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311484] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Raspbarry",
					["npcID"] = 0,
				},
				[316856] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stone Legion Warden",
					["npcID"] = 167908,
				},
				[115175] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Creepy-Deathwing",
					["npcID"] = 0,
				},
				[256106] = {
					["npcID"] = 126832,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zvezdica-Kilrogg",
					["npcID"] = 0,
				},
				[53600] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[326018] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Spinemaw Larva",
					["npcID"] = 167117,
				},
				[204213] = {
					["source"] = "Azelthas-Karazhan",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120360] = {
					["source"] = "Grucan-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236298] = {
					["source"] = "Furionss-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51124] = {
					["source"] = "Deathgirl-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334208] = {
					["source"] = "Argent Healer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 171501,
				},
				[323392] = {
					["npcID"] = 164218,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lord Chamberlain",
					["encounterID"] = 2381,
				},
				[315341] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[195512] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Felskorn Raider",
					["npcID"] = 108306,
				},
				[2120] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
				},
				[20484] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[316227] = {
					["source"] = "Tariesh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167263,
				},
				[193534] = {
					["source"] = "Harding",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vaelke-TwistingNether",
					["npcID"] = 0,
				},
				[87023] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Neonoir-ArgentDawn",
					["npcID"] = 0,
				},
				[336048] = {
					["source"] = "Tremaculum Sentinel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 167704,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Coldfinger",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257460] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2096,
				},
				[79857] = {
					["source"] = "Cain Firesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112038,
				},
				[258773] = {
					["npcID"] = 126832,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
				},
				[280398] = {
					["source"] = "Azelthas-Karazhan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202168] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85673] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[122783] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Flowjoee-Drak'thul",
					["npcID"] = 0,
				},
				[341824] = {
					["source"] = "Rustlo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[325022] = {
					["source"] = "Animated Protector",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158644,
				},
				[31850] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[44544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[304970] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273234] = {
					["source"] = "Unknown",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139108,
				},
				[87024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bestmageeu-Deathwing",
					["npcID"] = 0,
				},
				[81340] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bloodynine",
					["npcID"] = 0,
				},
				[304971] = {
					["source"] = "Mælken-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291843] = {
					["source"] = "Zestdr-Arathor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282449] = {
					["source"] = "Dsolve",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144961,
				},
				[336803] = {
					["source"] = "Crucible Seeker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165974,
				},
				[156426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[314186] = {
					["source"] = "Bloodynine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335685] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Odalrik",
					["npcID"] = 172207,
				},
				[215479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Héramonk-TwistingNether",
					["npcID"] = 0,
				},
				[59638] = {
					["source"] = "Mirror Image",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 31216,
				},
				[258777] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Oarsman",
					["npcID"] = 127111,
				},
				[233395] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kyruus-TwistingNether",
					["npcID"] = 0,
				},
				[192249] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[115178] = {
					["source"] = "Wyllow-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281209] = {
					["source"] = "Velarea-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[772] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frimpala-TwistingNether",
					["npcID"] = 0,
				},
				[137619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Refundlands-Kazzak",
					["npcID"] = 0,
				},
				[193530] = {
					["type"] = "BUFF",
					["source"] = "Deathsaber-Draenor",
					["encounterID"] = 2124,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[330569] = {
					["source"] = "Hungering Death",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168136,
				},
				[124009] = {
					["source"] = "Xuen",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 63508,
				},
				[332617] = {
					["encounterID"] = 2384,
					["source"] = "Doctor Ickus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164967,
				},
				[322711] = {
					["type"] = "BUFF",
					["source"] = "Halkias",
					["npcID"] = 165408,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2401,
				},
				[338157] = {
					["source"] = "Soulsmith Yol-Mattar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165047,
				},
				[165830] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thallandorr-ArgentDawn",
					["npcID"] = 0,
				},
				[213634] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Trollsanity-Lightning'sBlade",
					["npcID"] = 0,
				},
				[342924] = {
					["source"] = "Knight of the Ebon Blade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165862,
				},
				[257756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bilge Rat Buccaneer",
					["npcID"] = 129527,
				},
				[298836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bïllë",
					["npcID"] = 0,
				},
				[328524] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harding",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157128] = {
					["source"] = "Khag-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198590] = {
					["source"] = "Bastiancx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187650] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[9532] = {
					["source"] = "Seer Janidi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112002,
				},
				[27243] = {
					["source"] = "Bastiancx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Carino-Silvermoon",
					["npcID"] = 0,
				},
				[184770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gt-Boulderfist",
					["npcID"] = 0,
				},
				[22568] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithiman-Kazzak",
					["npcID"] = 0,
				},
				[330574] = {
					["source"] = "Hungering Death",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168136,
				},
				[323408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Karmaonyou-Outland",
					["npcID"] = 0,
				},
				[271194] = {
					["source"] = "Deathsaber-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ghare-Deathwing",
					["npcID"] = 0,
				},
				[326438] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shard of Halkias",
					["npcID"] = 164557,
				},
				[139546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[20549] = {
					["source"] = "Poonpuncher-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33917] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mortha",
					["npcID"] = 0,
				},
				[311470] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Msmayhem-Dragonblight",
					["npcID"] = 0,
				},
				[329103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Taskmaster Matyas",
					["npcID"] = 165834,
				},
				[316244] = {
					["source"] = "Fiendish Lookout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 158479,
				},
				[224186] = {
					["source"] = "Kiraji",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257458] = {
					["npcID"] = 126983,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harlan Sweete",
					["encounterID"] = 2096,
				},
				[298841] = {
					["source"] = "Wôrgenator-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213241] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[268129] = {
					["source"] = "Refreshment Vendor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136470,
				},
				[157131] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Трешкэнкуин-Гордунни",
					["npcID"] = 0,
				},
				[323852] = {
					["type"] = "BUFF",
					["source"] = "Ghastly Parishioner",
					["npcID"] = 165913,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2403,
				},
				[8613] = {
					["source"] = "Babos-Magtheridon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268130] = {
					["source"] = "Refreshment Vendor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136470,
				},
				[22888] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Velarea-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329127] = {
					["source"] = "Lunesa-Ghostlands",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193475] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rezurektor-Stormscale",
					["npcID"] = 0,
				},
				[279709] = {
					["source"] = "Pufu-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Sixyer-Kazzak",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2101,
				},
				[328533] = {
					["source"] = "Defender of Many Eyes",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 163862,
				},
				[257620] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maemoblei-TwistingNether",
					["npcID"] = 0,
				},
				[108271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[327510] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[335680] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Odalrik",
					["npcID"] = 172207,
				},
				[321368] = {
					["type"] = "BUFF",
					["source"] = "Nalthor the Rimebinder",
					["npcID"] = 162693,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2390,
				},
				[334677] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pereverten-Karazhan",
					["npcID"] = 0,
				},
				[235450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Apliti",
					["npcID"] = 0,
				},
				[83243] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[323393] = {
					["npcID"] = 164218,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lord Chamberlain",
					["encounterID"] = 2381,
				},
				[69369] = {
					["source"] = "Gaidouris-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298431] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shamobu-TwistingNether",
					["npcID"] = 0,
				},
				[329172] = {
					["npcID"] = 165737,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sinstone Statue",
					["encounterID"] = 2381,
				},
				[164812] = {
					["source"] = "Babawa",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193315] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[309638] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Farug",
					["npcID"] = 0,
				},
				[170443] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mightythor-Dragonblight",
					["npcID"] = 0,
				},
				[274838] = {
					["source"] = "Gaidouris-Deathwing",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[83958] = {
					["source"] = "Hena-Ghostlands",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269302] = {
					["source"] = "Hired Assassin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134232,
				},
				[322487] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tirnenn Villager",
					["npcID"] = 164929,
				},
				[165961] = {
					["source"] = "Wokadoodledo-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328539] = {
					["source"] = "Domina Venomblade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164266,
				},
				[288613] = {
					["type"] = "BUFF",
					["source"] = "Fumino-Nemesis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[232893] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[274281] = {
					["source"] = "Babawa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263642] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azzigoth-Draenor",
					["npcID"] = 0,
				},
				[117828] = {
					["source"] = "Nonis-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342873] = {
					["source"] = "Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167176,
				},
				[274282] = {
					["source"] = "Babawa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199658] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228287] = {
					["source"] = "Poonpuncher-Magtheridon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2565] = {
					["source"] = "Bq-Karazhan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274283] = {
					["source"] = "Babawa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195320] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mightstone Rockcaller",
					["npcID"] = 100433,
				},
				[164815] = {
					["source"] = "Babawa",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342875] = {
					["source"] = "Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166981,
				},
				[116768] = {
					["source"] = "Poonpuncher-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294133] = {
					["source"] = "Pookìe",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[326450] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Depraved Houndmaster",
					["npcID"] = 164562,
				},
				[335710] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Odalrik",
					["npcID"] = 172207,
				},
				[334275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moloc-Deathwing",
					["npcID"] = 0,
				},
				[267237] = {
					["source"] = "Faithless Tender",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134364,
				},
				[328496] = {
					["source"] = "Lady Jaina Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 172115,
				},
				[227847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frimpala-TwistingNether",
					["npcID"] = 0,
				},
				[304949] = {
					["source"] = "Mawsworn Harbinger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165983,
				},
				[321379] = {
					["type"] = "BUFF",
					["source"] = "Moffe",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342748] = {
					["source"] = "Harding",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79865] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 47247,
				},
				[214169] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269116] = {
					["source"] = "Imbued Stormcaller",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134599,
				},
				[157736] = {
					["source"] = "Rooflighter-Outland",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Noammo",
					["npcID"] = 0,
				},
				[328547] = {
					["source"] = "Lightore-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203720] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[330595] = {
					["source"] = "Ebon Crawler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165989,
				},
				[3714] = {
					["source"] = "Arkyn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320358] = {
					["npcID"] = 162689,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Surgeon Stitchflesh",
					["encounterID"] = 2389,
				},
				[256005] = {
					["npcID"] = 126841,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sharkbait",
					["encounterID"] = 2093,
				},
				[342881] = {
					["source"] = "Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 167176,
				},
				[251837] = {
					["source"] = "Triolos-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320359] = {
					["npcID"] = 162689,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Surgeon Stitchflesh",
					["encounterID"] = 2389,
				},
				[330976] = {
					["source"] = "Deirn-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212423] = {
					["source"] = "Risen Skulker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[17735] = {
					["source"] = "Grimthyk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[207771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[257316] = {
					["npcID"] = 126983,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Harlan Sweete",
					["encounterID"] = 2096,
				},
				[52610] = {
					["source"] = "Meetydudu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157997] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[982] = {
					["type"] = "BUFF",
					["source"] = "Catwoma-Sanguino",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280615] = {
					["source"] = "Clubber-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314797] = {
					["source"] = "Goobýpls-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[327528] = {
					["source"] = "Highlord Darion Mograine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166723,
				},
				[341530] = {
					["source"] = "Smygiz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308495] = {
					["source"] = "Harding",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[226757] = {
					["source"] = "Faffy-Frostmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Sókar-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257946] = {
					["source"] = "Lunesa-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[322527] = {
					["type"] = "DEBUFF",
					["source"] = "Tred'ova",
					["npcID"] = 164517,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2393,
				},
				[8042] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[257337] = {
					["encounterID"] = 2105,
					["source"] = "Coin-Operated Crowd Pummeler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[324459] = {
					["encounterID"] = 2382,
					["source"] = "Globgrog",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164255,
				},
				[321388] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Apliti",
					["npcID"] = 0,
				},
				[273272] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139131,
				},
				[323436] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oyvind-BurningBlade",
					["encounterID"] = 2387,
				},
				[345432] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77489] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Teqsama-Stormscale",
					["npcID"] = 0,
				},
				[237838] = {
					["source"] = "Spitting Cobra",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 104493,
				},
				[323437] = {
					["npcID"] = 164218,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lord Chamberlain",
					["encounterID"] = 2381,
				},
				[320366] = {
					["type"] = "DEBUFF",
					["source"] = "Surgeon Stitchflesh",
					["npcID"] = 162689,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2389,
				},
				[35079] = {
					["type"] = "BUFF",
					["source"] = "Catwoma-Sanguino",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273274] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Englemakeren-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328411] = {
					["source"] = "Depraved Seer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 156910,
				},
				[263103] = {
					["source"] = "Feckless Assistant",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133345,
				},
				[132169] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198300] = {
					["source"] = "Cudlekins-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[321006] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ingra Maloch",
					["npcID"] = 164567,
				},
				[47540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[93622] = {
					["source"] = "Druwiwu-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Ocarenyth-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328559] = {
					["source"] = "Briarbane Arbalest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 166677,
				},
				[77758] = {
					["source"] = "Baaung",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49028] = {
					["encounterID"] = 2125,
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188370] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[311495] = {
					["source"] = "Skobers-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56222] = {
					["encounterID"] = 2124,
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[52437] = {
					["source"] = "Peonify-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212552] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Paycash",
					["npcID"] = 0,
				},
				[332656] = {
					["source"] = "Scavenging Mawrat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165978,
				},
				[204330] = {
					["source"] = "Bigothunter-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[346989] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168969,
				},
				[119085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murvurk",
					["npcID"] = 0,
				},
				[336752] = {
					["type"] = "DEBUFF",
					["source"] = "Mistcaller",
					["npcID"] = 164501,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2392,
				},
				[228128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[330513] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12323] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[309528] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Grarr-Deathwing",
					["npcID"] = 0,
				},
				[258323] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Irontide Bonesaw",
					["npcID"] = 129788,
				},
				[330611] = {
					["source"] = "Ebon Crawler",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165989,
				},
				[258153] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bilge Rat Seaspeaker",
					["npcID"] = 130026,
				},
				[55095] = {
					["source"] = "Bolduin-Dragonblight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51460] = {
					["source"] = "Bloodynine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29893] = {
					["source"] = "Bastiancx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31707] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Water Elemental",
					["npcID"] = 78116,
				},
				[79892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96949,
				},
				[33757] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thundermilk-Karazhan",
					["npcID"] = 0,
				},
				[212431] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fumino-Nemesis",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Englemakeren-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320376] = {
					["npcID"] = 164578,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stitchflesh's Creation",
					["encounterID"] = 2389,
				},
				[268604] = {
					["type"] = "BUFF",
					["source"] = "Whiteuruk-Nemesis",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48517] = {
					["source"] = "Babawa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255941] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Maugris-TwistingNether",
					["npcID"] = 0,
				},
				[269670] = {
					["encounterID"] = 2127,
					["source"] = "Avatar of Sethraliss",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133392,
				},
				[195540] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gro Rumblehoof",
					["npcID"] = 90734,
				},
				[204242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[176089] = {
					["source"] = "Roxi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[7384] = {
					["source"] = "Felâir-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[330616] = {
					["source"] = "Horrific Bonemauler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 175543,
				},
				[266511] = {
					["type"] = "BUFF",
					["source"] = "Galvazzt",
					["encounterID"] = 2126,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133389,
				},
				[257597] = {
					["type"] = "BUFF",
					["source"] = "Azerokk",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129227,
				},
				[268007] = {
					["source"] = "Heart Guardian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139946,
				},
				[257478] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irontide Mastiff",
					["npcID"] = 128551,
				},
				[311905] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blackwandir-Lightning'sBlade",
					["npcID"] = 0,
				},
				[324475] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anima Fountain",
					["npcID"] = 166497,
				},
				[267027] = {
					["source"] = "Venomous Ophidian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135562,
				},
				[310143] = {
					["source"] = "Bibbiråtta",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215607] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cloom-Dragonblight",
					["npcID"] = 0,
				},
				[307976] = {
					["source"] = "Dìvus-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256967] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frightened Brutosaur",
					["npcID"] = 129668,
				},
				[280121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kilrith",
					["npcID"] = 0,
				},
				[321575] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zolramus Necromancer",
					["npcID"] = 163618,
				},
				[321576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brittlebone Warrior",
					["npcID"] = 163122,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snowyuwu-Kazzak",
					["npcID"] = 0,
				},
				[271579] = {
					["encounterID"] = 2105,
					["source"] = "Venture Co. Earthshaper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[191587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bloodynine",
					["npcID"] = 0,
				},
				[312193] = {
					["source"] = "Imprisoned Ritualist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160327,
				},
				[274631] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ironhull Apprentice",
					["npcID"] = 139799,
				},
				[325163] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mistveil Defender",
					["npcID"] = 171772,
				},
				[258627] = {
					["type"] = "BUFF",
					["source"] = "Earthrager",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129802,
				},
				[323629] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[110909] = {
					["source"] = "Deirn-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48518] = {
					["source"] = "Babawa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113656] = {
					["source"] = "Poonpuncher-Magtheridon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207317] = {
					["source"] = "Bloodynine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[345393] = {
					["source"] = "Gonbesa-Deathwing",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[62124] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[327552] = {
					["source"] = "Doom Shroom",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168573,
				},
				[264144] = {
					["npcID"] = 134056,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aqu'sirr",
					["encounterID"] = 2130,
				},
				[115192] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snowyuwu-Kazzak",
					["npcID"] = 0,
				},
				[263309] = {
					["encounterID"] = 2124,
					["source"] = "Adderis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133379,
				},
				[320573] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zolramus Sorcerer",
					["npcID"] = 163128,
				},
				[193359] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[256970] = {
					["npcID"] = 127490,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Knight Captain Valyri",
					["encounterID"] = 2103,
				},
				[54149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spedi-Dragonblight",
					["npcID"] = 0,
				},
				[258674] = {
					["source"] = "Off-Duty Laborer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130436,
				},
				[115008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Murvurk",
					["npcID"] = 0,
				},
				[268177] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Windspeaker Heldis",
					["npcID"] = 136214,
				},
				[258634] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Flamecaster",
					["npcID"] = 127488,
				},
				[260402] = {
					["source"] = "Harding",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Elixir",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gro Rumblehoof",
					["npcID"] = 90734,
				},
				[345623] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nar'zudah",
					["npcID"] = 165824,
				},
				[61295] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fragment-Stormscale",
					["npcID"] = 0,
				},
				[63619] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadowfiend",
					["npcID"] = 19668,
				},
				[325509] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shard of Halkias",
					["npcID"] = 164557,
				},
				[210391] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Midgaro-Kazzak",
					["npcID"] = 0,
				},
				[263274] = {
					["npcID"] = 126832,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
				},
				[256460] = {
					["type"] = "BUFF",
					["source"] = "Fofen",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345985] = {
					["source"] = "Nightsmith",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[121536] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blightwyrm",
					["npcID"] = 0,
				},
				[206930] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Modifar-Deathwing",
					["npcID"] = 0,
				},
				[311486] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Larskendikos",
					["npcID"] = 0,
				},
				[256060] = {
					["type"] = "BUFF",
					["source"] = "Skycap'n Kragg",
					["npcID"] = 126832,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2093,
				},
				[152175] = {
					["source"] = "Whïtetïger",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[327851] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ryangonewild",
					["npcID"] = 0,
				},
				[260708] = {
					["source"] = "Felâir-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311488] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ghare-Deathwing",
					["npcID"] = 0,
				},
				[262092] = {
					["source"] = "Addled Thug",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130435,
				},
				[113862] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Élsa-Karazhan",
					["npcID"] = 0,
				},
				[185311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ivexlogi-TarrenMill",
					["npcID"] = 0,
				},
				[11366] = {
					["source"] = "Englemakeren-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[96231] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[324490] = {
					["encounterID"] = 2382,
					["source"] = "Globgrog",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164255,
				},
				[268184] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Windspeaker Heldis",
					["npcID"] = 136214,
				},
				[335149] = {
					["source"] = "Harding",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Creepy-Deathwing",
					["npcID"] = 0,
				},
				[263066] = {
					["source"] = "Feckless Assistant",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133345,
				},
				[268185] = {
					["source"] = "Refreshment Vendor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136470,
				},
				[322486] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tirnenn Villager",
					["npcID"] = 164929,
				},
				[339848] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58965,
				},
				[23161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hadees-Deathwing",
					["npcID"] = 0,
				},
				[268186] = {
					["npcID"] = 0,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2131,
				},
				[338825] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kazix-Deathwing",
					["npcID"] = 0,
				},
				[19801] = {
					["source"] = "Deathsaber-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300155] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tirnenn Villager",
					["npcID"] = 164929,
				},
				[268187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Windspeaker Heldis",
					["npcID"] = 136214,
				},
				[82691] = {
					["source"] = "Faffy-Frostmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255952] = {
					["npcID"] = 126832,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
				},
				[336964] = {
					["source"] = "Ember Worm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168515,
				},
				[315508] = {
					["source"] = "Donkarnage-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308899] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ednasmaster-Dragonblight",
					["npcID"] = 0,
				},
				[323471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Flesh Crafter",
					["npcID"] = 165872,
				},
				[312451] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160454,
				},
				[222169] = {
					["source"] = "Seer Janidi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 112002,
				},
				[44425] = {
					["source"] = "Furionss-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shilazar-Silvermoon",
					["npcID"] = 0,
				},
				[231895] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Maugris-TwistingNether",
					["npcID"] = 0,
				},
				[236502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mexysham-Stormscale",
					["npcID"] = 0,
				},
				[65412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Baronas-Kazzak",
					["npcID"] = 0,
				},
				[12294] = {
					["source"] = "Felâir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256101] = {
					["npcID"] = 127503,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Overseer Korgus",
					["encounterID"] = 2104,
				},
				[173183] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[322450] = {
					["npcID"] = 164517,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tred'ova",
					["encounterID"] = 2393,
				},
				[202719] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oyvind-BurningBlade",
					["npcID"] = 0,
				},
				[280746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ninefingers",
					["npcID"] = 0,
				},
				[327233] = {
					["source"] = "Plaguebelcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168393,
				},
				[204255] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eqwed-Kazzak",
					["npcID"] = 0,
				},
				[311190] = {
					["source"] = "Animus Mite",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 172812,
				},
				[263074] = {
					["source"] = "Grotesque Experiment",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133345,
				},
				[325523] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Depraved Darkblade",
					["npcID"] = 165515,
				},
				[19434] = {
					["source"] = "Zerodaypanda",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260189] = {
					["type"] = "BUFF",
					["source"] = "Mogul Razdunk",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[327594] = {
					["type"] = "BUFF",
					["source"] = "Plaguebelcher",
					["encounterID"] = 2382,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168396,
				},
				[268194] = {
					["source"] = "Fettedeilig",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rezurektor-Stormscale",
					["npcID"] = 0,
				},
				[280735] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324260] = {
					["source"] = "Smygiz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[320529] = {
					["source"] = "Virulax Blightweaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 168886,
				},
				[346835] = {
					["source"] = "Lunesa-Ghostlands",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307098] = {
					["source"] = "Mórgoth-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203233] = {
					["source"] = "Ishootbricks-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264101] = {
					["type"] = "BUFF",
					["source"] = "Aqu'sirr",
					["npcID"] = 134056,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2130,
				},
				[339400] = {
					["source"] = "Mumfey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188389] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bibbiråtta",
					["npcID"] = 0,
				},
				[48265] = {
					["source"] = "Bolduin-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342309] = {
					["source"] = "Dimag",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329217] = {
					["encounterID"] = 2384,
					["source"] = "Doctor Ickus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164967,
				},
				[331967] = {
					["type"] = "DEBUFF",
					["source"] = "Doctor Ickus",
					["encounterID"] = 2384,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164967,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sanddokan-Kazzak",
					["npcID"] = 0,
				},
				[77575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodynine",
					["npcID"] = 0,
				},
				[187878] = {
					["source"] = "Cudlekins-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307101] = {
					["source"] = "Naida",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[50842] = {
					["source"] = "Coldfinger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274642] = {
					["source"] = "Hoodoo Hexer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136250,
				},
				[338838] = {
					["source"] = "Shadow Duelist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 157563,
				},
				[274342] = {
					["source"] = "Adderis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133379,
				},
				[325551] = {
					["type"] = "BUFF",
					["source"] = "Domina Venomblade",
					["encounterID"] = 2385,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164266,
				},
				[288675] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shermanette",
					["npcID"] = 0,
				},
				[333353] = {
					["type"] = "DEBUFF",
					["source"] = "Domina Venomblade",
					["encounterID"] = 2385,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164266,
				},
				[6788] = {
					["source"] = "Azelthas-Karazhan",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320822] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zolramus Bonemender",
					["npcID"] = 165222,
				},
				[326874] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stonefiend Anklebiter",
					["npcID"] = 167610,
				},
				[197277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Oxomi",
					["npcID"] = 0,
				},
				[331811] = {
					["source"] = "Amalgamation of Light",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164388,
				},
				[329989] = {
					["source"] = "Animated Protector",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 158644,
				},
				[203123] = {
					["source"] = "Anydelx-Frostmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31687] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivoid-BurningLegion",
					["encounterID"] = 2388,
				},
				[343960] = {
					["source"] = "Scauronne-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192999] = {
					["source"] = "Scauronne-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317343] = {
					["source"] = "Ocarenyth-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334747] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Corpse Harvester",
					["npcID"] = 166302,
				},
				[231390] = {
					["source"] = "Croco-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Stoupa-Lightning'sBlade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324859] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mistveil Guardian",
					["npcID"] = 166276,
				},
				[342938] = {
					["source"] = "Østrogains-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[323558] = {
					["source"] = "Moonscar-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328301] = {
					["source"] = "Harding",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[325535] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Depraved Houndmaster",
					["npcID"] = 164562,
				},
				[254471] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jealdo-Dragonblight",
					["npcID"] = 0,
				},
				[343963] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Raspbarry",
					["npcID"] = 0,
				},
				[48778] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pkelove-TwistingNether",
					["npcID"] = 0,
				},
				[30455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ivoid-BurningLegion",
					["npcID"] = 0,
				},
				[307118] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Poisoneye-Dragonblight",
					["npcID"] = 0,
				},
			},
			["aura2_x_offset"] = 0,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateShowSelf"] = "0",
				["nameplateShowEnemyMinus"] = "1",
				["nameplateMotionSpeed"] = "0.05",
				["NamePlateClassificationScale"] = "1",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplateTargetRadialPosition"] = "1",
				["nameplateResourceOnTarget"] = "0",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateLargeTopInset"] = "0.085",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateTargetBehindMaxDistance"] = "30",
				["nameplateMinScale"] = "1",
				["NamePlateHorizontalScale"] = "1",
				["nameplateShowFriendlyMinions"] = "0",
				["NamePlateVerticalScale"] = "1",
			},
			["login_counter"] = 65,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["plate_config"] = {
				["global_health_height"] = 12,
				["global_health_width"] = 112,
			},
			["aura_y_offset"] = 5,
			["use_ui_parent"] = true,
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Time"] = 1547392935,
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Name"] = "Color Automation [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["version"] = -1,
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 348,
					["Options"] = {
						{
							["Type"] = 5,
							["Name"] = "Icon Settings",
							["Value"] = "Icon Settings:",
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 4,
							["Name"] = "Show Icon",
							["Value"] = true,
							["Key"] = "showIcon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show the castbar icon when enabled",
						}, -- [2]
						{
							["Type"] = 4,
							["Name"] = "Icon on Left Side",
							["Value"] = true,
							["Key"] = "iconOnLeftSide",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled it anchor the icon on the left side, right otherwise",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "useFullSize",
							["Value"] = false,
							["Name"] = "Use Big Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled the icon has the size of the cast bar plus the healthbar",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Fine tune the icon size",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 0,
							["Key"] = "iconSizeOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Icon Size Offset",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Space between the icon and the cast bar",
							["Min"] = -5,
							["Name"] = "Icon Padding",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "iconPadding",
						}, -- [6]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 5,
							["Name"] = "Interrupt Texture",
							["Value"] = "Can't Interrupt Texture:",
							["Key"] = "option5",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Name"] = "Show Texture",
							["Value"] = true,
							["Key"] = "showTexture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled show a texture to tell the cast can't be interrupted",
						}, -- [9]
						{
							["Type"] = 3,
							["Name"] = "Texture Path",
							["Value"] = "Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON",
							["Key"] = "iconTexturePath",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_text",
							["Desc"] = "Insert the path for the texture",
						}, -- [10]
						{
							["Type"] = 4,
							["Name"] = "Texture Desaturated",
							["Value"] = true,
							["Key"] = "desaturatedTexture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enbaled, texture is shown in black & white",
						}, -- [11]
						{
							["Type"] = 1,
							["Name"] = "Texture Color",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.3056715726852417, -- [4]
							},
							["Key"] = "textureColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Select the color of the texture",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture width",
							["Min"] = 1,
							["Fraction"] = false,
							["Value"] = 10,
							["Key"] = "textureWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Width",
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 16,
							["Desc"] = "The texture is set to be the same size as the cast bar, fine tune the height as wanted",
							["Min"] = -16,
							["Name"] = "Texture Height Mod",
							["Value"] = 0,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "textureHeightMod",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture position",
							["Min"] = -32,
							["Fraction"] = false,
							["Value"] = 0,
							["Key"] = "texturePosition",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Position",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Adjust the texture transparency",
							["Min"] = 0,
							["Key"] = "textureAlpha",
							["Value"] = 1,
							["Name"] = "Texture Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [16]
					},
					["HooksTemp"] = {
					},
					["semver"] = "",
					["Author"] = "Ditador-Azralon",
					["version"] = -1,
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.castBar.BorderShield:SetDrawLayer(\"artwork\")\n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local noInterruptTexture = castBar.BorderShield\n        \n        if (modTable.config.showIcon) then\n            icon:ClearAllPoints()\n            \n            if (modTable.config.iconOnLeftSide) then\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                    \n                else\n                    \n                    icon:SetPoint (\"topright\", unitFrame.castBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                end\n                \n            else\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                    \n                else\n                    \n                    icon:SetPoint (\"topleft\", unitFrame.castBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                end\n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n        else\n            icon:Hide()\n        end\n        \n        if (modTable.config.showTexture and not castBar.canInterrupt) then\n            noInterruptTexture:Show()\n            \n            local texturePath = modTable.config.iconTexturePath\n            texturePath = texturePath:gsub(\"//\", \"/\")\n            texturePath = texturePath:gsub(\"\\\\\", \"/\")\n            \n            noInterruptTexture:SetTexture (texturePath)\n            noInterruptTexture:SetTexCoord (0, 1, 0, 1)\n            \n            if (modTable.config.desaturatedTexture) then\n                noInterruptTexture:SetDesaturated (modTable.config.desaturatedTexture)\n            else\n                noInterruptTexture:SetVertexColor (DetailsFramework:ParseColors (modTable.config.textureColor))\n            end\n            \n            noInterruptTexture:SetSize (modTable.config.textureWidth, castBar:GetHeight() + modTable.config.textureHeightMod)\n            noInterruptTexture:ClearAllPoints()\n            noInterruptTexture:SetPoint (\"center\", castBar, \"left\", modTable.config.texturePosition, 0)\n            noInterruptTexture:SetAlpha (modTable.config.textureAlpha)\n        else\n            noInterruptTexture:Hide()\n        end\n    end\nend",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Name"] = "Cast Bar Icon Settings [P]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\castbar_icon",
					["Time"] = 1597097268,
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 254,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["version"] = -1,
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {0/128, 21/128, 101/128, 122/128},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {3/128, 18/128, 81/128, 96/128},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = (namePlateWidth - sizes.width * comboPoints)  / comboPoints \n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                if i == 1 then\n                    comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace/2, 0)\n                else\n                    comboPoint:SetPoint (\"left\", envTable.ComboPoints[i-1], \"right\", reservedSpace, 0)\n                end\n                \n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							["103"] = true,
							["Enabled"] = true,
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["Name"] = "Combo Points [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 135426,
					["Time"] = 1603567332,
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Time"] = 1547406548,
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Name"] = "Execute Range [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 135358,
					["version"] = -1,
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1541606242,
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Name"] = "Hide Neutral Units [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 1990989,
					["version"] = -1,
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Time"] = 1547993111,
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Name"] = "Attacking Specific Unit [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["version"] = -1,
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Time"] = 1547409079,
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Name"] = "Extra Border [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 133689,
					["version"] = -1,
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["Options"] = {
					},
					["HooksTemp"] = {
					},
					["semver"] = "",
					["Author"] = "Kastfall-Azralon",
					["version"] = -1,
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    local bf1Anchor = Plater.db.profile.aura_frame1_anchor\n    Plater.SetAnchor (buffFrame1, {side = bf1Anchor.side, x = bf1Anchor.x, y = bf1Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura_grow_direction or 2) == 2)\n    \n    local bf2Anchor = Plater.db.profile.aura_frame2_anchor\n    Plater.SetAnchor (buffFrame2, {side = bf2Anchor.side, x = bf2Anchor.x, y = bf2Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura2_grow_direction or 2) == 2)\n    \nend\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Name"] = "Reorder Nameplate [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 574574,
					["Time"] = 1596791840,
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 59,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1554138845,
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --do nothing if the unit is the player it self\n    if (unitFrame.IsSelf) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    else\n        if (envTable.ForceRefreshNameplateColor) then\n            Plater.RefreshNameplateColor (unitFrame) \n        end\n    end    \n    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --set this to true if you are not using threat colors in the health bar\n    envTable.ForceRefreshNameplateColor = true\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Name"] = "Don't Have Aura [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 136207,
					["version"] = -1,
				}, -- [9]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Initialization"] = "function (modTable)\n    \n    --ATTENTION: after enabling this mod, you may have to adjust the anchor point at the Buff Settings tab\n    \n    local sortByTime = false\n    local invertSort = false\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    local priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n        [\"Pistol Shot\"] = 50,\n        [\"Marked for Death\"] = 99,\n    }\n    \n    -- Sort function - do not touch\n    Plater.db.profile.aura_sort = true\n    \n    \n    function Plater.AuraIconsSortFunction (aura1, aura2)\n        local p1 = priority[aura1.SpellId] or priority[aura1.SpellName] or 1\n        local p2 = priority[aura2.SpellId] or priority[aura2.SpellName] or 1\n        \n        if sortByTime and p1 == p2 then\n            if invertSort then\n                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) > (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\n            else\n                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) < (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\n            end\n        else\n            if invertSort then\n                 return p1 < p2\n            else\n                return p1 > p2\n            end\n        end\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1608663128,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Enabled"] = false,
					["Revision"] = 356,
					["semver"] = "",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Name"] = "Aura Reorder [Plater]",
					["PlaterCore"] = 1,
					["version"] = -1,
					["HooksTemp"] = {
					},
					["Options"] = {
					},
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1548278227,
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Name"] = "Players Targeting a Target [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 1966587,
					["version"] = -1,
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Time"] = 1552354619,
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Name"] = "Current Target Color [Plater]",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 878211,
					["version"] = -1,
				}, -- [12]
			},
			["health_statusbar_bgcolor"] = {
				0.1137254901960784, -- [1]
				0.1137254901960784, -- [2]
				0.1137254901960784, -- [3]
				0.8900000005960464, -- [4]
			},
			["aura_x_offset"] = 0,
			["first_run3"] = true,
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["patch_version"] = 13,
			["script_auto_imported"] = {
				["Unit - Important"] = 11,
				["Aura - Buff Alert"] = 13,
				["Cast - Very Important"] = 11,
				["Explosion Affix M+"] = 11,
				["Aura - Debuff Alert"] = 11,
				["Cast - Ultra Important"] = 11,
				["Cast - Big Alert"] = 11,
				["Cast - Small Alert"] = 11,
				["Auto Set Skull"] = 11,
				["Unit - Main Target"] = 11,
				["Aura - Blink Time Left"] = 11,
				["Countdown"] = 11,
				["Unit - Health Markers"] = 12,
				["Cast - Frontal Cone"] = 11,
				["Fixate"] = 11,
				["Cast - Tank Interrupt"] = 11,
				["Fixate On You"] = 11,
				["Spiteful Affix"] = 1,
				["Unit - Show Energy"] = 11,
			},
			["number_region_first_run"] = true,
			["ui_parent_scale_tune"] = 1.406249965948519,
		},
	},
}
