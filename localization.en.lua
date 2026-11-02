--------------------------------------------------
-- localization.en.lua English
-- $LastChangedBy: karlkfi $
-- $Date: 2008-02-03 04:10:29 -0600 (Sun, 03 Feb 2008) $

-- General --
DamageMeters_PRINTCOLOR = "|cFF8F8FFF"

-- Bindings --
BINDING_HEADER_DAMAGEMETERSHEADER       = "DamageMeters";
BINDING_NAME_DAMAGEMETERS_TOGGLESHOW    = "Toggle Visible";
BINDING_NAME_DAMAGEMETERS_CYCLEQUANT    = "Cycle Visible Quantity";
BINDING_NAME_DAMAGEMETERS_CYCLEQUANTBACK= "Cycle Visible Quantity Backwards";
BINDING_NAME_DAMAGEMETERS_CLEAR         = "Clear Data";
BINDING_NAME_DAMAGEMETERS_TOGGLEPAUSED  = "Toggle Paused";
BINDING_NAME_DAMAGEMETERS_SHOWREPORTFRAME = "Show Report Frame";
BINDING_NAME_DAMAGEMETERS_SWAPMEMORY    = "Swap Memory";
BINDING_NAME_DAMAGEMETERS_TOGGLESHOWMAX = "Toggle Show Max Bars";
BINDING_NAME_DAMAGEMETERS_SYNCREADY     = "Send Sync Ready";
BINDING_NAME_DAMAGEMETERS_TOGGLESHOWFIGHTASPS = "Toggle Show Fight Data As Per/Second";
BINDING_NAME_DAMAGEMETERS_TOGGLENORMALANDFIGHT = "Toggle Between Normal and Fight Quantities";
BINDING_NAME_DAMAGEMETERS_TOGGLEMINIMODE = "Toggle Mini Mode";
BINDING_NAME_DAMAGEMETERS_SYNCPAUSE = "Sync Pause";
BINDING_NAME_DAMAGEMETERS_SYNCUNPAUSE = "Sync Unpause";
BINDING_NAME_DAMAGEMETERS_SYNCCLEAR = "Sync Clear";

BINDING_NAME_DAMAGEMETERS_RESETPOS = "Reset Position";

-- Chat Sub-Commands --
-- <localized subcommand> = "function name";
-- indents are shortcuts for the previous command
DamageMeters_ChatCommands = {

    ["help"] =      "DamageMeters_Help";
    ["cmd"] =       "DamageMeters_ListCommands";
    ["show"] =      "DamageMeters_ToggleShow";
    ["hide"] =      "DamageMeters_Hide";
    ["clear"] =     "DamageMeters_Clear";
    ["report"] =    "DamageMeters_Report";
    ["sort"] =      "DamageMeters_SetSort";
    ["count"] =     "DamageMeters_SetCount";
    ["save"] =      "DamageMeters_Save";
    ["restore"] =   "DamageMeters_Restore";
    ["merge"] =     "DamageMeters_Merge";
    ["swap"] =      "DamageMeters_Swap";
    ["memclear"] =  "DamageMeters_MemClear";
    ["resetpos"] =  "DamageMeters_ResetPos";
    ["text"] =      "DamageMeters_SetTextOptions";
    ["color"] =     "DamageMeters_SetColorScheme";
    ["quant"] =     "DamageMeters_SetQuantity";
    ["visinparty"] =    "DamageMeters_SetVisibleInParty";
    ["autocount"] =     "DamageMeters_SetAutoCount";
    ["listbanned"] =    "DamageMeters_ListBanned";
    ["clearbanned"] =   "DamageMeters_ClearBanned";
    ["setrange"] =  "DamageMeters_SetCombatLogRange";
    ["version"] =   "DamageMeters_ShowVersion";
        ["ver"] =   "DamageMeters_ShowVersion";

    ["sync"] =          "DamageMeters_Sync";
    ["syncsend"] =      "DamageMeters_SyncReport";
    ["syncrequest"] =   "DamageMeters_SyncRequestSessionID";
    ["syncclear"] =     "DamageMeters_SyncClear";
    ["syncmsg"] =       "DamageMeters_SendSyncMsg";
        ["m"] =         "DamageMeters_SendSyncMsg";
    ["syncping"] =      "DamageMeters_SyncPingRequest";
    ["syncpause"] =     "DamageMeters_SyncPause";
    ["syncunpause"] =   "DamageMeters_SyncUnpause";
    ["syncready"] =     "DamageMeters_SyncReady";
    ["synclabel"] =     "DamageMeters_SyncLabel";
    ["syncstart"] =     "DamageMeters_SyncStart";
    ["synchalt"] =      "DamageMeters_SyncHalt";
    --["syncbossstart"] = "DamageMeters_SyncBossStart";
    --["syncbossend"] = "DamageMeters_SyncBossEnd";

    -- Undocumented atm.
    ["me"] =        "DamageMeters_SyncEmote";
    ["mrps"] =      "DamageMeters_RPSChallenge";
    ["rpsr"] =      "DamageMeters_RPSResponse";

    ["pop"] =       "DamageMeters_Populate";
    ["lock"] =      "DamageMeters_ToggleLock";
    ["pause"] =     "DamageMeters_TogglePause";
    ["ready"] =     "DamageMeters_SetReady";
    ["lockpos"] =   "DamageMeters_ToggleLockPos";
    ["grouponly"] =         "DamageMeters_ToggleGroupMembersOnly";
    ["addpettoplayer"] =    "DamageMeters_ToggleAddPetToPlayer";
    ["resetoncombat"] =     "DamageMeters_ToggleResetWhenCombatStarts";
    ["total"] =     "DamageMeters_ToggleTotal";
    ["showmax"] =   "DamageMeters_ToggleMaxBars";

    -- Commands for testing/debug.
    -- "/dm reset - (For Testing) Forces a re-layout of the visual elements.",
    ["reset"] =     "DamageMeters_Reset";
    -- "/dm test [#] - (For Testing) Adds # test entries to the list.  If no number specified, adds one entry for each visible bar.",
    ["test"] =      "DamageMeters_Test";
    -- "/dm add name - (For Testing) Simulates player 'name' doing 1 damage.",
    ["add"] =       "DamageMeters_Add";
    -- "/dm dumptable - (For Testing) Dumps the entire internal data table."
    ["dumptable"] = "DamageMeters_DumpTable";
    ["debug"] =     "DM_ToggleDMPrintD";
    ["dumpmsg"] =   "DM_DumpMsg";
    ["p"] =         "DM_ConsolePrint";
    ["pt"] =        "DM_ConsolePrintTable";

};

