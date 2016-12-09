-- Localization for zhCN clients by yandong31
local Locale = GetLocale()

if (Locale ~= "zhCN") then
	return
end

local PerformanceSlight = "\n|cffFF0000禁用此功能可能会略微提高性能|r" -- For semi-high CPU options
local ToggleOffReminder = "\n|cffFF0000关闭这个将只显示上面设置的动作条栏数|r"

-- Actionbar
UIConfigLocal.ActionBar = "动作条"
UIConfigLocal.ActionBarBottomBars = "动作条的栏数 (1, 2 或 3)"
UIConfigLocal.ActionBarButtonSize = "按钮尺寸"
UIConfigLocal.ActionBarButtonSpace = "按钮间隔"
UIConfigLocal.ActionBarEnable = "使用动作条插件"
UIConfigLocal.ActionBarEquipBorder = "在装备的物品上显示绿色边框"
UIConfigLocal.ActionBarGrid = "显示空按钮"
UIConfigLocal.ActionBarHideHighlight = "关闭触发高亮"
UIConfigLocal.ActionBarHotkey = "按钮上显示快捷键"
UIConfigLocal.ActionBarMacro = "显示宏名称"
UIConfigLocal.ActionBarOutOfMana = "超过法力值颜色"
UIConfigLocal.ActionBarOutOfRange = "超过攻击距离颜色"
UIConfigLocal.ActionBarPetBarHide = "隐藏宠物动作条"
UIConfigLocal.ActionBarPetBarHorizontal = "宠物动作条横置"
UIConfigLocal.ActionBarPetBarMouseover = "宠物动作条鼠标滑过可见 (只对横置宠物动作条有效)"
UIConfigLocal.ActionBarRightBars = "右侧动作条的数量 (0, 1, 2 或 3)"
UIConfigLocal.ActionBarRightBarsMouseover = "右侧按钮鼠标滑过可见"
UIConfigLocal.ActionBarSelfCast = "右键点击总是对自己施法（忽略当前目标）"
UIConfigLocal.ActionBarSplitBars = "把第5个动作条拆分为2个（各6个按钮）"
UIConfigLocal.ActionBarStanceBarHide = "隐藏姿态栏"
UIConfigLocal.ActionBarStanceBarHorizontal = "姿态栏横置"
UIConfigLocal.ActionBarStanceBarMouseover = "姿态栏鼠标滑过可见"
UIConfigLocal.ActionBarToggleMode = "使用切换模式，点击按钮可切换显示动作条的数量"..ToggleOffReminder

-- Announcements
UIConfigLocal.Announcements = "公告"
UIConfigLocal.AnnouncementsBadGear = "光环持续时间低时闪烁"
UIConfigLocal.AnnouncementsInterrupt = "打断施法时在队伍中通告"
UIConfigLocal.AnnouncementsPullCountdown = "使用/pc开始一个简单的倒计时通告"
UIConfigLocal.AnnouncementsSaySapped = "被 |cFFFFF569盗贼|r 闷棍时通告"
UIConfigLocal.AnnouncementsSpells = "在小队和团队中通告你的施法"
UIConfigLocal.AnnouncementsSpellsFromAll = "检查所有人员的施法"

-- Automation
UIConfigLocal.Automation = "自动化"
UIConfigLocal.AutomationAutoInvite = "自动接受朋友和公会人员的邀请"
UIConfigLocal.AutomationAutoCollapse = "战斗自动折叠任务跟踪"
UIConfigLocal.AutomationDeclineDuel = "自动拒绝决斗"
UIConfigLocal.AutomationLoggingCombat = "在团队战斗中自动开启战斗日志"
UIConfigLocal.AutomationNoBanner = "自动隐藏“Boss Banner”战利品框架"
UIConfigLocal.AutomationResurrection = "战场自动复活"
UIConfigLocal.AutomationScreenShot = "获得成就时自动截屏"
UIConfigLocal.AutomationTabBinder = "Tab键仅在敌对目标切换"

