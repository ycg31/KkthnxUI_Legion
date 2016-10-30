local K, C, L = select(2, ...):unpack()
if C.Minimap.Enable ~= true then return end

local _G = _G
local unpack = unpack
local pairs = pairs
local Mail = MiniMapMailFrame
local MailBorder = MiniMapMailBorder
local MailIcon = MiniMapMailIcon
local MiniMapInstanceDifficulty = MiniMapInstanceDifficulty
local PlaySound, CreateFrame, UIParent = PlaySound, CreateFrame, UIParent
local Movers = K.Movers

-- Minimap border
local MinimapAnchor = CreateFrame("Frame", "MinimapAnchor", UIParent)
MinimapAnchor:CreatePanel("ClassColor", C.Minimap.Size, C.Minimap.Size, unpack(C.Position.Minimap))
Movers:RegisterFrame(MinimapAnchor)

local North = _G["MinimapNorthTag"]
local HiddenFrames = {
	"MinimapCluster",
	"MinimapBorder",
	"MinimapBorderTop",
	"MinimapZoomIn",
	"MinimapZoomOut",
	"MiniMapVoiceChatFrame",
	"MinimapNorthTag",
	"MinimapZoneTextButton",
	"MiniMapTracking",
	"MiniMapWorldMapButton",
	"VoiceChatTalkers",
}

for i, FrameName in pairs(HiddenFrames) do
	local Frame = _G[FrameName]
	Frame:Hide()

	if Frame.UnregisterAllEvents then
		Frame:UnregisterAllEvents()
	end

	North:SetTexture(nil)
end

-- Hide Game Time
MinimapAnchor:RegisterEvent("PLAYER_LOGIN")
MinimapAnchor:RegisterEvent("ADDON_LOADED")
MinimapAnchor:SetScript("OnEvent", function(self, event, addon)
	if addon == "Blizzard_TimeManager" then
		TimeManagerClockButton:Kill()
	end
end)

-- Hide blob ring
Minimap:SetArchBlobRingScalar(0)
Minimap:SetQuestBlobRingScalar(0)

-- Fix garrison report keybind
GarrisonLandingPageMinimapButton.IsShown = function() return true end

-- Parent minimap into our frame
Minimap:SetParent(MinimapAnchor)
Minimap:ClearAllPoints()
Minimap:SetPoint("TOPLEFT", MinimapAnchor, "TOPLEFT", 4, -4)
Minimap:SetPoint("BOTTOMRIGHT", MinimapAnchor, "BOTTOMRIGHT", -4, 4)
Minimap:SetSize(MinimapAnchor:GetWidth(), MinimapAnchor:GetWidth())
-- Backdrop
MinimapBackdrop:ClearAllPoints()
MinimapBackdrop:SetPoint("TOPLEFT", MinimapAnchor, "TOPLEFT", 2, -2)
MinimapBackdrop:SetPoint("BOTTOMRIGHT", MinimapAnchor, "BOTTOMRIGHT", -2, 2)
MinimapBackdrop:SetSize(MinimapAnchor:GetWidth(), MinimapAnchor:GetWidth())

-- Mail
MiniMapMailFrame:ClearAllPoints()
MiniMapMailFrame:SetPoint("BOTTOMRIGHT", Minimap, 4, -4)
MiniMapMailIcon:SetTexture("Interface\\Addons\\KkthnxUI\\Media\\Textures\\Mail")
MiniMapMailBorder:SetTexture("Interface\\Calendar\\EventNotificationGlow")
MiniMapMailBorder:SetBlendMode("ADD")
MiniMapMailBorder:ClearAllPoints()
MiniMapMailBorder:SetPoint("CENTER", MiniMapMailFrame, 0, -1)
MiniMapMailBorder:SetSize(27, 27)
MiniMapMailBorder:SetAlpha(0.5)

-- Queuestatus icon
QueueStatusMinimapButton:SetParent(Minimap)
QueueStatusMinimapButton:SetScale(1)
QueueStatusMinimapButton:ClearAllPoints()
QueueStatusMinimapButton:SetPoint("BOTTOMLEFT", -4, -4)
QueueStatusMinimapButtonBorder:Kill()

-- Garrison icon
if C.Minimap.Garrison == true then
	GarrisonLandingPageMinimapButton:ClearAllPoints()
	GarrisonLandingPageMinimapButton:SetPoint("TOPLEFT", Minimap, "TOPLEFT", -2, 2)
	GarrisonLandingPageMinimapButton:SetSize(32, 32)
else
	GarrisonLandingPageMinimapButton:SetScale(0.0001)
	GarrisonLandingPageMinimapButton:SetAlpha(0)
end

local AutoHide = CreateFrame("Frame")
AutoHide:RegisterEvent("PLAYER_ENTERING_WORLD")
AutoHide:SetScript("OnEvent", function(self, event)
	if UnitAffectingCombat("player") then self:RegisterEvent("PLAYER_REGEN_ENABLED", "AutoHide") return end

	local InInstance, Type = IsInInstance()
	if InInstance and (Type == "party" or Type == "pvp" or Type == "arena" or Type == "raid") and C.Minimap.Garrison == true then
		GarrisonLandingPageMinimapButton:SetScale(0.0001)
		GarrisonLandingPageMinimapButton:SetAlpha(0)
	elseif (not InInstance) and (Type == "none") then
		GarrisonLandingPageMinimapButton:ClearAllPoints()
		GarrisonLandingPageMinimapButton:SetPoint("TOPLEFT", Minimap, "TOPLEFT", -2, 2)
		GarrisonLandingPageMinimapButton:SetSize(32, 32)
	end

	self:UnregisterEvent("PLAYER_REGEN_ENABLED")
end)