-- Help --
DamageMeters_helpTable = {
        "The following commands can be entered into the console:",
        "/dm help - Gives help on using DamageMeters.",
        "/dm cmd - Lists available /dm (DamageMeters) commands.",
        "/dm show - Toggles whether or not the meters are visible.  Note that data collection continues when meters are not visible.",
        "/dm hide - Hides the meters.",
        "/dm clear [#] - Removes entries from the bottom of the list, leaving #.  If # not specified, entire list is cleared.",
        "/dm report [help] [total] [c/s/p/r/w/h/g/f[#]] [whispertarget/channelNAME] - Prints a report of the current data: use '/dm report help' for details.",
        "/dm sort [#] - Sets sorting style.  Specify no number for a list of available styles.",
        "/dm count [#] - Sets number of bars visible at once.  If # not given shows the maximum possible.",
        "/dm save - Saves the current table internally.",
        "/dm restore - Restores a previously saved table, overwriting any new data.",
        --"/dm merge - Merges a previously saved table with any existing data.",
        "/dm swap - Swaps the previously saved table with the current one.",
        "/dm memclear - Clears the saved table.",
        "/dm resetpos - Resets the position of the window (helpful incase you lose it)%.",
        "/dm text 0/<[r][n][p][l][v]> - Sets what text should be shown on the bars. r - Rank. n - Player name. p - Percentage of total. l - Percentage of leader. v - Value.",
        "/dm color # - Sets the color scheme for the bars.  Specify no # for a list of options.",
        "/dm quant # - Sets the quantity the bars should use.  Specify no # for a list of options.",
        "/dm visinparty [y/n] - Sets whether or not the window should only be visible while you are in a party/raid.  Specify no argument to toggle.",
        "/dm autocount # - If # is greater than zero, then the window will show as many bars as it has information for up to #.  If # is zero, it turns off the auto-count function.",
        "/dm listbanned - Lists all banned entities.",
        "/dm clearbanned - Clears list of all banned entities.",
        "/dm setrange [#]- Sets the range in yards that you recieve combat messages, default is 50.",
        "/dm version - Prints your DM version number. Can also use /dm ver.",

        "/dm sync [d#] [e] - Causes you to synchronize your data with other users using the same sync channel.  (Calls dmsyncsend and dmsyncrequest.)  If d specified, the sync will be delayed that many seconds.  If e specified, event data will be sent/requested.",
        --"/dm syncchan - Sets the name of the channel to use for synchronizing.",
        --"/dm syncleave - Leaves the current sync chan.",
        "/dm syncsend - Sends sync information on the sync channel.",
        "/dm syncrequest - 'Pings' for the most popular (most users) session id, then assumes that id and calls a sync.",
        "/dm syncclear - Sends request for everyone to clear their data.",
        "/dm syncmsg [msg] - Sends a message to other people in the same syncchan.  Can also use /dmm.",
        --"/dm syncbroadcastchan - Broadcasts the current sync channel to your party or raid.  Can also use /dm syncb.",
        "/dm syncping - 'Pings' the other people in the sync chan, causing them to respond with their current version of DM and session id.",
        "/dm syncpause - Makes other DMs on your syncchan pause.",
        "/dm syncunpause - Makes other DMs on your syncchan unpause.",
        "/dm syncready - Transmits a command to make everyone in the sync chan go into the ready state.",
        --"/dm synckick player - Kickes player out of the sync channel.",
        "/dm synclabel label - Labels the current session. (Index defaults to 1).",
        "/dm syncstart label - Convenience function which does synclabel, syncready, and syncclear automatically.",
        "/dm synchalt - Aborts any syncing in progress (clears incoming and outgoing message queues).",

        "/dm pop - Populates it with your current party/raid members (though will not remove any existing entries)%.",
        "/dm lock - Toggles whether or not the list is locked. New people cannot be added to a locked list, but people already in can are updated.",
        "/dm pause - Toggles whether or not the parsing of data is to occur.",
        "/dm lockpos - Toggles whether or not the position of the window is locked.",
        "/dm grouponly - Toggles whether or not to reject anyone who is not in your raid/party.  (Your pet will be monitored regardless of this setting.)",
        "/dm addpettoplayer - Toggles whether or not to consider pet's data as coming directly from the player.",
        "/dm resetoncombat = Toggles whether or not to reset data when combat starts.",
        "/dm version - Shows version information.",
        "/dm total - Toggles display of the total display.",
        "/dm showmax - Toggles whether or not to show the max number of bars.",
};

