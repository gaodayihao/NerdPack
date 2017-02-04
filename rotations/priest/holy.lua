

local GUI = {
  --Dispel
  {type = 'header', text = 'Dispel All when toggled on', align = 'center'},
  {type = 'checkbox', text = 'Dispel All', key = 'Dispel', default = false},
  {type = 'ruler'},{type = 'spacer'},

  --Cooldowns
  {type = 'header', text = 'Cooldowns when toggled on', align = 'center'},
  {type = 'checkspin', text = 'Use Guardian Spirit', key = 'c_GS', default_check = false, default_spin = 20},
  {type = 'ruler'},{type = 'spacer'},

  --TRINKETS
  {type = 'header', text = 'Trinkets', align = 'center'},
  {type = 'checkbox', text = 'Use Trinkets', key = 'u_T', default = false},
  {type = 'text', text = 'Check to Enable Trinkets', align = 'center'},
  {type = 'checkbox', text = 'Top Trinket', key = 'trinket_1', default = false},
  {type = 'checkbox', text = 'Bottom Trinket', key = 'Trinket_2', default = false},
  {type = 'ruler'},{type = 'spacer'},

  --KEYBINDS
  {type = 'header', text = 'Keybinds', align = 'center'},
  {type = 'text', text = 'Left Shift: Holy Word: Sanctify | Left Ctrl: Mass Dispel	| Alt: Pause', align = 'center'},
  {type = 'checkbox', text = 'Holy Word: Sanctify', key = 'k_HWS', default = false},
  {type = 'checkbox', text = 'Mass Dispel', key = 'k_MD', default = false},
  {type = 'checkbox', text = 'Pause', key = 'k_P', default = false},
  {type = 'ruler'},{type = 'spacer'},

  --POTIONS
  {type = 'header', text = 'Potions', align = 'center'},
  {type = 'text', text = 'Check to enable Potions', align = 'center'},
  {type = 'checkspin', text = 'HealthStone', key = 'p_HS', default_check = false, default_spin = 20},
  {type = 'checkspin', text = 'Ancient Healing Potion', key = 'p_AHP', default_check = false, default_spin = 20},
  {type = 'checkspin', text = 'Ancient Mana Potion', key = 'p_AMP', default_check = false, default_spin = 10},
  {type = 'ruler'},{type = 'spacer'},

  --DPS
  {type = 'header', text = 'DPS mode', align = 'center'},
  {type = 'text', text = 'Check to enable extra DPS', align = 'center'},
  {type = 'checkbox', text = 'Holy Word: Chastise', key = 'd_HWC', default = false},
  {type = 'checkbox', text = 'Holy Fire', key = 'd_HF', default = false},
  {type = 'ruler'},{type = 'spacer'},

  --TANK
  {type = 'header', text = 'Tank', align = 'center'},
  {type = 'text', text = 'Tank health values', align = 'center'},
  {type = 'spinner', text = 'Holy Word: Serenity', key = 't_HWSE', default = 60},
  {type = 'spinner', text = 'Flash Heal', key = 't_FH', default = 70},
  {type = 'spinner', text = 'Prayer of Mending', key = 't_PoM', default = 100},
  {type = 'spinner', text = 'Renew', key = 't_Ren', default = 100},
  {type = 'ruler'},{type = 'spacer'},

  --PLAYER
  {type = 'header', text = 'Player', align = 'center'},
  {type = 'text', text = 'Player health values', align = 'center'},
  {type = 'spinner', text = 'Gift of the Naaru', key = 'p_Gift', default = 20},
  {type = 'spinner', text = 'Holy Word: Serenity', key = 'p_HWSE', default = 60},
  {type = 'spinner', text = 'Flash Heal', key = 'p_FH', default = 70},
  {type = 'spinner', text = 'Prayer of Mending', key = 'p_PoM', default = 100},
  {type = 'spinner', text = 'Renew', key = 'p_Ren', default = 100},
  {type = 'ruler'},{type = 'spacer'},

  --LOWEST
  {type = 'header', text = 'Lowest', align = 'center'},
  {type = 'text', text = 'Lowest health values', align = 'center'},
  {type = 'spinner', text = 'Holy Word: Serenity', key = 'l_HWSE', default = 60},
  {type = 'spinner', text = 'Flash Heal', key = 'l_FH', default = 70},
  {type = 'spinner', text = 'Prayer of Mending', key = 'l_PoM', default = 100},
  {type = 'spinner', text = 'Renew', key = 'l_Ren', default = 80},
  {type = 'spinner', text = 'Heal', key = 'l_H', default = 90},
  {type = 'ruler'},{type = 'spacer'},

  --MOVING
  {type = 'header', text = 'Moving', align = 'center'},
  {type = 'text', text = 'Movement speed', align = 'center'},
  {type = 'checkbox', text = 'Angelic Feather', key = 'm_AF', default = false},
  {type = 'checkbox', text = 'Body and Mind', key = 'm_Body', default = false},
  {type = 'text', text = 'Lowest health and moving values', align = 'center'},
  {type = 'spinner', text = 'Holy Word: Serenity', key = 'm_HWSE', default = 60},
  {type = 'spinner', text = 'Flash Heal Surge of Light', key = 'm_FH', default = 70},
  {type = 'spinner', text = 'Renew', key = 'm_Ren', default = 80},
}