-- Bag
UIConfigLocal.Bags = "背包"
UIConfigLocal.BagsBagFilter = "拾取时从背包中自动删除无用的物品"
UIConfigLocal.BagsButtonSize = "设置背包每格的尺寸"
UIConfigLocal.BagsEnable = "开启背包"
UIConfigLocal.BagsInsertLeftToRight = "优先将物品放在剩余格数最多的包裹"
UIConfigLocal.BagsItemsPerRow = "设置每行多少格"
UIConfigLocal.BagsPulseNewItem = "新拾取的物品闪烁"
UIConfigLocal.BagsSortRightToLeft = "整理背包时从右到左，从下到上排序"
UIConfigLocal.BagsSpacing = "设置每格之间的间隔"

-- Blizzard
UIConfigLocal.Blizzard = "暴雪相关设置"
UIConfigLocal.BlizzardClassColor = "在朋友列表、团队列表中玩家的名字按职业着色"
UIConfigLocal.BlizzardColorTextures = "更改大多数UI纹理和颜色"
UIConfigLocal.BlizzardEasyDelete = "删除 |CFF0080ff蓝色|r/|CFFb048f8史诗|r 物品时不需要输入delete"
UIConfigLocal.BlizzardReplaceBlizzardFonts = "使用|cff3c9bedKkthnxUI|r的字体替换|cff00B4FF系统字体"
UIConfigLocal.BlizzardReputationGain = "显示您获得的声望"
UIConfigLocal.BlizzardTexturesColor = "UI texture hue color. (Default is Classcolor)"
UIConfigLocal.BlizzardVehicleMouseover = "载具框体鼠标滑过可见"

-- DataBars
UIConfigLocal.DataBars = "信息条"
UIConfigLocal.DataBarsArtifactColor = "神器条颜色"
UIConfigLocal.DataBarsArtifactEnable = "显示神器条"
UIConfigLocal.DataBarsArtifactFade = "神器条渐隐"
UIConfigLocal.DataBarsArtifactHeight = "神器条高度"
UIConfigLocal.DataBarsArtifactWidth = "神器条宽度"
UIConfigLocal.DataBarsExperienceColor = "经验条颜色"
UIConfigLocal.DataBarsExperienceEnable = "使用经验条"
UIConfigLocal.DataBarsExperienceFade = "经验条渐隐"
UIConfigLocal.DataBarsExperienceHeight = "经验条高度"
UIConfigLocal.DataBarsExperienceRestedColor = "经验条剩余颜色"
UIConfigLocal.DataBarsExperienceWidth = "经验条宽度"
UIConfigLocal.DataBarsHonorColor = "荣誉条颜色"
UIConfigLocal.DataBarsHonorEnable = "使用荣誉条"
UIConfigLocal.DataBarsHonorFade = "荣誉条渐隐"
UIConfigLocal.DataBarsHonorHeight = "荣誉条高度"
UIConfigLocal.DataBarsHonorWidth = "荣誉条宽度"
UIConfigLocal.DataBarsReputationEnable = "启用声望条"
UIConfigLocal.DataBarsReputationFade = "声望条渐隐"
UIConfigLocal.DataBarsReputationHeight = "声望条高度"
UIConfigLocal.DataBarsReputationWidth = "声望条宽度"

-- Auras
UIConfigLocal.Auras = "光环"
UIConfigLocal.AurasAnimation = "光环显示一个“进入”动画"..PerformanceSlight
UIConfigLocal.AurasBuffsPerRow = "设置单行光环的数量"
UIConfigLocal.AurasCastBy = "鼠标指针提示谁释放的这个光环"
UIConfigLocal.AurasConsolidate = "固定光环到第一个"
UIConfigLocal.AurasEnable = "使用光环插件"
UIConfigLocal.AurasFlash = "当光环持续时间短时开始闪烁"..PerformanceSlight
UIConfigLocal.AurasHideBuffs = "不显示增益魔法（buff）"
UIConfigLocal.AurasHideDebuffs = "不显示减益魔法（debuff）"