-- Filters --
DamageMeters_Filter_STRING1 = "party members";
DamageMeters_Filter_STRING2 = "all friendly characters";

-- Relationships --
DamageMeters_Relation_STRING = {
        "Self",
        "Your Pet",
        "Party",
        "Friendly"};

-- Color Schemes --
DamageMeters_colorScheme_STRING = {
        "Relationship",
        "Class Colors"};

-- Quantities --
DM_QUANTSTRING_DAMAGEDONE = "Damage Done";
DM_QUANTSTRING_HEALINGDONE = "Healing Done";
DM_QUANTSTRING_DAMAGETAKEN = "Damage Taken";
DM_QUANTSTRING_HEALINGTAKEN = "Healing Taken";
DM_QUANTSTRING_DAMAGEDONE_FIGHT = "Fight Damage Done";
DM_QUANTSTRING_HEALINGDONE_FIGHT = "Fight Healing Done";
DM_QUANTSTRING_DAMAGETAKEN_FIGHT = "Fight Damage Taken";
DM_QUANTSTRING_HEALINGTAKEN_FIGHT = "Fight Healing Taken";
DM_QUANTSTRING_DAMAGEDONE_PS = "DPS";
DM_QUANTSTRING_HEALINGDONE_PS = "HPS";
DM_QUANTSTRING_DAMAGETAKEN_PS = "DTPS";
DM_QUANTSTRING_HEALINGTAKEN_PS = "HTPS";
DM_QUANTSTRING_IDLETIME = "Idle Time";
DM_QUANTSTRING_NETDAMAGE = "Net Damage";
DM_QUANTSTRING_NETHEALING = "Net Healing";
DM_QUANTSTRING_DAMAGEPLUSHEALING = "Damage+Healing";
DM_QUANTSTRING_CURING = "Curing Done";
DM_QUANTSTRING_CURING_FIGHT = "Fight Curing Done";
DM_QUANTSTRING_CURING_PS = "Cures PS";
DM_QUANTSTRING_OVERHEAL = "Overhealing";
DM_QUANTSTRING_OVERHEAL_FIGHT = "Fight Overhealing";
DM_QUANTSTRING_OVERHEAL_PS = "OHPS";
DM_QUANTSTRING_HEALTH = "Health";
DM_QUANTSTRING_OVERHEAL_PERCENTAGE = "Overheal %";
DM_QUANTSTRING_ABSHEAL = "Raw Heal Done";
DM_QUANTSTRING_ABSHEAL_FIGHT = "Fight Raw Heal Done";
DM_QUANTSTRING_ABSHEAL_PS = "Raw. HPS";

DMI_NAMES = {
    DM_QUANTSTRING_DAMAGEDONE,
    DM_QUANTSTRING_HEALINGDONE,
    DM_QUANTSTRING_DAMAGETAKEN,
    DM_QUANTSTRING_HEALINGTAKEN,
    DM_QUANTSTRING_CURING,
    DM_QUANTSTRING_OVERHEAL,
    DM_QUANTSTRING_ABSHEAL,
};

DM_QUANTABBREV_DAMAGEDONE = "D";
DM_QUANTABBREV_HEALINGDONE = "H";
DM_QUANTABBREV_DAMAGETAKEN = "DT";
DM_QUANTABBREV_HEALINGTAKEN = "HT";
DM_QUANTABBREV_CURING = "Cu";
DM_QUANTABBREV_OVERHEAL = "Oh";
DM_QUANTABBREV_ABSHEAL = "RawHD";

DM_QUANTABBREV_DAMAGEDONE_PS = "DPS";
DM_QUANTABBREV_HEALINGDONE_PS = "HPS";
DM_QUANTABBREV_DAMAGETAKEN_PS = "DTPS";
DM_QUANTABBREV_HEALINGTAKEN_PS = "HTPS";
DM_QUANTABBREV_CURING_PS = "CuPS";
DM_QUANTABBREV_OVERHEAL_PS = "OHPS";
DM_QUANTABBREV_ABSHEAL_PS = "RawHDPS";

DM_QUANTABBREV_IDLETIME = "IT";
DM_QUANTABBREV_NETDAMAGE = "NetD";
DM_QUANTABBREV_NETHEALING = "NetH";
DM_QUANTABBREV_DAMAGEPLUSHEALING = "D+H";
DM_QUANTABBREV_HEALTH = "HP";
DM_QUANTABBREV_OVERHEAL_PERCENTAGE = "Oh%";


-- Sort --
DamageMeters_Sort_STRING = {
    "Decreasing",
    "Increasing",
    "Alphabetical"};

-- Class Names
function DamageMeters_GetClassColor(className)
    return RAID_CLASS_COLORS[string.upper(className)];
end

-- This associates the string names of damage types (schools) with the DM_DMGTYPE constants.
DM_DMGNAMETOID = {
    Arcane = DM_DMGTYPE_ARCANE,
    Fire = DM_DMGTYPE_FIRE,
    Nature = DM_DMGTYPE_NATURE,
    Frost = DM_DMGTYPE_FROST,
    Shadow = DM_DMGTYPE_SHADOW,
    Holy = DM_DMGTYPE_HOLY,
    Physical = DM_DMGTYPE_PHYSICAL,
};

