if (not IsAddOnLoaded("FuBar") or not AceLibrary or not FuBar2DB) then
	-- don't bother loading plugin data, FuBarPlugin2.0 isn't loaded successfully
	return;
end

DamageMetersFu = AceLibrary("AceAddon-2.0"):new("AceConsole-2.0", "AceEvent-2.0", "AceDB-2.0", "FuBarPlugin-2.0");
local L = AceLibrary("AceLocale-2.2"):new("DamageMetersFu");
local Tablet = AceLibrary("Tablet-2.0");

L:RegisterTranslations("enUS", function() return {
	["tabletHint"] = "Click to toggle DamageMeters.",
	["labelName"] = "DamageMeters",
	["Clear"] = true,
	["Clear all events."] = true,
	["Values"] = true,
	["Selection of values to show as text."] = true,
	["Ranks"] = true,
	["Selection of ranks to show as text."] = true,
	["Leaders"] = true,
	["Selection of leaders to show as text."] = true,
	["Toggle display"] = true,
} end);

DamageMetersFu:RegisterDB("DamageMetersFuDB");
DamageMetersFu:RegisterDefaults("profile", {
	values = {}, ranks = {}, leaders = {}
})
DamageMetersFu.hasIcon = "Interface\\AddOns\\DamageMeters\\DamageMetersFu\\icon"; -- true;
DamageMetersFu.defaultPosition = "RIGHT";

local optionsTable = {
	handler = DamageMetersFu,
	type = "group",
	args = {
		clear = {
            		order = 1,
			type = "execute",
			name = L["Clear"],
			desc = L["Clear all events."],
			func = "Clear",
		},
		spacer = { type = "header", order = 2 },
		values = {
            		order = 3,
			type = "group",
			name = L["Values"],
			desc = L["Selection of values to show as text."],
			args = {},
		},
		ranks = {
            		order = 4,
			type = "group",
			name = L["Ranks"],
			desc = L["Selection of ranks to show as text."],
			args = {},
		},
		leaders = {
            		order = 5,
			type = "group",
			name = L["Leaders"],
			desc = L["Selection of leaders to show as text."],
			args = {},
		},
	};
};

function DamageMetersFu:AddQuantsToMenu()
	local quant;
	for quant = 1, DamageMeters_Quantity_MAX do
		optionsTable.args.values.args[quant] = {
			type = "toggle",
			order = quant,
			name = DamageMeters_GetQuantityString(quant, true),
			desc = L["Toggle display"],
			get = function() return DamageMetersFu.db.profile.values[quant] end,
			set = function(v) DamageMetersFu.db.profile.values[quant] = v end,
		}
		optionsTable.args.ranks.args[quant] = {
			type = "toggle",
			order = quant,
			name = DamageMeters_GetQuantityString(quant, true),
			desc = L["Toggle display"],
			get = function() return DamageMetersFu.db.profile.ranks[quant] end,
			set = function(v) DamageMetersFu.db.profile.ranks[quant] = v end,
		}
		optionsTable.args.leaders.args[quant] = {
			type = "toggle",
			order = quant,
			name = DamageMeters_GetQuantityString(quant, true),
			desc = L["Toggle display"],
			get = function() return DamageMetersFu.db.profile.leaders[quant] end,
			set = function(v) DamageMetersFu.db.profile.leaders[quant] = v end,
		}
	end
end

DamageMetersFu:AddQuantsToMenu();

DamageMetersFu:RegisterChatCommand({ "/dmfu" }, optionsTable);
DamageMetersFu.OnMenuRequest = optionsTable;

function DamageMetersFu:OnTextUpdate()
	if (self:IsTextShown()) then
		self:ShowText();
		self:SetText(self:GetButtonText());
	else
		self:HideText();
	end
end
DamageMetersFu:ScheduleRepeatingEvent(DamageMetersFu.OnTextUpdate, 1, DamageMetersFu);

function DamageMetersFu:OnTooltipUpdate()
	Tablet:SetHint(L["tabletHint"]);
end

function DamageMetersFu:OnClick()
	DamageMeters_ToggleShow();
end

function DamageMetersFu:Clear()
	DamageMeters_Clear();
end

-- Get Button Text
function DamageMetersFu:GetButtonText()
	local retstr = "";
	local quant;
	local quantColorCode = "|cFFFFD040";

	-- Values.
	for quant = 1, DamageMeters_Quantity_MAX do
		if (DamageMetersFu.db.profile.values[quant]) then
			retstr = string.format("%s "..quantColorCode.."%s=|cFFFFFFFF%s"..FONT_COLOR_CODE_CLOSE, retstr, DM_QUANTDEFS[quant].titanAbbrev, self:GetValue(quant));
		end
	end

	-- Ranks.
	local playerRanks = DamageMeters_rankTables[DMT_ACTIVE][UnitName("Player")];
	if (nil ~= playerRanks and #(playerRanks) > 0) then
		for quant = 1, DamageMeters_Quantity_MAX do
			if (DamageMetersFu.db.profile.ranks[quant]) then
				local rank = playerRanks[quant];
				if (nil == rank) then
					rank = "-";
				else
					rank = tostring(rank);
				end
				retstr = string.format("%s "..quantColorCode.."%s#=|cFFFFFFFF%s"..FONT_COLOR_CODE_CLOSE, retstr, DM_QUANTDEFS[quant].titanAbbrev, rank);
			end
		end
	end

	-- Leaders.
	for quant = 1, DamageMeters_Quantity_MAX do
		if (DamageMetersFu.db.profile.leaders[quant]) then
			retstr = string.format("%s "..quantColorCode.."%sL=|cFFFFFFFF%s"..FONT_COLOR_CODE_CLOSE, retstr, DM_QUANTDEFS[quant].titanAbbrev, self:GetLeaderName(quant));
		end
	end

	if (retstr == "") then
		retstr = "|cffffffff"..L["labelName"].."|r";
	end

	return retstr
end

function DamageMetersFu:GetValue(quantity)
	local value = DamageMeters_GetQuantityValueString(quantity, UnitName("Player"));
	if (not value) then
		value = "-";
	end
	return value;
end

function DamageMetersFu:GetLeaderName(quant)
	for player, struct in pairs(DamageMeters_rankTables[DMT_ACTIVE]) do
		if (struct[quant] == 1) then
			return player;
		end
	end

	return "-";
end