-- Chat
UIConfigLocal.Chat = "聊天"
UIConfigLocal.ChatFading = "聊天信息渐隐"
UIConfigLocal.ChatDamageMeterSpam = "将垃圾信息合并到战斗日志聊天窗口"
UIConfigLocal.ChatEnable = "使用聊天插件"
UIConfigLocal.ChatFilter = "移除某些玩家的垃圾信息"
UIConfigLocal.ChatHeight = "聊天窗体高度"
UIConfigLocal.ChatLinkBrackets = "将链接显示在括号中"
UIConfigLocal.ChatLinkColor = "设置链接的颜色"
UIConfigLocal.ChatOutline = "聊天字体使用阴影效果"
UIConfigLocal.ChatScrollByX = "使用鼠标滚轮滚动聊天记录时每次滚动的行数"
UIConfigLocal.ChatSpam = "移除一些系统垃圾信息，比如某某在决斗中战胜了某某"
UIConfigLocal.ChatTabsMouseover = "聊天标签鼠标滑过可见"
UIConfigLocal.ChatTabsOutline = "聊天标签字体使用阴影效果"
UIConfigLocal.ChatWhispSound = "收到密语时声音提示"
UIConfigLocal.ChatWidth = "聊天框体的宽度"

-- DataText
UIConfigLocal.DataText = "信息文本"
UIConfigLocal.DataTextBattleground = "启用显示战场信息的数据文本"
UIConfigLocal.DataTextBottomBar = "在小地图底部显示时间信息"
UIConfigLocal.DataTextLocalTime = "使用本地时间，而不是服务器时间"
UIConfigLocal.DataTextLocation = "在小地图顶上显示信息文本"
UIConfigLocal.DataTextSystem = "在小地图下面显示延迟和图像帧数信息"
UIConfigLocal.DataTextTime = "在小地图底部显示时间信息"
UIConfigLocal.DataTextTime24Hr = "使用24小时时间制"

-- Cooldown
UIConfigLocal.Cooldown = "冷却"
UIConfigLocal.CooldownEnable = "开启冷却"
UIConfigLocal.CooldownFontSize = "冷却文本大小"
UIConfigLocal.CooldownThreshold = "冷却阈值"

-- Filger
UIConfigLocal.Filger = "Filger"
UIConfigLocal.FilgerBuffsSize = "增益魔法尺寸"
UIConfigLocal.FilgerCooldownSize = "冷却文本尺寸"
UIConfigLocal.FilgerDisableCD = "不显示冷却"
UIConfigLocal.FilgerEnable = "开启Filger"
UIConfigLocal.FilgerMaxTestIcon = "测试的图标数量"
UIConfigLocal.FilgerPvPSize = "PvP 减益魔法尺寸"
UIConfigLocal.FilgerShowTooltip = "显示提示"
UIConfigLocal.FilgerTestMode = "测试模式"

-- General
UIConfigLocal.General = "基础设置"
UIConfigLocal.GeneralAutoScale = "UI自动缩放"
UIConfigLocal.GeneralBubbleBackdrop = "移除聊天泡泡背景"
UIConfigLocal.GeneralBubbleFontSize = "聊天泡泡字体大小"
UIConfigLocal.GeneralCustomLagTolerance = "调整“滞后公差”滑块来匹配你的世界的延迟"
UIConfigLocal.GeneralShowConfigButton = "在小地图显示配置图标"
UIConfigLocal.GeneralDisableTutorialButtons = "禁用某些框架上的教程按钮"
UIConfigLocal.GeneralTranslateMessage = "弹出GUI说明"
UIConfigLocal.GeneralUIScale = "UI缩放倍数(关闭自动缩放才能生效)"
UIConfigLocal.GeneralWelcomeMessage = "在聊天窗口显示欢迎信息"

-- Loot
UIConfigLocal.Loot = "拾取"
UIConfigLocal.LootConfirmDisenchant = "分解自动确认"
UIConfigLocal.LootAutoGreed = "对高级别的绿色装备自动贪心或分解"
UIConfigLocal.LootLootFilter = "根据物品稀有程度，自动过滤其他成员拾取信息"
UIConfigLocal.LootEnable = "启用拾取插件"
UIConfigLocal.LootIconSize = "I图标尺寸"
UIConfigLocal.LootGroupLoot = "启用团队拾取框体"
UIConfigLocal.LootWidth = "拾取框体宽度"