DM_DMGTYPENAMES = {
    "Arcane",
    "Fire",
    "Nature",
    "Frost",
    "Shadow",
    "Holy",
    "Physical",
    "Default",
};

-- Errors --
DM_ERROR_INVALIDARG = "DamageMeters: Invalid argument(s).";
DM_ERROR_MISSINGARG = "DamageMeters: Argument(s) missing.";
DM_ERROR_NOSAVEDTABLE = "DamageMeters: No saved table.";
DM_ERROR_BADREPORTTARGET = "DamageMeters: Invalid report target = ";
DM_ERROR_MISSINGWHISPERTARGET = "DamageMeters: Whisper specified but no player given.";
DM_ERROR_MISSINGCHANNEL = "DamageMeters: Channel specified but no number given.";
DM_ERROR_NOSYNCCHANNEL = "DamageMeters: Sync channel must be specified with dmsyncchan before calling sync functions.";
DM_ERROR_JOINSYNCCHANNEL = "DamageMeters: You must join sync channel ('%s') before you can call sync functions.";
DM_ERROR_SYNCTOOSOON = "DamageMeters: Sync request too soon after last one; ignoring.";
DM_ERROR_POPNOPARTY = "DamageMeters: Cannot populate table; you are not in a party or raid.";
DM_ERROR_NOROOMFORPLAYER = "DamageMeters: Cannot merge pet data with players because cannot add player to list (list full?).";
DM_ERROR_BROADCASTNOGROUP = "DamageMeters: Must be in a party or raid to broadcast the sync channel.";
DM_ERROR_NOPARTY = "DamageMeters: You are not in a party.";
DM_ERROR_NORAID = "DamageMeters: You are not in a raid.";

