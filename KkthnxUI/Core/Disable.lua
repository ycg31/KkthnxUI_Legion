local K, C, L = select(2, ...):unpack()

local CheckAddOn = K.CheckAddOn

-- Prevent users config errors
if C.ActionBar.RightBars > 3 then
	C.ActionBar.RightBars = 3
end

if C.ActionBar.BottomBars > 3 then
	C.ActionBar.BottomBars = 3
end

if C.ActionBar.BottomBars == 3 and C.ActionBar.RightBars == 3 then
	C.ActionBar.BottomBars = 3
	C.ActionBar.RightBars = 2
end

if C.ActionBar.SplitBars == true then
	C.ActionBar.BottomBars = 3
	C.ActionBar.RightBars = 2
end

if C.ActionBar.BottomBars < 1 then
	C.ActionBar.BottomBars = 1
end

if C.ActionBar.PetBarHorizontal == true then
	C.ActionBar.StanceBarHorizontal = false
end

if C.Unitframe.Enable == false then
	C.Filger.Enable = false
end

if C.Unitframe.FlatClassPortraits == true then
	C.Unitframe.ClassPortraits = false
end

-- Auto-overwrite script config is X addon is found
-- Here we use our own function to check.
if CheckAddOn("SexyMap") or CheckAddOn("bdMinimap") or CheckAddOn("BasicMinimap") or CheckAddOn("RicoMiniMap") or CheckAddOn("Chinchilla") then
	C.Minimap.Enable = false
end

if CheckAddOn("XPerl") or CheckAddOn("Stuf") or CheckAddOn("PitBull4") or CheckAddOn("ShadowedUnitFrames") or CheckAddOn("oUF_Abu") then
	C.Unitframe.Enable = false
end

if CheckAddOn("Dominos") or CheckAddOn("Bartender4") or CheckAddOn("RazerNaga")  or CheckAddOn("daftMainBar") or CheckAddOn("ConsolePortBar") then
	C.ActionBar.Enable = false
end

if CheckAddOn("WorldQuestTracker") or CheckAddOn("Mapster") or CheckAddOn("WorldQuestsList") then
	C.WorldMap.SmallWorldMap = false
end

if CheckAddOn("AdiBags") or CheckAddOn("ArkInventory") or CheckAddOn("cargBags_Nivaya") or CheckAddOn("cargBags") or CheckAddOn("Bagnon") or CheckAddOn("Combuctor") or CheckAddOn("TBag") or CheckAddOn("BaudBag") then
	C.Bags.Enable = false
end

if CheckAddOn("Prat-3.0") or CheckAddOn("Chatter") then
	C.Chat.Enable = false
end

if CheckAddOn("TidyPlates") or CheckAddOn("Aloft") or CheckAddOn("Kui_Nameplates") then
	C.Nameplates.Enable = false
end

if CheckAddOn("TipTop") or CheckAddOn("TipTac") or CheckAddOn("FreebTip") or CheckAddOn("bTooltip") or CheckAddOn("PhoenixTooltip") or CheckAddOn("Icetip") or CheckAddOn("rTooltip") then
	C.Tooltip.Enable = false
end

if CheckAddOn("Pawn") then
	C.Tooltip.ItemIcon = false
end

if CheckAddOn("TipTacTalents") then
	C.Tooltip.Talents = false
end

if CheckAddOn("ConsolePortBar") then
	C.DataBars.Experience = false
	C.DataBars.Artifact = false
end

if CheckAddOn("GnomishVendorShrinker") or CheckAddOn("AlreadyKnown") then
	C.Misc.AlreadyKnown = false
end

if CheckAddOn("cInterrupt") then
	C.Announcements.Interrupt = false
end

if CheckAddOn("NiceBubbles") then
	C.Skins.ChatBubble = false
end

if CheckAddOn("ChatSounds") then
	C.Chat.WhispSound = false
end

if CheckAddOn("Doom_CooldownPulse") then
	C.PulseCD.Enable = false
end

if CheckAddOn("MBB") or CheckAddOn("MinimapButtonFrame") then
	C.Skins.MinimapButtons = false
	C.Minimap.CollectButtons = false
end