-- Dungeon info
MiniMapInstanceDifficulty:ClearAllPoints()
MiniMapInstanceDifficulty:SetParent(Minimap)
MiniMapInstanceDifficulty:SetPoint("TOPLEFT", Minimap, "TOPLEFT", 2, -2)
MiniMapInstanceDifficulty:SetScale(0.8)

GuildInstanceDifficulty:ClearAllPoints()
GuildInstanceDifficulty:SetParent(Minimap)
GuildInstanceDifficulty:SetPoint("TOPLEFT", Minimap, "TOPLEFT", 2, -2)
GuildInstanceDifficulty:SetScale(0.8)

MiniMapChallengeMode:ClearAllPoints()
MiniMapChallengeMode:SetParent(Minimap)
MiniMapChallengeMode:SetPoint("TOPLEFT", Minimap, "TOPLEFT", 2, -2)
MiniMapChallengeMode:SetScale(0.6)

-- Feedback icon
if FeedbackUIButton then
	FeedbackUIButton:ClearAllPoints()
	FeedbackUIButton:SetPoint("BOTTOM", Minimap, "BOTTOM", 0, -20)
	FeedbackUIButton:SetScale(0.8)
end

-- Streaming icon
if StreamingIcon then
	StreamingIcon:ClearAllPoints()
	StreamingIcon:SetPoint("BOTTOM", Minimap, "BOTTOM", 0, -20)
	StreamingIcon:SetScale(0.8)
	StreamingIcon:SetFrameStrata("BACKGROUND")
end

Minimap.Ticket = CreateFrame("Frame", nil, Minimap)
Minimap.Ticket:SetSize(Minimap:GetWidth() + 4, 24)
Minimap.Ticket:SetFrameLevel(Minimap:GetFrameLevel() + 4)
Minimap.Ticket:SetFrameStrata(Minimap:GetFrameStrata())
Minimap.Ticket:SetPoint("BOTTOM", 0, -47)
Minimap.Ticket:FontString("Text", C.Media.Font, 12)
Minimap.Ticket.Text:SetPoint("CENTER")
Minimap.Ticket.Text:SetText(HELP_TICKET_EDIT)
Minimap.Ticket:SetAlpha(0)

-- Ticket icon
HelpOpenTicketButton:SetParent(Minimap.Ticket)
HelpOpenTicketButton:SetFrameLevel(Minimap.Ticket:GetFrameLevel() + 1)
HelpOpenTicketButton:SetFrameStrata(Minimap.Ticket:GetFrameStrata())
HelpOpenTicketButton:ClearAllPoints()
HelpOpenTicketButton:SetAllPoints()
HelpOpenTicketButton:SetHighlightTexture(nil)
HelpOpenTicketButton:SetAlpha(0)
HelpOpenTicketButton:HookScript("OnShow", function(self) Minimap.Ticket:SetAlpha(1) end)
HelpOpenTicketButton:HookScript("OnHide", function(self) Minimap.Ticket:SetAlpha(0) end)

-- Gametime
GameTimeFrame:SetParent(Minimap)
GameTimeFrame:SetScale(0.6)
GameTimeFrame:ClearAllPoints()
GameTimeFrame:SetPoint("TOPRIGHT", Minimap, "TOPRIGHT", -2, -2)
GameTimeFrame:SetHitRectInsets(0, 0, 0, 0)
GameTimeFrame:GetNormalTexture():SetTexCoord(0, 1, 0, 1)
GameTimeFrame:SetNormalTexture("Interface\\Addons\\KkthnxUI\\Media\\Textures\\Calendar.blp")
GameTimeFrame:SetPushedTexture(nil)
GameTimeFrame:SetHighlightTexture(nil)
GameTimeFrame:SetAlpha(0)
GameTimeFrame:HookScript("OnEnter", function()
	GameTimeFrame:FadeIn()
end)
GameTimeFrame:HookScript("OnLeave", function()
	GameTimeFrame:FadeOut()
end)

local FontString = GameTimeFrame:GetFontString()
FontString:ClearAllPoints()
FontString:SetPoint("CENTER", 0, -6)
FontString:SetFont(C.Media.Font, 16)
FontString:SetTextColor(unpack(C.Media.Backdrop_Color))

-- Enable mouse scrolling
Minimap:EnableMouseWheel()
local function Zoom(self, direction)
	if(direction > 0) then Minimap_ZoomIn()
else Minimap_ZoomOut() end
end
Minimap:SetScript("OnMouseWheel", Zoom)

-- For others mods with a minimap button, set minimap buttons position in square mode
function GetMinimapShape() return "SQUARE" end

-- Set border texture
MinimapBackdrop:SetBackdrop(K.Backdrop)
MinimapBackdrop:SetBackdropColor(0.05, 0.05, 0.05, 0.0)
MinimapBackdrop:SetBackdropBorderColor(unpack(C.Media.Border_Color))
if C.Blizzard.ColorTextures == true then
	MinimapBackdrop:SetBackdropBorderColor(unpack(C.Blizzard.TexturesColor))
end
MinimapBackdrop:SetOutside(Minimap, 4, 4)

-- Set square map view
Minimap:SetMaskTexture(C.Media.Blank)
Minimap:SetArchBlobRingAlpha(0)
Minimap:SetQuestBlobRingAlpha(0)
MinimapBorder:Hide()