-- Minimap
UIConfigLocal.Minimap = "小地图"
UIConfigLocal.MinimapCollectButtons = "集中某些小地图图标"
UIConfigLocal.MinimapEnable = "开启方形小地图"
UIConfigLocal.MinimapFadeButtons = "集合在小地图的图标添加淡出效果"
UIConfigLocal.MinimapGarrison = "职业大厅图标显示在小地图上"
UIConfigLocal.MinimapSize = "地图尺寸-默认150"
UIConfigLocal.MinimapPing = "有人点击小图标时显示一条信息 |cffff0000*|r |ccfabd473Kkthnx|r |cffff0000*|r"

-- Misc
UIConfigLocal.Misc = "杂项"
UIConfigLocal.MiscAlreadyKnown = "着色已有的食谱、坐骑和宠物"
UIConfigLocal.MiscArmory = "在目标头像右键菜单中添加英雄榜选项(此选项可能会影响单位框体右键菜单)"
UIConfigLocal.MiscAutoRepair = "当访问修理NPC时，自动修复你的装备"
UIConfigLocal.MiscAutoSellGrays = "自动售卖灰色物品"
UIConfigLocal.MiscColorPicker = "增强颜色选择器"
UIConfigLocal.MiscEnhancedMail = "邮件框体添加一键所有邮件的按钮"
UIConfigLocal.MiscErrors = "过滤错误信息"
UIConfigLocal.MiscBGSpam = "屏蔽boss的废话"
UIConfigLocal.MiscInviteKeyword = "邀请快捷键 (/ainv)"
UIConfigLocal.MiscItemLevel = "显示物品等级"
UIConfigLocal.MiscMoveBlizzard = "移动某些暴雪自带框体"
UIConfigLocal.MiscSellMisc = "自动售卖不是灰色品质但无用的物品"
UIConfigLocal.MiscSlotDurability = "角色面板显示装备耐久"
UIConfigLocal.MiscAFKCamera = "离开时旋转镜头"
UIConfigLocal.MiscUseGuildRepair = "开启自动修理时使用公会资金"

-- Nameplates
UIConfigLocal.Nameplates = "姓名板"
UIConfigLocal.NameplatesAdditionalHeight = "被选中的姓名板增加的高度"
UIConfigLocal.NameplatesAdditionalWidth = "被选中的姓名板增加的宽度"
UIConfigLocal.NameplatesAurasSize = "减益魔法尺寸"
UIConfigLocal.NameplatesBadColor = "根据坦克或者dps、治疗等角色的不同，对负面信息采用不同的着色"
UIConfigLocal.NameplatesCastbarName = "显示姓名板施法条"
UIConfigLocal.NameplatesClassIcons = "在PvP中用职业图标代替头像"
UIConfigLocal.NameplatesClamp = "姓名板超出视野时，将固定在屏幕顶部"
UIConfigLocal.NameplatesCombat = "在战斗中自动显示姓名板"
UIConfigLocal.NameplatesDistance = "显示多少码范围内目标的姓名板"
UIConfigLocal.NameplatesEnable = "开启姓名板插件"
UIConfigLocal.NameplatesEnhancedThreat = "启用威胁功能，根据角色自动更改"
UIConfigLocal.NameplatesGoodColor = "根据坦克或者dps、治疗等角色的不同，对增益信息采用不同的着色"
UIConfigLocal.NameplatesHealerIcon = "在战场中治疗姓名板显示一个图标"
UIConfigLocal.NameplatesHealthValue = "生命值"
UIConfigLocal.NameplatesHeight = "姓名板高度"
UIConfigLocal.NameplatesNameAbbreviate = "缩写长度超过18个字符的名称"
UIConfigLocal.NameplatesNearColor = "失去/获取威胁时的颜色"
UIConfigLocal.NameplatesOffTankColor = "OT时姓名板颜色"
UIConfigLocal.NameplatesSpiral = "光环围绕姓名板"
UIConfigLocal.NameplatesTimer = "在姓名板显示光环冷却计时"
UIConfigLocal.NameplatesTotemIcons = "在敌对图腾姓名板上方显示图标"
UIConfigLocal.NameplatesTrackAuras = "显示减益魔法"
UIConfigLocal.NameplatesWidth = "N姓名板宽度"