local Cooldowns = {
  --Guardian Spirit if lowest health is below or if UI value and checked.
  {'!Guardian Spirit', 'UI(c_GS_check) & lowest.health <= UI(c_GS_spin)', 'lowest'}
}

local Trinkets = {
  --Top Trinket usage if UI enables it.
  {'#trinket1', 'UI(trinket_1)'},
  --Bottom Trinket usage if UI enables it.
  {'#trinket2', 'UI(trinket_2)'}
}

local Keybinds = {
  --Mass Dispel on Mouseover target Left Control when checked in UI.
  {'Mass Dispel', 'keybind(lcontrol) & UI(k_MD)', 'cursor.ground'},
  --Holy Word: Sanctify on Mouseover target left shift when checked in UI.
  {'Holy Word: Sanctify', 'keybind(lshift) & UI(k_HWS)', 'cursor.ground'},
  -- Pause on left alt when checked in UI.
  {'%pause', 'keybind(lalt)& UI(k_P)'}
}

local Potions = {
  --Health Stone below 20% health. Active when NOT channeling Divine Hymn.
  {'#Health Stone', 'UI(p_HS_check) & player.health <= UI(p_HS_spin) & !player.channeling(Divine Hymn)'},
  --Ancient Healing Potion below 20% health. Active when NOT channeling Divine Hymn.
  {'#Ancient Healing Potion', 'UI(p_AHP_check) & player.health <= UI(p_AHP_spin) & !player.channeling(Divine Hymn)'},
  --Ancient Mana Potion below 20% mana. Active when NOT channeling Divine Hymn.
  {'#Ancient Mana Potion', 'UI(p_AMP_check) & player.mana <= UI(p_AMP_spin) & !player.channeling(Divine Hymn)'}
}

local SpiritOfRedemption = {
  --Holy Word: Serenity when lowest health is below 50%.
  {'Holy Word: Serenity', 'lowest.health < 50', 'lowest'},
  --Flash Heal when lowest health is below 100%.
  {'Flash Heal', 'lowest.health < 100' , 'lowest'}
}

local DPS = {
  --Holy Word: Chastise on cooldown if not healing when checked in UI.
  {'Holy Word: Chastise', 'UI(d_HWC)' , 'target'},
  --Holy Fire on cooldown if not healing when checked in UI.
  {'Holy Fire', 'UI(d_HF)' , 'target'},
  --Smite on cooldown if not healing.
  {'Smite', nil, 'target'}
}

local Tank = {
  --Holy Word: Serenity if tank health is below or if UI value.
  {'Holy Word: Serenity', 'tank.health <= UI(t_HWSE)', 'tank'},
  --Flash heal if tank health is below or if UI value.
  {'Flash Heal', 'tank.health <= UI(t_FH)', 'tank'},
  --Prayer of Mending if tank missing Prayer of Mending and when tank health is below or if UI value.
  {'Prayer of Mending', '!tank.buff(Prayer of Mending) & tank.health <= UI(t_PoM)', 'tank'},
  --Renew if tank missing Renew and when tank health is below or if UI value.
  {'Renew', '!tank.buff(Renew) & tank.health <= UI(t_Ren)', 'tank'}

}

local Player = {
  --Gift of the Naaru if player health is below or if UI value.
  {'Gift of the Naaru', 'player.health <= UI(p_Gift)', 'player'},
  --Holy Word: Serenity if player health is below or if UI value.
  {'Holy Word: Serenity', 'player.health <= UI(p_HWSE)', 'player'},
  --Flash Heal if player health is below or if UI value.
  {'Flash Heal', 'player.health <= UI(p_FH)', 'player'},
  --Prayer of Mending if player missing Prayer of Mending and player health is below or if UI value.
  {'Prayer of Mending', '!player.buff(Prayer of Mending) & player.health <= UI(p_PoM)', 'player'},
  --Renew if player missing Renew and player health is below or if UI value.
  {'Renew', '!player.buff(Renew) & player.health <= UI(p_Ren)', 'player'},
  --Prayer of Healing if player and 4 or more others at 20yds are below or if 65% health
  {'Prayer of Healing', 'player.area(20, 65).heal >= 4 ', 'lowest'},
  --Holy Nova if player and 4 or more others at 10yds are below or if 90% health.
  {'Holy Nova', 'player.area(10, 90).heal >= 4', 'player'},

}