-- Messages --
DM_MSG_SETQUANT = "DamageMeters: Setting visible quantity to ";
DM_MSG_CURRENTQUANT = "DamageMeters: Current quantity = ";
DM_MSG_CURRENTSORT = "DamageMeters: Current sort = ";
DM_MSG_SORT = "DamageMeters: Setting sort to ";
DM_MSG_CLEAR = "DamageMeters: Removing entries %d to %d.";
--DM_MSG_REMAINING = "DamageMeters: %d items remaining.";
DM_MSG_REPORTHEADER = "DamageMeters: <%s> report on %d/%d sources:";
DM_MSG_PLAYERREPORTHEADER = "DamageMeters: Player report on %s:";
DM_MSG_SETCOUNTTOMAX = "DamageMeters: No count argument specified, setting to max.";
DM_MSG_SETCOUNT = "DamageMeters: New bar count = ";
DM_MSG_RESETFRAMEPOS = "DamageMeters: Resetting frame position.";
DM_MSG_SAVE = "DamageMeters: Saving table.";
DM_MSG_RESTORE = "DamageMeters: Restoring saved table.";
DM_MSG_MERGE = "DamageMeters: Merging saved table with current.";
DM_MSG_SWAP = "DamageMeters: Swapping normal (%d) and saved (%d) table.";
DM_MSG_SETCOLORSCHEME = "DamageMeters: Setting color scheme to ";
DM_MSG_TRUE = "true";
DM_MSG_FALSE = "false";
DM_MSG_SETVISINPARTY = "DamageMeters: Visible-only-in-party is set to ";
DM_MSG_SETAUTOCOUNT = "DamageMeters: Setting new autocount limit to ";
DM_MSG_LISTBANNED = "DamageMeters: Listing banned entities:";
DM_MSG_CLEARBANNED = "DamageMeters: Clearing all banned entities.";
DM_MSG_HOWTOSHOW = "DamageMeters: Hiding window.  Use /dm show to make it visible again.";
DM_MSG_SYNCCHAN = "DamageMeters: Synchronization channel name set to ";
DM_MSG_SYNCREQUESTACK = "DamageMeters: Sync requested from player ";
DM_MSG_SYNCREQUESTACKEVENTS = "DamageMeters: Sync (with events) requested from player ";
DM_MSG_SYNC = "DamageMeters: Sending sync data.";
DM_MSG_SYNCEVENTS = "DamageMeters: Sending sync data (with events).";
DM_MSG_LOCKED = "DamageMeters: List now locked.";
DM_MSG_NOTLOCKED = "DamageMeters: List unlocked.";
DM_MSG_PAUSED = "DamageMeters: Parsing paused.";
DM_MSG_UNPAUSED = "DamageMeters: Parsing resumed.";
DM_MSG_POSLOCKED = "DamageMeters: Position locked.";
DM_MSG_POSNOTLOCKED = "DamageMeters: Position unlocked.";
DM_MSG_CLEARRECEIVED = "DamageMeters: Clear request received from player ";
DM_MSG_ADDINGPETTOPLAYER = "DamageMeters: Now treating pet data as though it was yours.";
DM_MSG_NOTADDINGPETTOPLAYER = "DamageMeters: Pet data now treated separately from yours.";
DM_MSG_PETMERGE = "DamageMeters: Merging pet's (%s) information into your's.";
DM_MSG_RESETWHENCOMBATSTARTSCHANGE = "DamageMeters: Reset when combat starts = ";
DM_MSG_SHOWFIGHTASPS = "DamageMeters: Showing fight data as per/second = ";
DM_MSG_COMBATDURATION = "Combat duration = %.2f seconds.";
DM_MSG_RECEIVEDSYNCDATA = "DamageMeters: Receiving Sync data from %s.";
DM_MSG_TOTAL = "TOTAL";
DM_MSG_VERSION = "DamageMeters Version %s Active.";
DM_MSG_REPORTHELP = "The /dm report command consists of three parts:\n\n1) The destination character.  This can be one of the following letters:\n  c - Console (only you can see it)%.\n  s - Say\n  p - Party chat\n  r - Raid chat\n  g - Guild chat\n  o - Guild Officer chat\n  h - Chat cHannel. /dm report h mychannel\n  w - Whisper to player.  /dm report w dandelion\n  f - Frame: Shows the report in this window.\n\nIf the letter is lower case the report will be in reverse order (lowest to highest)%.\n\n2) Optionally, the number of people to limit it to.  This number goes right after the destination character.\nExample: /dm report p5.\n\n3) By default, reports are on the currently visible quantity only.  If the word 'total' is specified before the destination character, though, the report will be on the totals for every quantity. 'Total' reports are formatted so that they look good when cut-and-paste into a text file, and so work best with the Frame destination.\nExample: /dm report total f\n\nExample: Whisper to player 'dandelion' the top three people in the list:\n/dm report w3 dandelion";
DM_MSG_COLLECTORS = "Data collectors: (%s)";
DM_MSG_ACCUMULATING = "DamageMeters: Accumulating data in memory register.";
DM_MSG_REPORTTOTALDPS = "Total = %.1f (%.1f visible)";
DM_MSG_REPORTTOTAL = "Total = %d (%d visible)";
DM_MSG_SYNCMSG = "[DMM] |Hplayer:%s|h[%s]|h: %s";
DM_MSG_MEMCLEAR = "DamageMeters: Saved table cleared.";
DM_MSG_MAXBARS = "DamageMeters: Setting show-max-bars to %s.";
DM_MSG_MINBARS = "DamageMeters: Setting minimized to %s.";
DM_MSG_LEADERREPORTHEADER = "DamageMeters: Leaders Report on %d/%d Sources:\n #";
-- This causes disconnects.. maybe its too long?  ..maybe WoW doesn't like the \n character?
--DM_MSG_FULLREPORTHEADER = "DamageMeters: Full Report on %d/%d Sources:\nPlayer        Damage     Healing     Damaged      Healed        Hits   Crits\n_______________________________________________________________________________";
DM_MSG_FULLREPORTHEADER1 = "DamageMeters: Full Report on %d/%d Sources:";
DM_MSG_FULLREPORTHEADER2 = "Player        Damage     Healing     Damaged      Healed        Hits   Crits";
DM_MSG_FULLREPORTHEADER3 = "_______________________________________________________________________________";
DM_MSG_CLEARACKNOWLEDGED = "DamageMeters: Clear acknowledged from player %s.";
DM_MSG_EVENTREPORTHEADER = "DamageMeters: Event report on %d/%d sources:\n";
DM_MSG_PLAYERONLYEVENTDATAOFF = "DamageMeters: Recording all player's event data.";
DM_MSG_PLAYERONLYEVENTDATAON = "DamageMeters: Now recording only your own event data.";
--DM_MSG_SYNCCHANBROADCAST = "<DamageMeters>: Setting this group's sync channel to: ";
DM_MSG_INCLOGRANGEON = "DamageMeters: Combat Log range has been increased to 200 yards.";
DM_MSG_INCLOGRANGEOFF = "DamageMeters: Combat Log range has been reset to the default 50 yards.";
--DM_MSG_AUTOSYNCJOINON = "DamageMeters: You will automatically join broadcasted sync channels.";
--DM_MSG_AUTOSYNCJOINOFF = "DamageMeters: You will no longer automatically join broadcasted sync channels.";
DM_MSG_SYNCHELP = "DamageMeters Sync'ing (short for synchronization) is a process whereby multiple DM users can transmit their data to each other.  Its primary use is for instances where the players are often far from each other and thus miss some of each other's combat messages.\n\nSync Quick-Start Guide:\n\n1) Someone in the raid chooses a session name (for example, \"Onyxia\") then call syncstart with that name. \"/dm syncstart Onyxia\".  This will clear everyone's data and ready them, as well as mark them with this label.\n2) Play!  Collect data!\n3) Call \"/dm sync\" whenever you wants the raid to share data.  Since it can cause a little slowdown it is best to do this between fights (though not necessarily between every fight).  If event data is desired, call \"/dm sync e\", though it takes a lot longer to sync.\n\nNote: It doesn't matter who starts the session as long as everyone has the same session id, this will auto-clear any previous data.\n\nLate-joiners: If you've joined a group late and don't have the current session id then you can request the popular session id by using \"/dm syncrequest\". This will 'ping' for the most popular (most users) session id, and then assume that id and call a sync, thus updating you with the raid's previous data. You can also manually \"/dm syncping\" to get an idea of if there's a current session or not. \n\nIMPORTANT: Calling \"/dm sync\" when you don't have the current session id will force others to use your session id and your data.";
DM_MSG_PINGING = "DamageMeters: Pinging other players..";
DM_MSG_SYNCONLYPLAYEREVENTSON = "DamageMeters: Only your event information will be transmitted.";
DM_MSG_SYNCONLYPLAYEREVENTSOFF = "DamageMeters: All player's event information will be transmitted.";
DM_MSG_SYNCPAUSE = "DamageMeters: Pause command recieved from %s.";
DM_MSG_SYNCUNPAUSE = "DamageMeters: Unpause command recieved from %s.";
DM_MSG_SYNCREADY = "DamageMeters: Ready command recieved from %s.";
DM_MSG_SYNCPAUSEREQ = "DamageMeters: Transmitting pause command..";
DM_MSG_SYNCUNPAUSEREQ = "DamageMeters: Transmitting unpause command..";
DM_MSG_SYNCREADYREQ = "DamageMeters: Transmitting ready command..";
--DM_MSG_PRESSCONTROLEVENT = "Press Control To See Event Data";
--DM_MSG_PRESSCONTROLQUANTITY = "Press Control To See Quantity Data";
--DM_MSG_PRESSALTSINGLEQUANTITY = "Press Alt To See Only Current Quantity";
DM_MSG_PRESS_FOR_SUMMARY = "Press %s To See A Summary Of Event Data";
DM_MSG_PRESS_FOR_CURRENT = "Press %s To See The Current Event Data";
DM_MSG_PRESS_FOR_ALL = "Press %s To See All Event Data";
DM_MSG_ALT = "<Alt>";
DM_MSG_CTRL = "<Control>";
DM_MSG_PAUSEDTITLE = "Paused";
DM_MSG_READYTITLE = "Ready";
DM_MSG_EVENTDATALEVEL = {
    "DamageMeters: Parsing no event data.",
    "DamageMeters: Parsing player's event data only.",
    "DamageMeters: Parsing all players' event data."
};
DM_MSG_SYNCEVENTDATALEVEL = {
    "DamageMeters: Transmitting no event data.",
    "DamageMeters: Transmitting player's event data only.",
    "DamageMeters: Transmitting all players' event data."
};
DM_MSG_TOOLTIPDATALEVEL = {
    "DamageMeters: Tooltip set to display summary of events by default.",
    "DamageMeters: Tooltip set to display current events by default.",
    "DamageMeters: Tooltip set to display all events by default."
};
DM_MSG_HELP = "- Enter /dm cmd for a list of commands.\n- If you cannot see the DM window, try /dm resetpos.";
--DM_MSG_LEAVECHAN = "DamageMeters: Leaving sync channel '%s'.";
DM_MSG_READYUNPAUSING = "DamageMeters: Damage event received, transmitting sync unpause command..";
--DM_MSG_KICKED = "DamageMeters: You have been removed from the sync channel by %s.";
DM_MSG_SETLABEL = "DamageMeters: Session label set to <%s>. (Index = %d)";
DM_MSG_SESSIONMISMATCH = "DamageMeters: Sync received with different session information.  Auto-clearing.";
DM_MSG_SHOWINGFIGHTEVENTSONLY = "Showing events for current fight only.";
DM_MSG_SYNCCLEARREQ = "DamageMeters: Transmitting clear request..";
DM_MSG_CURRENTBARWIDTH = "DamageMeters: Current bar width = %d.\nCall (/dm setbarwidth default) to reset.";
DM_MSG_NEWBARWIDTH = "DamageMeters: New bar width = %d.";
--DM_MSG_PLAYERJOINEDSYNCCHAN = "DamageMeters: Player %s joined sync channel. [Version %s]";
DM_MSG_SYNCSESSIONMISMATCH = "Player %s's session (%s:%d) mismatched: Player's data cleared.";
DM_MSG_SYNCHALTRECEIVED = "DamageMeters: Sync Halt command received from %s.";
DM_MSG_SYNCHALTSENT = "DamageMeters: Transmitting halt command..";
DM_MSG_SYNCSESSIONCURRENT = "DamageMeters: You already have the current majority session.";
DM_MSG_SYNCNOSESSIONS = "DamageMeters: No current sessions found.";
DM_MSG_RANGESET = "DamageMeters: Combat log message range set to %d.";
DM_MSG_NOTARGETINCOMBAT = "DamageMeters: You cannot target from dynamic unit lists while in combat, due to Blizzard restrictions.";
-- RPS
DM_MSG_RPS_CHALLENGE = "You challenge %s to Rock-Paper Scissors!  You play %s.";
DM_MSG_RPS_CHALLENGED = "%s has challenged you to Rock-Paper-Scissors!  Use /dm rpsr [player] [r/p/s] to respond.";
DM_MSG_RPS_MISSING_PLAYER = "ERROR: Missing Arg.  Player argument can be omitted if and only if there is only one player currently challenging you.";
DM_MSG_RPS_NOTCHALLENGED = "Error: You were not challenged by %s.";
DM_MSG_RPS_YOUPLAY = "You play %s.";
DM_MSG_RPS_PLAYS = "%s plays %s.";
DM_MSG_RPS_DEFEATED = "%s has defeated you.";
DM_MSG_RPS_VICTORIOUS = "You have defeated %s!"
DM_MSG_RPS_TIE = "You have tied with %s.";