-- PulseCD
UIConfigLocal.PulseCD = "冷却闪烁"
UIConfigLocal.PulseCDAnimationScale = "动画缩放"
UIConfigLocal.PulseCDEnable = "显示冷却闪烁"
UIConfigLocal.PulseCDHoldTime = "最大不透明度保持时间"
UIConfigLocal.PulseCDSize = "闪烁图标尺寸"
UIConfigLocal.PulseCDSound = "声音通知"
UIConfigLocal.PulseCDThreshold = "最小阈值时间"

-- RaidCD
UIConfigLocal.RaidCD = "团队冷却"
UIConfigLocal.RaidCDEnable = "开启团队冷却"
UIConfigLocal.RaidCDHeight = "团队冷却条高度"
UIConfigLocal.RaidCDWidth = "团队冷却条宽度 (如果图标启用，宽度+ 28)"
UIConfigLocal.RaidCDUpWards = "冷却条向上排序"
UIConfigLocal.RaidCDExpiration = "按到期时间排序"
UIConfigLocal.RaidCDShowSelf = "显示自己的冷却时间"
UIConfigLocal.RaidCDShowIcon = "团队冷却图标"
UIConfigLocal.RaidCDShowInRaid = "在团队中显示"
UIConfigLocal.RaidCDShowInParty = "在小队中显示"
UIConfigLocal.RaidCDShowInArena = "在竞技场显示"

-- Config GUI Buttons
UIConfigLocal.ConfigApplyButton = "应用"
UIConfigLocal.ConfigButtonReset = "重置所有"
UIConfigLocal.ConfigCloseButton = "关闭"

-- Config Static Popups
UIConfigLocal.ConfigPerChar = "你确定要在分别设置和统一设置上切换?"
UIConfigLocal.ConfigResetAll = "你确定要重置|cff3c9bedKkthnxUI|r的所有设置？"
UIConfigLocal.ConfigResetChar = "你确定要重置|r的设置?"
UIConfigLocal.ConfigSetSavedSettings = "按角色分别设置"

-- Skins
UIConfigLocal.Skins = "插件皮肤"
UIConfigLocal.SkinsChatBubble = "Blizzard chat bubbles"
UIConfigLocal.SkinsDBM = "DeadlyBossMods"
UIConfigLocal.SkinsDBMMove = "Allow to move DBM bars"
UIConfigLocal.SkinsMinimapButtons = "Minimap buttons"
UIConfigLocal.SkinsRecount = "Recount"
UIConfigLocal.SkinsSkada = "Skada"
UIConfigLocal.SkinsSpy = "Spy"
UIConfigLocal.SkinsWeakAuras = "WeakAuras"

-- Tooltip
UIConfigLocal.Tooltip = "提示信息"
UIConfigLocal.TooltipAchievements = "在提示信息中比较成就"
UIConfigLocal.TooltipCursor = "鼠标跟随"
UIConfigLocal.TooltipEnable = "开启提示信息"
UIConfigLocal.TooltipHealthValue = "生命值"
UIConfigLocal.TooltipHyperLink = "将鼠标悬停在超链接上时，显示提示"
UIConfigLocal.TooltipInstanceLock = "显示你的副本锁定状态"
UIConfigLocal.TooltipItemCount = "物品计数"
UIConfigLocal.TooltipItemIcon = "显示物品或法术图标"
UIConfigLocal.TooltipShowSpec = "显示玩家专业"
UIConfigLocal.TooltipSpellID = "显示法术id"