local Lowest = {
  --Flash Heal charge Dump if Surge of Light duration is less or equal to 3 seconds.
  {'Flash Heal', 'player.buff(Surge of Light) & player.buff(Surge of Light).duration <= 3 & lowest.health < 100', 'lowest'},
  --Gift of the Naaru if lowest health is below or if 20% and has Guardian Spirit.
  {'Gift of the Naaru', 'lowest.health <= 20 & lowest.buff(Guardian Spirit)', 'lowest'},
  --Holy Word: Serenity if lowest health is below or if UI value.
  {'Holy Word: Serenity', 'lowest.health <= UI(l_HWSE)', 'lowest'},
  --Flash Heal if lowest health is below or if UI value.
  {'Flash Heal', 'lowest.health <= UI(l_FH)', 'lowest'},
  --Prayer of Healing if lowest and 4 or more others are below or if 65% health
  {'Prayer of Healing', 'lowest.area(20, 65).heal >= 4' , 'lowest'},
  --Prayer of Mending if lowest health missing Prayer of Mending and is below or if UI value.
  {'Prayer of Mending', '!lowest.buff(Prayer of Mending) & lowest.health <= UI(l_PoM)', 'lowest'},
  --Renew if lowest health is missing Renew and is below or if UI value.
  {'Renew', '!lowest.buff(Renew) & lowest.health <= UI(l_Ren)', 'lowest'},
  --Heal if Lowest Healt is below or if UI value.
  {'Heal', 'lowest.health <= UI(l_H)', 'lowest'}
}

local Moving = {
  --Gift of the Naaru if lowest health is below or if 20% and has Guardian Spirit.
  {'Gift of the Naaru', 'lowest.health <= 20 & lowest.buff(Guardian Spirit)', 'lowest'},
  --Holy Word: Serenity if lowest health  is below or if UI value.
  {'Holy Word: Serenity', 'lowest.health <= UI(m_HWSE)', 'lowest'},
  --Renew if lowest health is missing Renew and Lowest health is below or if UI value.
  {'Renew', '!lowest.buff(Renew) & lowest.health <= UI(m_Ren)', 'lowest'},
  --Flash Heal charge Dump if Surge of Light duration is less or equal to 3 seconds and moving
  {'Flash Heal', 'player.buff(Surge of Light) & player.buff(Surge of Light).duration <= 3 & lowest.health < 100', 'lowest'},
  --Flash Heal when Surge of Light is active, Lowest Health  is below or if UI value.
  {'Flash Heal', 'player.buff(Surge of Light) & lowest.health <= UI(m_FH)', 'lowest'},
  --Angelic Feather if player is moving for 2 seconds or longer and Missing Angelic Feather and if UI enables it.
  {'Angelic Feather', 'player.movingfor >= 2 & !player.buff(Angelic Feather) & spell(Angelic Feather).charges >= 1 & UI(m_AF)', 'player.ground'},
  --Angelic Feather if player is moving for 2 seconds or longer and Missing Angelic Feather and if UI enables it.
  {'Body and Mind', 'player.movingfor >= 2 & !player.buff(Body And Mind) & UI(m_Body)', 'player'},

}

local inCombat = {
  --Fade when you get aggro.
  {'fade', 'aggro'},
  {Cooldowns, 'toggle(cooldowns)'},
  {Trinkets, 'UI(u_T)'},
  {Keybinds},
  {Potions},
  {SpiritOfRedemption, 'player.buff(Spirit of Redemption)'},
  {'%DispelAll', 'UI(Dispel)'},
  {{
    {Tank, 'tank.health < 100'},
    {Player, 'health < 100'},
    {Lowest, 'lowest.health < 100'},
    {DPS, 'lowest.health > 90'},
  }, '!moving & !player.channeling(Divine Hymn)'},
  {Moving, 'moving'},

}

local outCombat = {
  {Keybinds},
  {Moving, 'moving'},
  {"%ressdead(Resurrection)"},
}

NeP.CR:Add(257, '[NeP] Priest - Holy', inCombat, outCombat, nil, GUI)