--[[ Note: This is only to help construct the DM_MSG_REPORTHELP string.
The /dm report command consists of three parts:

1) The destination character.  This can be one of the following letters:
  c - Console (only you can see it)%.
  s - Say
  p - Party chat
  r - Raid chat
  g - Guild chat
  h - Chat cHannel. /dm report h mychannel
  w - Whisper to player.  /dm report w dandelion
  f - Frame: Shows the report in this window.

If the letter is lower case the report will be in reverse order (lowest to highest)%.

2) Optionally, the number of people to limit it to.  This number goes right after the destination character.
Example: /dm report p5

3) By default, reports are on the currently visible quantity only.  If the word 'total' is specified before the destination character, though, the report will be on the totals for every quantity. 'Total' reports are formatted so that they look good when cut-and-paste into a text file, and so work best with the Frame destination.
Example: /dm report total f

Example: Whisper to player "dandelion" the top three people in the list:
/dm report w3 dandelion
]]--

--[[ Note: This is only to help construct the DM_MSG_SYNCHELP string.
1) Someone in the raid chooses a session name--for example, "Onyxia"--then call syncstart with that name. "/dm syncstart Onyxia".  This will clear everyone's data and ready them, as well as mark them with this label.
2) Play!  Collect data!
3) Call "/dm sync" whenever you wants the raid to share data.  Since it can cause a little slowdown it is best to do this between fights (though not necessarily between every fight).  If event data is desired, call "/dm sync e", though it takes a lot longer to sync.