-- Unitframe
UIConfigLocal.Unitframe = "单位框体"
UIConfigLocal.UnitframeCastbars = "启用单位框体施法条"
UIConfigLocal.UnitframeCastbarSafeZoneColor = "玩家施法条安全区域颜色"
UIConfigLocal.UnitframeClassColor = "生命条按职业着色"
UIConfigLocal.UnitframeClassPortraits = "使用老的职业头像"
UIConfigLocal.UnitframeCombatText = "显示战斗反馈"
UIConfigLocal.UnitframeEnable = "启用单位框体插件"
UIConfigLocal.UnitframeFlatClassPortraits = "使用新的职业头像"
UIConfigLocal.UnitframeFocusCastbarHeight = "焦点目标施法条高度"
UIConfigLocal.UnitframeFocusCastbarWidth = "焦点目标施法条宽度"
UIConfigLocal.UnitframeParty = "显示小队框体"
UIConfigLocal.UnitframePlayerCastbarHeight = "玩家施法条高度"
UIConfigLocal.UnitframePlayerCastbarWidth = "玩家施法条宽度"
UIConfigLocal.UnitframePlayerDebuffsOnly = "只着色玩家施放的减益魔法"
UIConfigLocal.UnitframePortraitTimer = "头像计时"
UIConfigLocal.UnitframePowerPredictionBar = "能量预测栏(显示正在释放法术预计消耗的能量)"
UIConfigLocal.UnitframeScale = "缩放某些单位框体"
UIConfigLocal.UnitframeShowArena = "竞技场框体"
UIConfigLocal.UnitframeShowBoss = "boss框体"
UIConfigLocal.UnitframeShowPlayer = "在队伍中显示你自己"
UIConfigLocal.UnitframeStyle = "单位框体样式 'fat 或 normal'"
UIConfigLocal.UnitframeTargetCastbarHeight = "目标施法条高度"
UIConfigLocal.UnitframeTargetCastbarWidth = "目标施法条宽度"
UIConfigLocal.UnitframeTextHealthColor = "血条文本颜色"
UIConfigLocal.UnitframeTextNameColor = "姓名文本颜色"
UIConfigLocal.UnitframeTextPowerColor = "能量条文本颜色"
UIConfigLocal.UnitframeThreatGlow = "有威胁时在单位框架周围发光"
UIConfigLocal.UnitframeThreatValue = "在玩家框架上显示威胁文本"
UIConfigLocal.UnitframeIconPlayer = "设置玩家施法条技能图标位置（填LEFT、RIGHT或者NONE）"
UIConfigLocal.UnitframeIconTarget = "设置目标施法条技能图标位置（填LEFT、RIGHT或者NONE）"

-- Raidframe
UIConfigLocal.Raidframe = "团队框架"
UIConfigLocal.RaidframeAuraWatch = "在团队框体的角落显示职业特定buff计时"
UIConfigLocal.RaidframeAuraWatchTimers = "显示Debuff Watch创建的debuff计时"
UIConfigLocal.RaidframeDeficitThreshold = "生命值损失阀值"
UIConfigLocal.RaidframeEnable = "开启团队框体"
UIConfigLocal.RaidframeHeight = "团队框体高度"
UIConfigLocal.RaidframeHorizontalHealthBars = "生命条横置"
UIConfigLocal.RaidframeIconSize = "减益魔法尺寸"
UIConfigLocal.RaidframeIndicatorSize = "指示符尺寸"
UIConfigLocal.RaidframeMainTankFrames = "团队中开启坦克和治疗框体"
UIConfigLocal.RaidframeManabarHorizontal = "法力条横置"
UIConfigLocal.RaidframeManabarShow = "显示法力条"
UIConfigLocal.RaidframeMaxUnitPerColumn = "每列显示多少个单位"
UIConfigLocal.RaidframeRaidAsParty = "使用团队框体代替小队框体"
UIConfigLocal.RaidframeScale = "缩放"
UIConfigLocal.RaidframeShowMouseoverHighlight = "鼠标滑过高亮"
UIConfigLocal.RaidframeShowNotHereTimer = "显示离开/离线时间"
UIConfigLocal.RaidframeShowResurrectText = "显示复活信息"
UIConfigLocal.RaidframeShowRolePrefix = "显示角色前缀"
UIConfigLocal.RaidframeShowThreatText = "显示威胁信息"
UIConfigLocal.RaidframeWidth = "团队框架宽度"

-- WorldMap
UIConfigLocal.WorldMap = "世界地图"
UIConfigLocal.WorldMapAlphaWhenMoving = "移动时地图透明."
UIConfigLocal.WorldMapCoordinates = "在地图上显示坐标"
UIConfigLocal.WorldMapFadeWhenMoving = "移动时隐藏地图"
UIConfigLocal.WorldMapFogOfWar = "移除世界地图战争迷雾"
UIConfigLocal.WorldMapSmallWorldMap = "地图变小"