Note: It doesn't matter who starts the session as long as everyone has the same session id, this will auto-clear any previous data.

Late-joiners: If you've joined a group late and don't have the current session id then you can request the popular session id by using "/dm syncrequest". This will 'ping' for the most popular (most users) session id, and then assume that id and call a sync, thus updating you with the raid's previous data. You can also manually "/dm syncping" to get an idea of if there's a current session or not.

IMPORTANT: Calling "/dm sync" when you don't have the current session id will force others to use your session id and your data.
]]--

-- Menu Options --
DM_MENU_CLEAR = "Clear";
DM_MENU_RESETPOS = "Reset Position";
DM_MENU_HIDE = "Hide Window";
DM_MENU_SHOW = "Show Window";
DM_MENU_VISINPARTY = "Visible Only While In A Party";
DM_MENU_REPORT = "Report";
DM_MENU_BARCOUNT = "Bar Count";
DM_MENU_AUTOCOUNTLIMIT = "Auto Count Limit";
DM_MENU_SORT = "Sort Type";
DM_MENU_VISIBLEQUANTITY = "Visible Quantity";
--DM_MENU_COLORSCHEME = "Color Scheme";
DM_MENU_MEMORY = "Memory Register";
DM_MENU_SAVE = "Save";
DM_MENU_RESTORE = "Restore";
DM_MENU_MERGE = "Merge";
DM_MENU_SWAP = "Swap";
DM_MENU_DELETE = "Delete";
DM_MENU_BAN = "Ban";
DM_MENU_CLEARABOVE = "Clear Above";
DM_MENU_CLEARBELOW = "Clear Below";
--DM_MENU_LOCK = "Lock List";
--DM_MENU_UNLOCK = "Unlock List";
DM_MENU_PAUSE = "Pause Parsing";
--DM_MENU_UNPAUSE = "Resume Parsing";
DM_MENU_LOCKPOS = "Lock Position";
DM_MENU_UNLOCKPOS = "Unlock Position";
DM_MENU_GROUPMEMBERSONLY = "Only Monitor Group Members";
DM_MENU_ADDPETTOPLAYER = "Treat Pet Data As Your Data";
DM_MENU_TEXT = "Text Options";
DM_MENU_TEXT_RANK = "Rank";
DM_MENU_TEXT_NAME = "Name";
DM_MENU_TEXT_TOTALPERCENTAGE = "% of Total";
DM_MENU_TEXT_LEADERPERCENTAGE = "% of Leader's";
DM_MENU_TEXT_VALUE = "Value";
DM_MENU_TEXT_DELTA = "Delta";
DM_MENU_SETCOLORFORALL = "Set Color For All";
DM_MENU_DEFAULTCOLORS = "Restore Default Colors";
DM_MENU_RESETONCOMBATSTARTS = "Reset Data When Combat Starts";
DM_MENU_SHOWFIGHTASPS = "Show Fight Data as Per/Second";
DM_MENU_REFRESHBUTTON = "Refresh";
DM_MENU_TOTAL = "Total";
DM_MENU_CHOOSEREPORT = "Choose Report";
-- Note reordered this list in version 2.2.0
DM_MENU_REPORTNAMES = {"Frame", "Console", "Say", "Party", "Raid", "Guild", "Officer"};
DM_MENU_TEXTCYCLE = "Cycle";
DM_MENU_QUANTCYCLE = "Auto-Cycle";
DM_MENU_HELP = "Help";
DM_MENU_ACCUMULATEINMEMORY = "Accumulate Data";
DM_MENU_POSITION = "Position";
DM_MENU_RESIZELEFT = "Resize Left";
DM_MENU_RESIZEUP = "Resize Up";
DM_MENU_SHOWMAX = "Show Max";
DM_MENU_SHOWTOTAL = "Show Total";
DM_MENU_LEADERS = "Leaders";
DM_MENU_PLAYERREPORT = "Player Report";
DM_MENU_EVENTREPORT = "Event Report";
DM_MENU_EVENTDATA = "Event Data";
DM_MENU_EVENTDATA_NONE = "Parse No Events";
DM_MENU_EVENTDATA_PLAYER = "Parse Own Events";
DM_MENU_EVENTDATA_ALL = "Parse All Events";
--DM_MENU_SYNCEVENTDATA_NONE = "Transmit No Events";
--DM_MENU_SYNCEVENTDATA_PLAYER = "Transmit Own Events";
--DM_MENU_SYNCEVENTDATA_ALL = "Transmit All Events";
DM_MENU_TOOLTIPDATA = "Tooltip Default Info";
DM_MENU_TOOLTIPDATA_SUMMARY = "Show Summary of Events";
DM_MENU_TOOLTIPDATA_CURRENT = "Show Current Events";
DM_MENU_TOOLTIPDATA_ALL = "Show All Events";
DM_MENU_SHOWEVENTDATATOOLTIP = "Tooltip Default";
DM_MENU_EVENTS1 = "Events 1-20";
DM_MENU_EVENTS2 = "Events 21-40";
DM_MENU_EVENTS3 = "Events 41-50";
DM_MENU_SYNC = "Synchronization";
DM_MENU_INCLOGRANGE = "Increase Combat Log Range";
DM_MENU_PERMITSYNCAUTOJOIN = "Join Broadcasted Channels";
DM_MENU_CLEARONAUTOJOIN = "Clear When Joining";
DM_MENU_SYNCBROADCASTCHAN = "Broadcast Channel";
DM_MENU_SYNCLEAVECHAN = "Leave Channel";
DM_MENU_SYNCONLYPLAYEREVENTS = "Sync Self Events Only";
DM_MENU_ENABLEDMM = "Show DMM Messages";
DM_MENU_NOSYNCCHAN = "NO SYNC CHANNEL SET";
DM_MENU_SYNCCHAN = "Current syncchan = ";
DM_MENU_SESSION = "Current session = ";
DM_MENU_SAVEDSESSION = "Session = ";
DM_MENU_JOINSYNCCHAN = "Join Channel: Use /dm syncchan";
DM_MENU_PARSEEVENTMESSAGES = "Parse Incoming Events";
DM_MENU_SENDINGBAR = "Sending..";
DM_MENU_PROCESSINGBAR = "Processing..";
DM_MENU_QUANTITYFILTER = "Quantity Cycling";
DM_MENU_MINIMIZE = "Minimize";
DM_MENU_LEFTJUSTIFYTEXT = "Left-Justify";
DM_MENU_RIGHTJUSTIFYTEXT = "Right-Justify";
DM_MENU_RESTOREDEFAULTOPTIONS = "Restore Default Options";
DM_MENU_PLAYERALWAYSVISIBLE = "Self Always Visible";
DM_MENU_APPLYFILTERTOMANUALCYCLING = "Apply to Manual Cycling";
DM_MENU_APPLYFILTERTOAUTOCYCLING = "Apply to Auto-Cycle";
DM_MENU_GENERAL = "General Options";
DM_MENU_GROUPDPSMODE = "Group DPS Mode";
DM_MENU_CLEARBANNED = "Un-ban All";
DM_MENU_CONSTANTVISUALUPDATE = "Constant Visual Update";
DM_MENU_CLEARWHENJOINPARTY = "Clear When Joining A Party";
DM_MENU_AUTOSYNC = "Sync Automatically";
DM_MENU_STARTNEWSESSION = "Start A New Session";
DM_MENU_SYNCGROUPDATA = "Syncronize Group Data";
DM_MENU_SYNCREADY = "Request Ready";
DM_MENU_SYNCPAUSE = "Request Pause";
DM_MENU_SYNCCLEAR = "Request Clear";
DM_MENU_REPORTCHANNEL = "Channel";
DM_MENU_REPORTWHISPER = "Whisper";
DM_MENU_ENABLESYNC = "Enable Data Sync";
DM_MENU_NOCOMBATSYNC = "Disable Data Sync In Combat";
DM_MENU_SYNCREQSESSION = "Request Session ID";
DM_MENU_HIDESCROLLBAR = "Hide Scroll Bar";


-- Misc
DM_CLASS = "Class"; -- The word for player class, like Druid or Warrior.
DM_TOOLTIP = "\nTime since last action = %.1fs\nRelationship = %s";
DM_YOU = "you"
DM_CRITSTR = "Crit";
DM_UNKNOWNENTITY = "Unknown Entity";
DM_SYNCSPELLNAME = "[Sync]";
DM_NEWSESSIONID = "Enter new session ID: "
DM_REPORTCHANNEL = "Enter the name or number of the channel to report to: "
DM_REPORTWHISPER = "Enter the name of the player to report to: "

DM_DMG_MELEE = "[Melee]";
DM_DMG_FALLING = "[Falling]";
DM_DMG_LAVA = "[Lava]";
DM_DMG_DAMAGESHIELD = "[DmgShield]";
DM_DMG_DEATH = "[Death]";
DM_DMG_COMBAT = "[Out of Combat]";

DamageMeters_RPSmoveStrings =
{
    r = "Rock",
    p = "Paper",
    s = "Scissors"
};

-------------------------------------------------------------------------------

--[[ This system based on the one in Gello's Recap, which itself was based on the one in Telo's MobHealth.
- source and dest = 0 means the player

TODO: These are all special cases in English because they contain apostrophes.
Julie's Dagger
Rammstein's Lightning Bolts
Night Dragon's Breath

]]--

--[[
This table defined types of messages that DM parsed and how to parse them.
It is no longer needed.
]]--

DamageMeters_msgInfo = {};
DM_Spellometer_Patterns = {};

-- This list contains all of the "cure" spells we want to track.
DM_CURESPELLS = {
    "Mass Dispel",
    "Dispel Magic",
    "Remove Curse",
    "Remove Lesser Curse",
    "Cure Poison",
    "Abolish Poison",
    "Cure Disease",
    "Abolish Disease",
    "Cleanse",
    "Purification",
    "Poison Cleansing Totem",
    "Disease Cleansing Totem",
    "Ancestral Spirit",
    "Rebirth",
    "Redemption",
    "Resurrection",
    "Defibrillate",
};

-------------------------------------------------------------------------------
