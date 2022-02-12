// Library of Utils
// Author: Sw1ft >> http://steamcommunity.com/profiles/76561198397776991

/*===============================*\
 *  Validate that current scope  *
 *       is the root table       *
\*===============================*/

if (this != getroottable())
	throw "the library must be included in the root table";

/*===============================*\
 *   Include Library once when   *
 * Scripted Mode was initialized *
\*===============================*/

__dummy_event_listener <- { OnGameEvent___dummy_event = function(tParams) {} }

if ("GameEventCallbacks" in this && typeof GameEventCallbacks == "table" && "__dummy_event" in GameEventCallbacks)
	return;
else
	__CollectEventCallbacks(__dummy_event_listener, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);

/*===============================*\
 *      Include Sub-Modules      *
\*===============================*/

DoIncludeScript("lib_utils/math", this);
DoIncludeScript("lib_utils/matrix", this);

/*===============================*\
 *       List of Constants       *
 *                               *
 *     CBaseEntity MoveType      *
\*===============================*/

const MOVETYPE_NONE = 0
const MOVETYPE_ISOMETRIC = 1
const MOVETYPE_WALK = 2
const MOVETYPE_STEP = 3
const MOVETYPE_FLY = 4
const MOVETYPE_FLYGRAVITY = 5
const MOVETYPE_VPHYSICS = 6
const MOVETYPE_PUSH = 7
const MOVETYPE_NOCLIP = 8
const MOVETYPE_LADDER = 9
const MOVETYPE_OBSERVER = 10
const MOVETYPE_CUSTOM = 11

/*===============================*\
 *       CBaseEntity Flags       *
\*===============================*/

const FL_ONGROUND = 1
const FL_DUCKING = 2
const FL_WATERJUMP = 4
const FL_ONTRAIN = 8
const FL_INRAIN = 16
const FL_FROZEN = 32
const FL_ATCONTROLS = 64
const FL_CLIENT = 128
const FL_FAKECLIENT = 256
const FL_INWATER = 512
const FL_FLY = 1024
const FL_SWIM = 2048
const FL_CONVEYOR = 4096
const FL_NPC = 8192
const FL_GODMODE = 16384
const FL_NOTARGET = 32768
const FL_AIMTARGET = 65536
const FL_PARTIALGROUND = 131072
const FL_STATICPROP = 262144
const FL_GRAPHED = 524288
const FL_GRENADE = 1048576
const FL_STEPMOVEMENT = 2097152
const FL_DONTTOUCH = 4194304
const FL_BASEVELOCITY = 8388608
const FL_WORLDBRUSH = 16777216
const FL_OBJECT = 33554432
const FL_KILLME = 67108864
const FL_ONFIRE = 134217728
const FL_DISSOLVING = 268435456
const FL_TRANSRAGDOLL = 536870912
const FL_UNBLOCKABLE_BY_PLAYER = 1073741824
const FL_FREEZING = 2147483648
const FL_EP2V_UNKNOWN1 = 2147483648

/*===============================*\
 *     CBasePlayer Buttons       *
\*===============================*/

const IN_ATTACK = 1
const IN_JUMP = 2
const IN_DUCK = 4
const IN_FORWARD = 8
const IN_BACK = 16
const IN_USE = 32
const IN_CANCEL = 64
const IN_LEFT = 128
const IN_RIGHT = 256
const IN_MOVELEFT = 512
const IN_MOVERIGHT = 1024
const IN_ATTACK2 = 2048
const IN_RUN = 4096
const IN_RELOAD = 8192
const IN_ALT1 = 16384
const IN_ALT2 = 32768
const IN_SCORE = 65536
const IN_SPEED = 131072
const IN_WALK = 262144
const IN_ZOOM = 524288
const IN_WEAPON1 = 1048576
const IN_WEAPON2 = 2097152
const IN_BULLRUSH = 4194304
const IN_GRENADE1 = 8388608
const IN_GRENADE2 = 16777216
const IN_ATTACK3 = 33554432

/*===============================*\
 *    CBaseTrigger SpawnFlags    *
\*===============================*/

const TR_CLIENTS = 1
const TR_NPCS = 2
const TR_PUSHABLES = 4
const TR_PHYSICS_OBJECTS = 8
const TR_ONLY_PLAYER_ALLY_NPCS = 16
const TR_ONLY_CLIENTS_IN_VEHICLES = 32
const TR_EVERYTHING = 64
const TR_ONLY_CLIENTS_NOT_IN_VEHICLES = 512
const TR_PHYSICS_DEBRIS = 1024
const TR_ONLY_NPCS_IN_VEHICLES = 2048
const TR_DISALLOW_BOTS = 4096
const TR_OFF = 8192

/*===============================*\
 *         Damage Type           *
\*===============================*/

const DMG_GENERIC = 0
const DMG_CRUSH = 1
const DMG_BULLET = 2
const DMG_SLASH = 4
const DMG_BURN = 8
const DMG_VEHICLE = 16
const DMG_FALL = 32
const DMG_BLAST = 64
const DMG_CLUB = 128
const DMG_SHOCK = 256
const DMG_SONIC = 512
const DMG_ENERGYBEAM = 1024
const DMG_PREVENT_PHYSICS_FORCE = 2048
const DMG_NEVERGIB = 4096
const DMG_ALWAYSGIB = 8192
const DMG_DROWN = 16384
const DMG_PARALYZE = 32768
const DMG_NERVEGAS = 65536
const DMG_POISON = 131072
const DMG_RADIATION = 262144
const DMG_DROWNRECOVER = 524288
const DMG_ACID = 1048576
// const DMG_SLOWBURN = 2097152
const DMG_MELEE = 2097152
const DMG_REMOVENORAGDOLL = 4194304
const DMG_PHYSGUN = 8388608
const DMG_PLASMA = 16777216
// const DMG_AIRBOAT = 33554432
const DMG_STUMBLE = 33554432
const DMG_DISSOLVE = 67108864
const DMG_BLAST_SURFACE = 134217728
const DMG_DIRECT = 268435456
const DMG_BUCKSHOT = 536870912
const DMG_HEADSHOT = 1073741824

/*===============================*\
 *     Director Enumerations     *
\*===============================*/

/* AllowBash Flags */
const ALLOW_BASH_ALL = 0
const ALLOW_BASH_PUSHONLY = 1
const ALLOW_BASH_NONE = 2

/* BOT Sense Flags */
const BOT_CANT_SEE = 1
const BOT_CANT_HEAR = 2
const BOT_CANT_FEEL = 4

/* BOT Command Flags */
const BOT_CMD_ATTACK = 0
const BOT_CMD_MOVE = 1
const BOT_CMD_RETREAT = 2
const BOT_CMD_RESET = 3

/* BotQuery Flags */
const BOT_QUERY_NOTARGET = 1

/* Infected Flags */
const INFECTED_FLAG_CANT_SEE_SURVIVORS = 8192
const INFECTED_FLAG_CANT_HEAR_SURVIVORS = 16384
const INFECTED_FLAG_CANT_FEEL_SURVIVORS = 32768

/* Finales and Scripted Panic Events Flags */
const FINALE_GAUNTLET_1 = 0
const FINALE_HORDE_ATTACK_1 = 1
const FINALE_HALFTIME_BOSS = 2
const FINALE_GAUNTLET_2 = 3
const FINALE_HORDE_ATTACK_2 = 4
const FINALE_FINAL_BOSS = 5
const FINALE_HORDE_ESCAPE = 6
const FINALE_CUSTOM_PANIC = 7
const FINALE_CUSTOM_TANK = 8
const FINALE_CUSTOM_SCRIPTED = 9
const FINALE_CUSTOM_DELAY = 10
const FINALE_CUSTOM_CLEAROUT = 11
const FINALE_GAUNTLET_START = 12
const FINALE_GAUNTLET_HORDE = 13
const FINALE_GAUNTLET_HORDE_BONUSTIME = 14
const FINALE_GAUNTLET_BOSS_INCOMING = 15
const FINALE_GAUNTLET_BOSS = 16
const FINALE_GAUNTLET_ESCAPE = 17

/* Stages Flags */
const STAGE_PANIC = 0
const STAGE_TANK = 1
const STAGE_DELAY = 2
const STAGE_CLEAROUT = 4
const STAGE_SETUP = 5
const STAGE_ESCAPE = 7
const STAGE_RESULTS = 8
const STAGE_NONE = 9

/* HUD Flags */
const HUD_FLAG_PRESTR = 1
const HUD_FLAG_POSTSTR = 2
const HUD_FLAG_BEEP = 4
const HUD_FLAG_BLINK = 8
const HUD_FLAG_AS_TIME = 16
const HUD_FLAG_COUNTDOWN_WARN = 32
const HUD_FLAG_NOBG = 64
const HUD_FLAG_ALLOWNEGTIMER = 128
const HUD_FLAG_ALIGN_LEFT = 256
const HUD_FLAG_ALIGN_CENTER = 512
const HUD_FLAG_ALIGN_RIGHT = 768
const HUD_FLAG_TEAM_SURVIVORS = 1024
const HUD_FLAG_TEAM_INFECTED = 2048
const HUD_FLAG_TEAM_MASK = 3072
const HUD_FLAG_NOTVISIBLE = 16384

const HUD_LEFT_TOP = 0
const HUD_LEFT_BOT = 1
const HUD_MID_TOP = 2
const HUD_MID_BOT = 3
const HUD_RIGHT_TOP = 4
const HUD_RIGHT_BOT = 5
const HUD_TICKER = 6
const HUD_FAR_LEFT = 7
const HUD_FAR_RIGHT = 8
const HUD_MID_BOX = 9
const HUD_SCORE_TITLE = 10
const HUD_SCORE_1 = 11
const HUD_SCORE_2 = 12
const HUD_SCORE_3 = 13
const HUD_SCORE_4 = 14

const HUD_SPECIAL_TIMER0 = 0
const HUD_SPECIAL_TIMER1 = 1
const HUD_SPECIAL_TIMER2 = 2
const HUD_SPECIAL_TIMER3 = 3
const HUD_SPECIAL_COOLDOWN = 4
const HUD_SPECIAL_ROUNDTIME = 5
const HUD_SPECIAL_MAPNAME = 6
const HUD_SPECIAL_MODENAME = 7

/* Manage Timers Flags */
const TIMER_DISABLE = 0
const TIMER_COUNTUP = 1
const TIMER_COUNTDOWN = 2
const TIMER_STOP = 3
const TIMER_SET = 4

/* Shutdown Function Flags */
const SCRIPT_SHUTDOWN_MANUAL = 0
const SCRIPT_SHUTDOWN_ROUND_RESTART = 1
const SCRIPT_SHUTDOWN_TEAM_SWAP = 2
const SCRIPT_SHUTDOWN_LEVEL_TRANSITION = 3
const SCRIPT_SHUTDOWN_EXIT_GAME = 4

/* Spawn Direction Flags */
const SPAWNDIR_N = 1
const SPAWNDIR_NE = 2
const SPAWNDIR_E = 4
const SPAWNDIR_SE = 8
const SPAWNDIR_S = 16
const SPAWNDIR_SW = 32
const SPAWNDIR_W = 64
const SPAWNDIR_NW = 128

/* Spawn Rules */
const SCRIPTED_SPAWN_FINALE = 0
const SCRIPTED_SPAWN_SURVIVORS = 1
const SCRIPTED_SPAWN_BATTLEFIELD = 2
const SCRIPTED_SPAWN_POSITIONAL = 3

const SPAWN_FINALE = 0
const SPAWN_SURVIVORS = 1
const SPAWN_BATTLEFIELD = 2
const SPAWN_POSITIONAL = 3

const SPAWN_NO_PREFERENCE = -1
const SPAWN_ANYWHERE = 0
const SPAWN_BEHIND_SURVIVORS = 1
const SPAWN_NEAR_IT_VICTIM = 2
const SPAWN_SPECIALS_IN_FRONT_OF_SURVIVORS = 3
const SPAWN_SPECIALS_ANYWHERE = 4
const SPAWN_FAR_AWAY_FROM_SURVIVORS = 5
const SPAWN_ABOVE_SURVIVORS = 6
const SPAWN_IN_FRONT_OF_SURVIVORS = 7
const SPAWN_VERSUS_FINALE_DISTANCE = 8
const SPAWN_LARGE_VOLUME = 9
const SPAWN_NEAR_POSITION = 10

/* Trace Line Mask Flags */
const TRACE_MASK_ALL = -1
const TRACE_MASK_VISION = 33579073
const TRACE_MASK_VISIBLE_AND_NPCS = 33579137
const TRACE_MASK_PLAYER_SOLID = 33636363
const TRACE_MASK_NPC_SOLID = 33701899
const TRACE_MASK_SHOT = 1174421507

/* Weapon Upgrade Types */
const UPGRADE_INCENDIARY_AMMO = 0
const UPGRADE_EXPLOSIVE_AMMO = 1
const UPGRADE_LASER_SIGHT = 2

/* Zombie Types */
const ZOMBIE_NORMAL = 0
const ZOMBIE_SMOKER = 1
const ZOMBIE_BOOMER = 2
const ZOMBIE_HUNTER = 3
const ZOMBIE_SPITTER = 4
const ZOMBIE_JOCKEY = 5
const ZOMBIE_CHARGER = 6
const ZOMBIE_WITCH = 7
const ZOMBIE_TANK = 8
const ZSPAWN_MOB = 10
const ZSPAWN_MUDMEN = 12
const ZSPAWN_WITCHBRIDE = 11

/* Print Destinations */
const HUD_PRINTNOTIFY = 1
const HUD_PRINTCONSOLE = 2
const HUD_PRINTTALK = 3
const HUD_PRINTCENTER = 4

/*===============================*\
 *   Enumerations & Constants    *
\*===============================*/

const LU_VERSION = "1.0.0"
const LU_DATA_FOLDER = "lib_utils/"

const MAXENTS = 2048
const MAXCLIENTS = 32

const ZOMBIE_NONE = -1
const ZOMBIE_SURVIVOR = 9

const TEAM_SPECTATOR = 1
const TEAM_SURVIVOR = 2
const TEAM_INFECTED = 3
const TEAM_EVERYONE = 4

const BUTTON_STATE_PRESSED = 0
const BUTTON_STATE_RELEASED = 0
const BUTTON_STATE_HOLD = 0

const PHYS_BLOCKER_EVERYONE = 0
const PHYS_BLOCKER_SURVIVORS = 1
const PHYS_BLOCKER_SI = 2
const PHYS_BLOCKER_ALL_SI = 3

const UPGRADE_NONE = 0
const UPGRADE_INCENDIARY = 1
const UPGRADE_EXPLOSIVE = 2
const UPGRADE_LASER = 4

const INVENTORY_WEAPON_PRIMARY = 0
const INVENTORY_WEAPON_SECONDARY = 1

const LOOPFUNC_PREFIX = "lf_"
const DEFAULT_INTERVAL_PER_TICK = 0.033333333333333333

const TRACE_MASK_SHOT_IGNORE_WINDOW = 1174421505
const TRACE_MAX_DISTANCE = 1e+37

const HIDE_HUD_NONE = 0
const HIDE_HUD_WEAPON_SELECTION = 1
const HIDE_HUD_FLASHLIGHT = 2
const HIDE_HUD_ALL = 4
const HIDE_HUD_HEALTH = 8
const HIDE_HUD_PLAYER_DEAD = 16
const HIDE_HUD_NEED_SUIT = 32
const HIDE_HUD_MISC = 64
const HIDE_HUD_CHAT = 128
const HIDE_HUD_CROSSHAIR = 256
const HIDE_HUD_VEHICLE_CROSSHAIR = 512
const HIDE_HUD_IN_VEHICLE = 1024

const HOOK_CONTINUE = 0 // continue executing further hook functions
const HOOK_OVERRIDE = 1 // override return value of general hook function
const HOOK_STOP = 2 // stop executing further hook functions
const HOOK_STOP_SINGLE = 3 // can be used to don't call only specified hook function on a specified interval

/*===============================*\
 *         Interfaces            *
\*===============================*/

if (!("ifaces_initialized" in this))
{

/** Interface Script Plugin
* Signature: class IScriptPlugin()
*/

class IScriptPlugin
{
	// Called when the plugin must be loaded
	function Load() { g_ScriptPluginsHelper.PureVirtualError() };

	// Called when the plugin must be unloaded
	function Unload() { g_ScriptPluginsHelper.PureVirtualError() };

	// Called on next tick after round start
	function OnRoundStartPost() { g_ScriptPluginsHelper.PureVirtualError() };

	// Called on round end
	function OnRoundEnd() { g_ScriptPluginsHelper.PureVirtualError() };

	// Called when new methods were added to game classes such as CTerrorPlayer, etc.
	function OnExtendClassMethods() { g_ScriptPluginsHelper.PureVirtualError() };

	// Return name of the described class
	function GetClassName() { g_ScriptPluginsHelper.PureVirtualError() };

	// Return plugin name
	function GetScriptPluginName() { g_ScriptPluginsHelper.PureVirtualError() };

	// Return version of the interface
	function GetInterfaceVersion() { g_ScriptPluginsHelper.PureVirtualError() };
}

ifaces_initialized <- true;

}

/*===============================*\
 *           Classes             *
\*===============================*/

/** Class Loop Function
* Signature: class CLoopFunction(string funcName, float refiretime, any args)
*/

class CLoopFunction
{
	constructor(sFunction, flInterval, aInputArgs = [])
	{
		local aArgs = [this];
		aArgs.extend(aInputArgs);

		m_aArgs = aArgs;
		m_sFunctionName = sFunction;
		m_sTimerName = LOOPFUNC_PREFIX + sFunction.tolower();

		if (flInterval != null) m_flInterval = flInterval;
	}

	function GetArguments() { return m_aArgs; }

	function GetFunctionName() { return m_sFunctionName; }

	function GetTimerName() { return m_sTimerName; }

	function GetRefireTime() { return m_flInterval; }

	m_sFunctionName = null;
	m_aArgs = null;
	m_sTimerName = null;
	m_flInterval = null;
}

/** Class On Tick Function
* Signature: class COnTickFunction(string funcName, any args)
*/

class COnTickFunction
{
	constructor(sFunction, aInputArgs = [])
	{
		local aArgs = [this];
		aArgs.extend(aInputArgs);

		m_aArgs = aArgs;
		m_sFunctionName = sFunction;
	}

	function GetArguments() { return m_aArgs; }

	function GetCallingFunction() { return compilestring("return " + m_sFunctionName)(); }

	function GetFunctionName() { return m_sFunctionName; }

	m_sFunctionName = null;
	m_aArgs = null;
}

/** Class Button Listener
* Signature: class CButtonListener(int button, string funcName, int pressType, int team)
*/

class CButtonListener
{
	constructor(nButtons, sFunction, iType, iTeam)
	{
		m_nButtons = nButtons;
		m_sFunctionName = sFunction;
		m_iPressType = iType;
		m_iTeam = iTeam;
	}

	function GetCallingFunction() { return compilestring("return " + m_sFunctionName)(); }

	function GetFunctionName() { return m_sFunctionName; }

	function GetButton() { return m_nButtons; }

	function GetTeam() { return m_iTeam; }

	function GetPressType() { return m_iPressType; }

	m_sFunctionName = null;
	m_nButtons = null;
	m_iPressType = null;
	m_iTeam = null;
}

/** Class Chat Command
* Signature: class CChatCommand(string command, function callFunction, bool bProcessCaller, bool bProcessArguments)
*/

class CChatCommand
{
	constructor(sCommand, callFunc, bProcessCaller, bProcessArguments)
	{
		m_sCommand = sCommand;
		m_Function = callFunc;
		m_bProcessCaller = bProcessCaller;
		m_bProcessArguments = bProcessArguments;
	}

	function GetCommand() { return m_sCommand; }

	function GetCallingFunction() { return m_Function; }

	function ProcessCaller() { return m_bProcessCaller; }

	function ProcessArguments() { return m_bProcessArguments; }

	m_sCommand = null;
	m_Function = null;
	m_bProcessCaller = true;
	m_bProcessArguments = false;
}

/** Class User Command
* Signature: class CUserCommand(string command, function callFunction, bool bProcessCaller, bool bProcessArguments)
*/

class CUserCommand
{
	constructor(sCommand, callFunc, bProcessCaller, bProcessArguments)
	{
		m_sCommand = sCommand;
		m_Function = callFunc;
		m_bProcessArguments = bProcessArguments;
		m_bProcessCaller = bProcessCaller;
	}

	function GetCommand() { return m_sCommand; }

	function GetCallingFunction() { return m_Function; }

	function ProcessCaller() { return m_bProcessCaller; }

	function ProcessArguments() { return m_bProcessArguments; }

	m_sCommand = null;
	m_Function = null;
	m_bProcessCaller = true;
	m_bProcessArguments = false;
}

/** Class ConVar
* Signature: class CConVar(string name, string defaultValue, string variableType, float minValue, float maxValue)
*/

class CConVar
{
	constructor(sName, sDefaultValue, sType = null, flMinValue = null, flMaxValue = null)
	{
		m_sName = sName;
		m_sValue = sDefaultValue;
		m_sDefaultValue = sDefaultValue;
		m_sType = sType;
		m_flMinValue = flMinValue;
		m_flMaxValue = flMaxValue;
	}

	function GetName() { return m_sName; }

	function GetDefault() { return m_sDefaultValue; }

	function GetValue(bReturnFloat = false) { return bReturnFloat ? Convars.GetFloat(m_sName) : Convars.GetStr(m_sName); }

	function GetCurrentValue() { return m_sValue; }

	function RestoreDefault() { m_sValue = m_sDefaultValue; }

	function SetValue(Value) { SendToServerConsole(format("setinfo %s %s", m_sName, Value.tostring())); }

	function AddChangeHook(Function)
	{
		if (!m_bChangeHook)
		{
			m_bChangeHook = true;
			m_ChangeHookFunction = Function;
			printf("[Class ConVar] A function has been hooked for cvar '%s'", m_sName);
		}
	}

	function RemoveChangeHook()
	{
		if (m_bChangeHook)
		{
			m_bChangeHook = false;
			m_ChangeHookFunction = null;
			printf("[Class ConVar] A function has been unhooked for cvar '%s'", m_sName);
		}
	}

	m_sName = null;
	m_sValue = null;
	m_sDefaultValue = null;
	m_bChangeHook = false;
	m_ChangeHookFunction = null;
	m_flMinValue = null;
	m_flMaxValue = null;
	m_sType = null;
}

/** Class Timer
* Signature: class CTimer(float callTime, function callFunction, any args)
*/

class CTimer
{
	constructor(flCallTime, Function, aInputArgs = [])
	{
		local aArgs = [this];
		aArgs.extend(aInputArgs);

		m_aArgs = aArgs;
		m_iIdentifier = ::g_iUniqueIDs++;
		m_Function = Function;
		m_flCallTime = flCallTime;
	}

	function GetCallingFunction() { return m_Function; }

	function GetCallTime() { return m_flCallTime; }

	function GetArguments() { return m_aArgs; }

	function GetIdentifier() { return m_iIdentifier; }

	m_iIdentifier = null;
	m_flCallTime = null;
	m_Function = null;
	m_aArgs = null;
}

/*===============================*\
 *        Global Variables       *
\*===============================*/

if (!("g_sMapName" in this)) g_sMapName <- null;
if (!("g_iUniqueIDs" in this)) g_iUniqueIDs <- 0;

if (!("hook_UserConsoleCommand" in this)) hook_UserConsoleCommand <- false;
if (!("hook_InterceptChat" in this)) hook_InterceptChat <- false;
if (!("hook_AllowBash" in this)) hook_AllowBash <- false;
if (!("hook_AllowTakeDamage" in this)) hook_AllowTakeDamage <- false;
if (!("hook_BotQuery" in this)) hook_BotQuery <- false;
if (!("hook_CanPickupObject" in this)) hook_CanPickupObject <- false;

if (!("g_hClientCommand" in this) || ("g_hClientCommand" in this && !g_hClientCommand.IsValid()))
	g_hClientCommand <- SpawnEntityFromTable("point_clientcommand", {});

if (!("g_hServerCommand" in this) || ("g_hServerCommand" in this && !g_hServerCommand.IsValid()))
	g_hServerCommand <- SpawnEntityFromTable("point_servercommand", {});

if (!("g_hBroadcastClientCommand" in this) || ("g_hBroadcastClientCommand" in this && !g_hBroadcastClientCommand.IsValid()))
	g_hBroadcastClientCommand <- SpawnEntityFromTable("point_broadcastclientcommand", {});

/*===============================*\
 *           Tables              *
\*===============================*/

g_CallBackEvents <- {};
g_ChatCommands <- {};
g_UserCommands <- [];

g_Hooks <-
{
	// g_Hooks.RegisterHook( g_Hooks.OnAllowTakeDamage, MyHookFunction );
	function RegisterHook(aHooks, hookFunc)
	{
		foreach (idx, func in aHooks)
		{
			if (func == hookFunc)
			{
				printf("[Hooks] A function for hook %s already registered", GetValueKey(aHooks, this));
				return;
			}
		}

		aHooks.push(hookFunc);
		printf("[Hooks] Registered a function for hook %s", GetValueKey(aHooks, this));
	}

	// g_Hooks.RemoveHook( g_Hooks.OnAllowTakeDamage, MyHookFunction );
	function RemoveHook(aHooks, hookFunc)
	{
		foreach (idx, func in aHooks)
		{
			if (func == hookFunc)
			{
				aHooks.remove(idx);
				printf("[Hooks] Removed a function for hook %s", GetValueKey(aHooks, this));
				return;
			}
		}

        printf("[Hooks] A function for hook %s not registered", GetValueKey(aHooks, this));
	}

	// Signature: void OnRoundStart()
	OnRoundStart = []

	// Signature: void OnRoundStartPost()
	OnRoundStartPost = []

	// Signature: void OnRoundEnd()
	OnRoundEnd = []

	// Signature: void OnExtendClassMethods()
	OnExtendClassMethods = []

	// Signature: void OnSetEntityAnglesCompleted(handle entity)
	OnSetEntityAnglesCompleted = []

	// Signature: HookReturnCode OnIteratePlayersPerTick(handle player)
	// Hook codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_STOP - stop executing further hook functions on this tick
	// HOOK_STOP_SINGLE - stop executing current hook function on this tick
	OnIteratePlayersPerTick = []

	// Signature: HookReturnCode OnInterceptChat(table showMessage, string message, handle player) | Required ScriptedMode
	// Table 'showMessage' contains key 'value' that can be changed, 'true' to show message to other clients, otherwise 'false'
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override return value (showMessage.value), further hook functions won't be able to override it
	// HOOK_STOP - stop executing the general hook function, return value can be overriden, but further hook functions won't be called
	OnInterceptChat = []

	// Signature: HookReturnCode OnAllowBash(table bashReturnCode, handle basher, handle bashee) | Required ScriptedMode
	// Table 'bashReturnCode' contains key 'value' that can be changed, see constants ALLOW_BASH_*
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override return value (bashReturnCode.value), further hook functions won't be able to override it
	// HOOK_STOP - stop executing the general hook function, return value can be overriden, but further hook functions won't be called
	OnAllowBash = []

	// Signature: HookReturnCode OnAllowTakeDamage(table applyDamage, table damageInfo) | Required ScriptedMode
	// Table 'applyDamage' contains key 'value' that can be changed, 'true' to apply damage, otherwise 'false'
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override return value (applyDamage.value), further hook functions won't be able to override it
	// HOOK_STOP - stop executing the general hook function, return value can be overriden, but further hook functions won't be called
	OnAllowTakeDamage = []

	// Signature: HookReturnCode OnBotQuery(table allowBash, int queryflag, handle entity, bool defaultvalue) | Required ScriptedMode
	// Table 'allowBash' contains key 'value' that can be changed, 'true' to disallow bashing for a bot, otherwise 'false'
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override return value (allowBash.value), further hook functions won't be able to override it
	// HOOK_STOP - stop executing the general hook function, return value can be overriden, but further hook functions won't be called
	OnBotQuery = []

	// Signature: HookReturnCode OnCanPickupObject(table allowPickup, handle object) | Required ScriptedMode
	// Table 'allowPickup' contains key 'value' that can be changed, 'true' to allow pickup an object, otherwise 'false'
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override return value (allowPickup.value), further hook functions won't be able to override it
	// HOOK_STOP - stop executing the general hook function, return value can be overriden, but further hook functions won't be called
	OnCanPickupObject = []
};

g_ScriptPluginsHelper <-
{
	PureVirtualError = function()
	{
		throw "Abstract Class: cannot call undescribed virtual method";
	}
	
	AddScriptPlugin = function(scriptPlugin)
	{
		if (scriptPlugin instanceof IScriptPlugin)
		{
			foreach (idx, plugin in g_aScriptPlugins)
			{
				if (plugin == scriptPlugin)
				{
					errorl(format("[AddScriptPlugin] Script Plugin '%s' already added", scriptPlugin.GetScriptPluginName()));
					return false;
				}
				else if (plugin.GetClassName() == scriptPlugin.GetClassName())
				{
					g_aScriptPlugins[idx] = scriptPlugin;
					printf("[AddScriptPlugin] Script Plugin '%s' was reloaded", scriptPlugin.GetScriptPluginName());
					return true;
				}
			}

			g_aScriptPlugins.push(scriptPlugin);
			printf("[AddScriptPlugin] Script Plugin '%s' successfully added", scriptPlugin.GetScriptPluginName());
			return true;
		}

		errorl("[AddScriptPlugin] Failed to add a Script Plugin");
		return false;
	}

	RemoveScriptPlugin = function(scriptPlugin)
	{
		if (scriptPlugin instanceof IScriptPlugin)
		{
			foreach (idx, plugin in g_aScriptPlugins)
			{
				if (plugin == scriptPlugin)
				{
					g_aScriptPlugins.remove(idx);
					scriptPlugin.Unload();

					printf("[RemoveScriptPlugin] Script Plugin '%s' successfully removed", scriptPlugin.GetScriptPluginName());
					return true;
				}
			}

			errorl(format("[RemoveScriptPlugin] Script Plugin '%s' wasn't added", scriptPlugin.GetScriptPluginName()));
			return false;
		}

		errorl("[RemoveScriptPlugin] Failed to remove a Script Plugin");
		return false;
	}
};

/*===============================*\
 *           Arrays              *
\*===============================*/

if (!("g_aScriptPlugins" in this)) g_aScriptPlugins <- [];

g_aLoopFunctions <- [];
g_aOnTickFunctions <- [];
g_aButtonsListener <- [];
g_aConVars <- [];
g_aTimers <- [];

/*===============================*\
 *           Functions           *
\*===============================*/

/** Convert string to integer
* Signature: int str_to_int(string value)
*/

function str_to_int(value)
{
    try { return value.tointeger(); }
    catch (exception) return 0;
}

/** Convert string to float
* Signature: float str_to_float(string value)
*/

function str_to_float(value)
{
    try { return value.tofloat(); }
    catch (exception) return 0.0;
}

/** Print format
* Signature: void printf(string message, any args)
* Credits: kapkan
*/

function printf(sMsg, ...)
{
	local aInputArgs = [this, sMsg];
	aInputArgs.extend(vargv);
	printl(format.acall(aInputArgs));
}

/** Say format
* Signature: void sayf(string message, any args)
*/

function sayf(sMsg, ...)
{
	local aInputArgs = [this, sMsg];
	aInputArgs.extend(vargv);
	Say(null, format.acall(aInputArgs), false);
}

/** Simplified Say function
* Signature: void SayMsg(string message)
*/

function SayMsg(sMsg)
{
	Say(null, "" + sMsg, false);
}

/** Send an error message
* Signature: void errorl(string message)
*/

function errorl(sMsg)
{
	error(sMsg + "\n");
}

/** Test a value. If assertion fails, prints message in the console
* Signature: void Assert(bool value, string message, bool throwError)
*/

function Assert(bAssertion, sMsg = null, bThrowError = false)
{
	if (!bAssertion)
	{
		if (bThrowError)
		{
			if (sMsg != null)
				throw "ASSERTION FAILED: " + sMsg;
			else
				throw "ASSERTION FAILED";
		}
		else
		{
			if (sMsg != null)
				error("\nASSERTION FAILED [" + sMsg + "]\n\n");
			else
				error("\nASSERTION FAILED\n\n");
			
			local tStackInfo = getstackinfos(2);

			error("CALLSTACK\n*FUNCTION [" + tStackInfo["func"] + "()] " + tStackInfo["src"] + " line [" + tStackInfo["line"] + "]\n\n");
			error("LOCALS\n");

			foreach (k, v in tStackInfo["locals"])
				error("[" + k + "] " + v + "\n");
		}
	}
}

/** Set a value for a console variable or return the current value
* Signature: void/string/float cvar(string convar, any value, bool bReturnString)
*/

function cvar(sName, value = null, bReturnString = true)
{
	if (value != null)
		Convars.SetValue(sName.tostring(), value.tostring());
	else if (bReturnString)
		return Convars.GetStr(sName.tostring());
	else
		return Convars.GetFloat(sName.tostring());
}

/** Interpreting ToKVString method
* Signature: string kvstr(instance)
*/

function kvstr(__instance)
{
	if (__instance instanceof Vector || __instance instanceof QAngle)
		return __instance.x + " " + __instance.y + " " + __instance.z;

	if (__instance instanceof Vector2D)
		return __instance.x + " " + __instance.y;

	if (__instance instanceof Vector4D || __instance instanceof Quaternion)
		return __instance.x + " " + __instance.y + " " + __instance.z + " " + __instance.w;

	return "0";
}

/** Draw a point
* Signature: void Mark(Vector origin, float duration, Vector min, Vector max, int r, int g, int b, int alpha)
*/

function Mark(vecPos, flDuration = 5.0, vecMins = Vector(-2, -2, -2), vecMaxs = Vector(2, 2, 2), iRed = 232, iGreen = 0, iBlue = 232, iAlpha = 255)
{
	DebugDrawBox(vecPos, vecMins, vecMaxs, iRed, iGreen, iBlue, iAlpha, flDuration);
}

/** Draw a line
* Signature: void Line(Vector start, Vector end, float time, int red, int green, int blue)
*/

function Line(vecStart, vecEnd, flTime = 5.0, iRed = 232, iGreen = 0, iBlue = 232)
{
	DebugDrawLine(vecStart, vecEnd, iRed, iGreen, iBlue, false, flTime);
}

/** Create a matrix
* Signature: CMatrix Matrix(any args)
*/

function Matrix(...)
{
	return CMatrix(vargv);
}

/** Is a function exist
* Signature: bool IsFunctionExist(string funcName)
*/

function IsFunctionExist(sFunction)
{
	if (typeof sFunction != "string")
	{
		printl("[IsFunctionExist] Wrong type of variable");
		return false;
	}

	local aString = split(sFunction, "(");

	try
	{
		foreach (val in aString)
		{
			local func = compilestring("return " + val)();

			if (typeof func == "function" || typeof func == "native function")
				return true;
		}
	}
	catch (val)
	{
	}

	return false;
}

/** Get key's value from given scope
* Signature: any GetValueKey(string key, table scope)
*/

function GetKeyValue(key, scope = null)
{
	if (!scope)
		scope = getroottable();
	
	foreach (k, val in scope)
		if (key == k)
			return val;
}

/** Get value's key from given scope
* Signature: string GetValueKey(any value, table scope)
*/

function GetValueKey(value, scope = null)
{
	if (!scope)
		scope = getroottable();
	
	foreach (key, val in scope)
		if (value == val)
			return "" + key;
}

/** Run a script code with the delay
* Signature: void RunScriptCode(string script, float delay, handle activator, handle caller)
*/

function RunScriptCode(sScript, flDelay = 0.0, hActivator = null, hCaller = null)
{
	if (typeof sScript != "string")
	{
		printl("[RunScriptCode] Wrong type of variable");
		return;
	}

	if (hCaller)
		AcceptEntityInput(hCaller, "RunScriptCode", sScript, flDelay, hActivator);
	else
		EntFire((hActivator != null ? "!activator" : "worldspawn"), "RunScriptCode", sScript, flDelay, hActivator);
}

/** Call a script function code with the delay
* Signature: void CallScriptFunction(string function, float delay, handle activator, handle caller)
*/

function CallScriptFunction(sFunction, flDelay = 0.0, hActivator = null, hCaller = null)
{
	if (typeof sFunction != "string")
	{
		printl("[CallScriptFunction] Wrong type of variable");
		return;
	}

	if (hCaller)
		AcceptEntityInput(hCaller, "CallScriptFunction", sFunction, flDelay, hActivator);
	else
		EntFire((hActivator != null ? "!activator" : "worldspawn"), "CallScriptFunction", sFunction, flDelay, hActivator);
}

/** Call a function with the delay and input variables
* Signature: CTimer CreateTimer(float delay, function callFunction, array args)
*/

function CreateTimer(flDelay, func, ...)
{
	if (typeof func == "function" || typeof func == "native function")
	{
		local timer = CTimer(Time() + flDelay, func, vargv);
		g_aTimers.push(timer);
		return timer;
	}

	printl("[CreateTimer] Wrong type of variable");
}

/** Remove a timer by given identifier
* Signature: void RemoveTimerByID(int identifier)
*/

function RemoveTimerByID(iIdentifier)
{
	for (local i = 0; i < g_aTimers.len(); ++i)
	{
		if (g_aTimers[i].GetIdentifier() == iIdentifier)
		{
			g_aTimers.remove(i);
			--i;
		}
	}
}

/** Call a function in the next game tick with input variables
* Signature: CTimer RunNextTickFunction(function callFunction, array args)
*/

function RunNextTickFunction(func, ...)
{
	if (typeof func == "function" || typeof func == "native function")
	{
		local timer = CTimer(Time() + 0.0334, func, vargv);
		g_aTimers.push(timer);
		return timer;
	}

	printl("[RunNextTickFunction] Wrong type of variable");
}

/** Is arrays equal
* Signature: bool IsArraysEqual(array arr1, array arr2)
*/

function IsArraysEqual(a, _a)
{
	if (a.len() != _a.len()) return false;
	foreach (idx, val in a) if (_a[idx] != val) return false;

	return true;
}

/** Convert seconds to clock/timer format
* Signature: string ToClock(float time, bool bMs)
*/

function ToClock(flTime = 0.0, bMs = true)
{
	local min = (flTime / 60).tointeger();
	local sec = (flTime % 60).tointeger();
	local hr = min / 60;
	local day = hr / 24;
	local hr_dbg = "";
	local day_dbg = "";
	local ms_dbg = "";

	if (day >= 1)
	{
		hr %= 24;
		day_dbg = day < 10 ? "0" + day + ":" : day + ":";
	}

	if (hr >= 1 || day >= 1)
	{
		min %= 60;
		hr_dbg = hr < 10 ? "0" + hr + ":" : hr + ":";
	}

	if (bMs)
	{
		ms_dbg = "," + split(format("%.03f", flTime), ".")[1];
	}

	return day_dbg + hr_dbg + (min < 10 ? "0" + min : min) + (sec < 10 ? ":0" + sec : ":" + sec) + ms_dbg;
}

/** Send a server command
* Signature: void ServerCommand(string command, float delay)
*/

function ServerCommand(sCommand = "", flDelay = 0.0)
{
	AcceptEntityInput(g_hServerCommand, "Command", sCommand.tostring(), flDelay.tofloat(), null);
	AcceptEntityInput(g_hServerCommand, "Kill", "", flDelay.tofloat(), null);
}

/** Create "infinite" end point for tracing
* Signature: Vector Trace_MakeEndPoint(Vector traceStart, Vector traceDirection)
*/

function Trace_MakeEndPoint(vecStart, vecDir)
{
	return vecStart + vecDir.Scale(TRACE_MAX_DISTANCE);
}

/** Wrapper for TraceLine function
* Signature: void DoTraceLine(table result, Vector start, Vector end, int masktype, handle ignoreEntity, bool getPlaneNormal, QAngle traceDirection)
*/

function DoTraceLine(tTraceResult, vecStart, vecEnd, iMask = TRACE_MASK_SHOT, hIgnore = null, bPlaneNormal = false, traceDirection = null)
{
	Assert( typeof tTraceResult == "table", "tTraceResult must be passed as empty table", true );

	local tTrace =
	{
		start = vecStart
		end = vecEnd
		ignore = hIgnore
		mask = iMask
	}

	TraceLine(tTrace);

	if (bPlaneNormal)
	{
		if (traceDirection == null)
			traceDirection = (vecEnd - vecStart).VectorToQAngle();
		
		local vecPointA, vecPointB;

		local vecDir = traceDirection.Forward();
		local vecStartShifted = vecStart + traceDirection.Left().Scale(-0.01);

		local tPlaneTrace =
		{
			start = vecStartShifted
			end = vecStartShifted + vecDir.Scale(TRACE_MAX_DISTANCE)
			ignore = hIgnore
			mask = iMask
		}

		TraceLine(tPlaneTrace); vecPointA = tPlaneTrace.pos;

		tPlaneTrace.start = vecStart + traceDirection.Up().Scale(-0.01);
		tPlaneTrace.end = tPlaneTrace.start + vecDir.Scale(TRACE_MAX_DISTANCE);

		TraceLine(tPlaneTrace); vecPointB = tPlaneTrace.pos;
		
		tTraceResult.planenormal <- ((vecPointA - tTrace.pos).Cross(vecPointB - tTrace.pos)).Normalize();
	}
	else
	{
		tTraceResult.planenormal <- Vector();
	}

	if (tTrace.hit && tTrace.enthit.GetEntityIndex() != 0)
		tTraceResult.enthit <- tTrace.enthit;
	else
		tTraceResult.enthit <- null;
	
	if ("startsolid" in tTrace)
		tTraceResult.startsolid <- tTrace.startsolid;
	else
		tTraceResult.startsolid <- false;
	
	tTraceResult.fraction <- tTrace.fraction;
	tTraceResult.hit <- tTrace.hit;
	tTraceResult.pos <- tTrace.pos;

	/* Resulting table:

		Vector startpos - start of the TraceLine
		Vector endpos - end of the TraceLine

		bool hit - if the trace hit something

		Vector pos - hit pos
		CBaseEntity enthit - the entity hit
		
		bool startsolid - if true, the initial point was in a solid area
		float fraction - how far the trace went before hitting something

		Vector planenormal - the normal vector of the hit plane (will be calculated if bPlaneNormal is true)
	*/
}

/*===============================*\
*    Entity Related Functions    *
\*===============================*/

/** Accept an entity input
* Signature: void AcceptEntityInput(handle caller, string command, string value, handle activator, float delay)
*/

function AcceptEntityInput(hEntity, sInput, sValue = "", flDelay = 0.0, hActivator = null)
{
	if (!hEntity)
	{
		printl("[AcceptEntityInput] Entity doesn't exist");
		return;
	}

	DoEntFire("!self", sInput.tostring(), sValue.tostring(), flDelay.tofloat(), hActivator, hEntity);
}

/** Teleport an entity
* Signature: void TP(Vector position, Vector/QAngle angles, Vector velocity, bool bVectorDirection)
*/

function TP(hEntity, vecPos = Vector(), vecAngles = QAngle(), vecVel = Vector(), bVectorDirection = false)
{
	if (hEntity != null)
	{
		if (vecPos != null)
		{
			hEntity.SetOrigin(vecPos);
		}

		if (vecAngles != null)
		{
			if (hEntity.IsPlayer())
				hEntity.SetForwardVector(bVectorDirection ? vecAngles : vecAngles.Forward());
			else
				hEntity.SetAngles(bVectorDirection ? VectorToQAngle(vecAngles) : vecAngles);
		}

		if (vecVel != null)
		{
			if (hEntity.IsPlayer())
				hEntity.SetVelocity(vecVel);
			else
				hEntity.ApplyAbsVelocityImpulse(vecVel);
		}
	}
}

/** Get an angle between entities
* Signature: float GetAngleBetweenEntities(handle entity, handle target)
*/

function GetAngleBetweenEntities(hEntity = null, hTarget = null, vecCorrection = Vector(), bMethod2D = false)
{
	if (!hEntity || !hTarget)
	{
		printl("[GetAngleBetweenEntities] Entity doesn't exist");
		return;
	}

	local vecPos = hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin();
	local _vecPos = hTarget.IsPlayer() ? hTarget.EyePosition() : hTarget.GetOrigin();

	if (bMethod2D)
	{
		vecPos.z = 0.0;
		_vecPos.z = 0.0;
	}

	return acos(((hEntity.IsPlayer() ? hEntity.EyeAngles() : hEntity.GetAngles()).Forward()).Dot(((_vecPos - vecPos) + vecCorrection).Normalize())) * Math.Rad2Deg;
}

/** Emit a sound
* Signature: void EmitSound(string soundFile)
*/

function EmitSound(vecPos, sSound, iRadius = 3000.0)
{
	local hEntity = SpawnEntityFromTable("ambient_generic", {
		origin = vecPos
		message = sSound
		radius = iRadius
		spawnflags = 48
		health = 100
	});

	AcceptEntityInput(hEntity, "PlaySound");
	AcceptEntityInput(hEntity, "Kill");
}

/** Emit a sound to all players
* Signature: void EmitSoundToAll(string soundScript)
*/

function EmitSoundToAll(sSound)
{
	local hPlayer;

	while (hPlayer = Entities.FindByClassname(hPlayer, "player"))
		EmitSoundOnClient(sSound, hPlayer);
}

/** Checks if an entity is alive
* Signature: bool IsEntityAlive(handle entity)
*/

function IsEntityAlive(hEntity)
{
	return NetProps.GetPropInt(hEntity, "m_lifeState") == 0;
}

/** Attach an entity
* Signature: void AttachEntity(handle entity, handle target, string attachment, float delay)
*/

function AttachEntity(hEntity, hEntityToAttach, sAttachment = null, flDelay = 0.0)
{
	AcceptEntityInput(hEntityToAttach, "SetParent", "!activator", flDelay, hEntity);
	if (sAttachment != null) AcceptEntityInput(hEntityToAttach, "SetParentAttachment", sAttachment, flDelay, hEntity);
}

/** Remove an attachment
* Signature: void RemoveAttachment(handle entity, handle target, float delay)
*/

function RemoveAttachment(hEntity, hEntityToUnattach, flDelay = 0.0)
{
	AcceptEntityInput(hEntityToUnattach, "ClearParent", "", flDelay, hEntity);
}

/** Get distance between two entities
* Signature: float GetDistance(handle entity, handle target, bool bSquared, bool bMethod2D)
*/

function GetDistanceToEntity(hEntity, hTarget, bSquared = false, bMethod2D = false)
{
	local flDistance;

	if (bSquared)
		flDistance = bMethod2D ? (hEntity.GetOrigin() - hTarget.GetOrigin()).Length2DSqr() : (hEntity.GetOrigin() - hTarget.GetOrigin()).LengthSqr();
	else
		flDistance = bMethod2D ? (hEntity.GetOrigin() - hTarget.GetOrigin()).Length2D() : (hEntity.GetOrigin() - hTarget.GetOrigin()).Length();

	return flDistance;
}

/** Ignite an entity
* Signature: void Ignite(handle entity, handle attacker, float interval)
*/

function Ignite(hEntity, hAttacker = null, flInterval = 5.0)
{
	if (hEntity.IsPlayer() || hEntity.GetClassname() == "witch")
		hEntity.TakeDamage(0.01, DMG_BURN, !hAttacker ? hEntity : hAttacker);
	else
		AcceptEntityInput(hEntity, "IgniteLifeTime", flInterval.tostring());
	
	if (hEntity.IsPlayer() && !hEntity.IsSurvivor())
	{
		SetScriptScopeVar(hEntity, "extinguish_time", Time() + flInterval);
		CreateTimer(flInterval, function(hPlayer){
			if (hPlayer.IsValid() && hPlayer.IsOnFire() & GetScriptScopeVar(hPlayer, "extinguish_time") <= Time())
				hPlayer.Extinguish();
		}, hEntity);
	}
}

/** Set entity angles by steps. Returns unique identifier for all timers in case you want to abort the function.
* Signature: int SetAnglesBySteps(handle entity, QAngle angles, int steps, bool sphericalLerp, bool smoothLerp, float interval)
*/

function SetAnglesBySteps(hEntity, vecAngles, iSteps, bSlerp = true, bSpline = false, flInterval = DEFAULT_INTERVAL_PER_TICK)
{
	Assert(iSteps > 0);

	local vecAnglesStart = hEntity.IsPlayer() ? hEntity.EyeAngles() : hEntity.GetAngles();

	if (!GetScriptScopeVar(hEntity, "__changing_angles") && !OrientationsEqual(vecAngles, vecAnglesStart))
	{
		local vecResult;
		local nID = g_iUniqueIDs;

		local t = 0.0;
		local dt = 1.0 / iSteps;
		local flTime = 0.0;

		SetScriptScopeVar(hEntity, "__changing_angles", true);

		if (hEntity.IsPlayer())
		{
			for (local i = 0; i < iSteps; ++i)
			{
				t += dt;
				flTime += flInterval;

				// if (bSlerp)
				// 	vecResult = VectorToQAngle(VectorSlerp(vecAnglesStart.Forward(), vecAngles.Forward(), bSpline ? Math.SimpleSpline(t) : t));
				// else
					vecResult = AnglesLerp(vecAnglesStart, vecAngles, bSpline ? Math.SimpleSpline(t) : t);

				local timer = CreateTimer(flTime, ::__SetAnglesBySteps_TimerHandler, hEntity, vecResult);

				--g_iUniqueIDs;
				timer.m_iIdentifier = nID;
			}
		}
		else
		{
			for (local i = 0; i < iSteps; ++i)
			{
				t += dt;
				flTime += flInterval;

				local timer = CreateTimer(flTime, ::__SetAnglesBySteps_TimerHandler, hEntity, OrientationLerp(vecAnglesStart, vecAngles, t, bSlerp, true));

				--g_iUniqueIDs;
				timer.m_iIdentifier = nID;
			}
		}

		local timer = CreateTimer(flTime, function(hEntity){
			if (hEntity.IsValid())
			{
				SetScriptScopeVar(hEntity, "__changing_angles", false);

				foreach (func in ::g_Hooks.OnSetEntityAnglesCompleted)
				{
					try
					{
						func(hEntity);
					}
					catch (exception)
					{
						errorl("[Hooks Watchdog] " + exception);
						errorl("[Hooks Watchdog] An error has occurred in a callback function");
					}
				}
			}
		}, hEntity);

		--g_iUniqueIDs;
		timer.m_iIdentifier = nID;

		return nID;
	}

	return null;
}

function __SetAnglesBySteps_TimerHandler(hEntity, vecAngles)
{
	if (hEntity.IsValid())
	{
		if (hEntity.IsPlayer())
			TP(hEntity, null, vecAngles, null);
		else
			hEntity.SetAngles(vecAngles);
	}
}

/** Set an entity angles to another entity
* Signature: void SetAnglesToEntity(handle entity, handle target, Vector vecCorrection, bool bUseBodyPosition, float bodyPositionPercent)
*/

function SetAnglesToEntity(hEntity, hTarget, vecCorrection = Vector(), bUseBodyPosition = false, flBodyPositionPercent = 0.5)
{
	local vecDir = vecCorrection;

	if (hTarget.IsPlayer())
		vecDir += (bUseBodyPosition ? hTarget.GetBodyPosition(flBodyPositionPercent) : hTarget.EyePosition()) - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
	else
		vecDir += hTarget.GetOrigin() - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());

	TP(hEntity, null, vecDir, null, true);
}

/** Get an entity angles to another entity
* Signature: QAngle GetAnglesToEntity(handle entity, handle target, Vector vecCorrection, bool bUseBodyPosition, float bodyPositionPercent)
*/

function GetAnglesToEntity(hEntity, hTarget, vecCorrection = Vector(), bUseBodyPosition = false, flBodyPositionPercent = 0.5)
{
	local vecDir = vecCorrection;

	if (hTarget.IsPlayer())
		vecDir += (bUseBodyPosition ? hTarget.GetBodyPosition(flBodyPositionPercent) : hTarget.EyePosition()) - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
	else
		vecDir += hTarget.GetOrigin() - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());

	return VectorToQAngle(vecDir);
}

/** Create an invisible wall
* Signature: handle CreateInvisibleWall(string targetname, Vector origin, Vector maxs, Vector mins, int type, bool bEnable)
*/

function CreateInvisibleWall(sName, vecPos, vecMaxs = Vector(64, 64, 128), vecMins = Vector(-64, -64, 0), iType = PHYS_BLOCKER_EVERYONE, bEnable = true)
{
	local hEntity = SpawnEntityFromTable("env_physics_blocker", {
		origin = vecPos
		targetname = sName.tostring()
		initialstate = bEnable.tointeger()
		blocktype = iType
	});

	hEntity.__KeyValueFromVector("maxs", vecMaxs);
	hEntity.__KeyValueFromVector("mins", vecMins);

	hEntity.ValidateScriptScope();

	return hEntity;
}

/** Get the host player
* Signature: handle GetHostPlayer()
*/

function GetHostPlayer()
{
	local hPlayerManager;

	if (hPlayerManager = Entities.FindByClassname(null, "terror_player_manager"))
	{
		local idx = 1;

		while (idx < NetProps.GetPropArraySize(hPlayerManager, "m_listenServerHost"))
		{
			if (NetProps.GetPropIntArray(hPlayerManager, "m_listenServerHost", idx))
				return PlayerInstanceFromIndex(idx);

			++idx;
		}
	}
}

/** Send a command to a bot
* Signature: void SendCommandToBot(int command, handle bot, handle target, Vector position)
*/

function SendCommandToBot(iCommand = BOT_CMD_MOVE, hBot = null, hTarget = null, vecPos = null)
{
	local tCommands =
	{
		cmd = iCommand
		bot = hBot
	}

	if (hTarget != null) tCommands.rawset("target", hTarget);
	if (vecPos != null) tCommands.rawset("pos", vecPos);

	CommandABot(tCommands);
}

/** Send a client command to all
* Signature: void ClientCommandToAll(string command, float delay)
*/

function ClientCommandToAll(sCommand = "", flDelay = 0.0)
{
	AcceptEntityInput(g_hBroadcastClientCommand, "Command", sCommand.tostring(), flDelay.tofloat(), null);
	AcceptEntityInput(g_hBroadcastClientCommand, "Kill", "", flDelay.tofloat(), null);
}

/** Get position to ground
* Signature: Vector GetPositionToGround(handle entity)
*/

function GetPositionToGround(hEntity)
{
	local tTraceResult = {};

	DoTraceLine(tTraceResult, hEntity.GetOrigin(), hEntity.GetOrigin() + Vector(0, 0, -TRACE_MAX_DISTANCE), TRACE_MASK_SHOT, hEntity);

	return tTraceResult["pos"];
}

/** Get distance to ground
* Signature: float GetDistanceToGround(handle entity)
*/

function GetDistanceToGround(hEntity)
{
	local tTraceResult = {};

	DoTraceLine(tTraceResult, hEntity.GetOrigin(), hEntity.GetOrigin() + Vector(0, 0, -TRACE_MAX_DISTANCE), TRACE_MASK_SHOT, hEntity);

	return fabs(hEntity.GetOrigin().z - tTraceResult["pos"].z);
}

/** Get entity's script scope
* Signature: table GetScriptScope(handle entity)
*/

function GetScriptScope(hEntity)
{
	hEntity.ValidateScriptScope();
	return hEntity.GetScriptScope();
}

/** Get entity's script scope variable
* Signature: any GetScriptScopeVar(handle entity, string key)
*/

function GetScriptScopeVar(hEntity, key)
{
	hEntity.ValidateScriptScope();

	if (KeyInScriptScope(hEntity, key))
		return hEntity.GetScriptScope()[key];
}

/** Set entity's script scope variable
* Signature: void SetScriptScopeVar(handle entity, string key, any variable)
*/

function SetScriptScopeVar(hEntity, key, var)
{
	hEntity.ValidateScriptScope();
	hEntity.GetScriptScope()[key] <- var;
}

/** If a key in entity's script scope
* Signature: bool KeyInScriptScope(handle entity, string key)
*/

function KeyInScriptScope(hEntity, key)
{
	hEntity.ValidateScriptScope();

	if (key in hEntity.GetScriptScope())
		return true;

	return false;
}

/** Remove entity's script scope key
* Signature: void RemoveScriptScopeKey(handle entity, string key)
*/

function RemoveScriptScopeKey(hEntity, key)
{
	hEntity.ValidateScriptScope();

	if (KeyInScriptScope(hEntity, key))
		delete hEntity.GetScriptScope()[key];
}

/*===============================*\
 *    Extends Classes Methods    *
\*===============================*/

function ExtendClassMethods()
{
	if (!("CTerrorPlayer" in getroottable()))
		return;

	/** Send a client command
	* Signature: void CTerrorPlayer.ClientCommand(string command, float delay)
	*/

	function CTerrorPlayer::ClientCommand(sCommand = "", flDelay = 0.0)
	{
		AcceptEntityInput(g_hClientCommand, "Command", sCommand.tostring(), flDelay.tofloat(), this);
		AcceptEntityInput(g_hClientCommand, "Kill", "", flDelay.tofloat(), null);
	}

	/** Press a button
	* Signature: void CTerrorPlayer.SendInput(int button, float releasedelay)
	*/

	function CTerrorPlayer::SendInput(iButton, flReleaseDelay = 0.01)
	{
		if (KeyInScriptScope(this, format("is_bitmask_%d_forced", iButton)))
			if (GetScriptScopeVar(this, format("is_bitmask_%d_forced", iButton)))
				return;

		NetProps.SetPropInt(this, "m_afButtonForced", NetProps.GetPropInt(this, "m_afButtonForced") | iButton);
		SetScriptScopeVar(this, format("is_bitmask_%d_forced", iButton), true);

		CreateTimer(flReleaseDelay, function(hPlayer, iButton){
			if (hPlayer.IsValid())
			{
				NetProps.SetPropInt(hPlayer, "m_afButtonForced", NetProps.GetPropInt(hPlayer, "m_afButtonForced") & ~iButton)
				SetScriptScopeVar(hPlayer, format("is_bitmask_%d_forced", iButton), false);
			}
		}, this, iButton);
	}

	/** Is player a host
	* Signature: bool CTerrorPlayer.IsHost()
	*/

	function CTerrorPlayer::IsHost()
	{
		local hGameRules, hPlayerManager;

		if ((hGameRules = Entities.FindByClassname(null, "terror_gamerules")) && (hPlayerManager = Entities.FindByClassname(null, "terror_player_manager")))
			return NetProps.GetPropIntArray(hPlayerManager, "m_listenServerHost", this.GetEntityIndex()) && !NetProps.GetPropInt(hGameRules, "m_bIsDedicatedServer");

		return false;
	}

	/** Is a player stuck
	* Signature: bool CTerrorPlayer.IsStuck()
	*/

	function CTerrorPlayer::IsStuck()
	{
		return NetProps.GetPropInt(this, "m_StuckLast") > 0;
	}

	/** Is a player alive
	* Signature: bool CTerrorPlayer.IsAlive()
	*/

	function CTerrorPlayer::IsAlive()
	{
		return NetProps.GetPropInt(this, "m_lifeState") == 0;
	}

	/** Kill a player
	* Signature: void CTerrorPlayer.KillPlayer(handle attacker, int damageType)
	*/

	function CTerrorPlayer::KillPlayer(hAttacker = null, iDamageType = DMG_GENERIC)
	{
		if (this.IsSurvivor())
			this.SetReviveCount(2);

		this.SetHealth(1);
		this.TakeDamage(10.0, DMG_GENERIC, !hAttacker ? this : hAttacker);
	}

	/** Hide the player's HUD
	* Signature: void CTerrorPlayer.HideHUD(int bitmask)
	*/

	function CTerrorPlayer::HideHUD(bitmask)
	{
		NetProps.SetPropInt(this, "m_Local.m_iHideHUD", bitmask);
	}

	/** Returns a vector between player's eye position and foot position
	* Signature: Vector CTerrorPlayer.GetBodyPosition(float distanceFactor)
	*/

	function CTerrorPlayer::GetBodyPosition(flPercent = 0.5)
	{
		return VectorLerp(this.GetOrigin(), this.EyePosition(), flPercent);
	}

	/** Is a player attacked by a special infected
	* Signature: bool CTerrorPlayer.IsAttackedBySI()
	*/

	function CTerrorPlayer::IsAttackedBySI()
	{
		if (this.IsSurvivor())
		{
			return NetProps.GetPropEntity(this, "m_pounceAttacker") ||
				   NetProps.GetPropEntity(this, "m_jockeyAttacker") ||
				   NetProps.GetPropEntity(this, "m_pummelAttacker") ||
				   NetProps.GetPropEntity(this, "m_carryAttacker") ||
				   NetProps.GetPropEntity(this, "m_tongueOwner");
		}

		printl("[IsAttackedBySI] Player is not a survivor");
	}

	/** Get a SI attacked a player
	* Signature: handle CTerrorPlayer.GetSIAttacker()
	*/

	function CTerrorPlayer::GetSIAttacker()
	{
		if (this.IsSurvivor())
		{
			if (NetProps.GetPropEntity(this, "m_pounceAttacker")) return NetProps.GetPropEntity(this, "m_pounceAttacker");
			else if (NetProps.GetPropEntity(this, "m_jockeyAttacker")) return NetProps.GetPropEntity(this, "m_jockeyAttacker");
			else if (NetProps.GetPropEntity(this, "m_pummelAttacker")) return NetProps.GetPropEntity(this, "m_pummelAttacker");
			else if (NetProps.GetPropEntity(this, "m_carryAttacker")) return NetProps.GetPropEntity(this, "m_carryAttacker");
			else if (NetProps.GetPropEntity(this, "m_tongueOwner")) return NetProps.GetPropEntity(this, "m_tongueOwner");
		}
		else
		{
			printl("[IsAttackedBySI] Player is not a survivor");
		}
	}

	/** Get a SI's victim
	* Signature: handle CTerrorPlayer.GetSIVictim()
	*/

	function CTerrorPlayer::GetSIVictim()
	{
		if (!this.IsSurvivor())
		{
			if (NetProps.GetPropEntity(this, "m_pounceVictim")) return NetProps.GetPropEntity(this, "m_pounceVictim");
			else if (NetProps.GetPropEntity(this, "m_jockeyVictim")) return NetProps.GetPropEntity(this, "m_jockeyVictim");
			else if (NetProps.GetPropEntity(this, "m_pummelVictim")) return NetProps.GetPropEntity(this, "m_pummelVictim");
			else if (NetProps.GetPropEntity(this, "m_carryVictim")) return NetProps.GetPropEntity(this, "m_carryVictim");
			else if (NetProps.GetPropEntity(this, "m_tongueVictim")) return NetProps.GetPropEntity(this, "m_tongueVictim");
		}
		else
		{
			printl("[IsAttackedBySI] Player is not an infected");
		}
	}

	/** Is a player a special infected
	* Signature: bool CTerrorPlayer.IsSpecialInfected()
	*/

	function CTerrorPlayer::IsSpecialInfected()
	{
		if (NetProps.GetPropInt(this, "m_iTeamNum") == 3)
		{
			switch (this.GetZombieType())
			{
			case ZOMBIE_SMOKER:
			case ZOMBIE_BOOMER:
			case ZOMBIE_HUNTER:
			case ZOMBIE_SPITTER:
			case ZOMBIE_JOCKEY:
			case ZOMBIE_CHARGER:
				return true;

			default:
				return false;
			}
		}
		else
		{
			printl("[IsSpecialInfected] Player is not an infected");
			return false;
		}
	}

	/** Set a player's ammo
	* Signature: void CTerrorPlayer.SetAmmo(int slot, int clips, int ammo, int upgradeammo)
	*/

	function CTerrorPlayer::SetAmmo(iSlot, iClip, iAmmo = null, iUpgradeAmmo = null)
	{
		local tInv = {};
		GetInvTable(this, tInv);

		if (iSlot == INVENTORY_WEAPON_PRIMARY)
		{
			if ("slot0" in tInv)
			{
				local hWeapon = tInv["slot0"];

				if (iClip != null)
					NetProps.SetPropInt(hWeapon, "m_iClip1", iClip);

				if (iAmmo != null)
				{
					NetProps.SetPropIntArray(this, "m_iAmmo", iAmmo, NetProps.GetPropInt(hWeapon, "m_iPrimaryAmmoType"));

					if (iUpgradeAmmo != null)
					{
						local iUpgradeType = NetProps.GetPropInt(hWeapon, "m_upgradeBitVec");

						if (iUpgradeType & UPGRADE_INCENDIARY || iUpgradeType & UPGRADE_EXPLOSIVE)
							NetProps.SetPropInt(hWeapon, "m_nUpgradedPrimaryAmmoLoaded", iUpgradeAmmo);
						else
							printl("[SetAmmo] No upgrade ammo found");
					}
				}
			}
			else
			{
				printl("[SetAmmo] Invalid weapon");
			}
		}
		else if (iSlot == INVENTORY_WEAPON_SECONDARY)
		{
			if ("slot1" in tInv || tInv["slot1"].GetClassname() != "weapon_melee")
				NetProps.SetPropInt(tInv["slot1"], "m_iClip1", iClip);
			else
				printl("[SetAmmo] Invalid weapon");
		}
		else
		{
			printl("[SetAmmo] Wrong inventory slot");
		}
	}

	/** Wrapper for TraceLine function
	* Signature: void CTerrorPlayer.DoTraceLine(table result, float traceDistance, int masktype, bool getPlaneNormal)
	*/

	function CTerrorPlayer::DoTraceLine(tTraceResult, flTraceDistance = TRACE_MAX_DISTANCE, iMask = TRACE_MASK_SHOT, bPlaneNormal = false)
	{
		Assert( typeof tTraceResult == "table", "tTraceResult must be passed as empty table", true );

		local traceDirection = this.EyeAngles();
		local vecDir = traceDirection.Forward();

		local vecStart = this.EyePosition();
		local vecEnd = vecStart + vecDir.Scale(flTraceDistance);

		local tTrace =
		{
			start = vecStart
			end = vecEnd
			ignore = this
			mask = iMask
		}

		TraceLine(tTrace);

		if (bPlaneNormal)
		{
			if (traceDirection == null)
				traceDirection = (vecEnd - vecStart).VectorToQAngle();
			
			local vecPointA, vecPointB;

			local vecStartShifted = vecStart + traceDirection.Left().Scale(-0.01);

			local tPlaneTrace =
			{
				start = vecStartShifted
				end = vecStartShifted + vecDir.Scale(TRACE_MAX_DISTANCE)
				ignore = this
				mask = iMask
			}

			TraceLine(tPlaneTrace); vecPointA = tPlaneTrace.pos;

			tPlaneTrace.start = vecStart + traceDirection.Up().Scale(-0.01);
			tPlaneTrace.end = tPlaneTrace.start + vecDir.Scale(TRACE_MAX_DISTANCE);

			TraceLine(tPlaneTrace); vecPointB = tPlaneTrace.pos;
			
			tTraceResult.planenormal <- ((vecPointA - tTrace.pos).Cross(vecPointB - tTrace.pos)).Normalize();
		}
		else
		{
			tTraceResult.planenormal <- Vector();
		}

		if (tTrace.hit && tTrace.enthit.GetEntityIndex() != 0)
			tTraceResult.enthit <- tTrace.enthit;
		else
			tTraceResult.enthit <- null;
		
		if ("startsolid" in tTrace)
			tTraceResult.startsolid <- tTrace.startsolid;
		else
			tTraceResult.startsolid <- false;
		
		tTraceResult.fraction <- tTrace.fraction;
		tTraceResult.hit <- tTrace.hit;
		tTraceResult.pos <- tTrace.pos;
	}

}

/*===============================*\
 *     ConVar Class Functions    *
\*===============================*/

/** Create a new console variable
* Signature: CConVar CreateConVar(string name, string defaultValue, string variableType, float minValue, float maxValue)
*/

function CreateConVar(sName, sDefaultValue, sType = null, flMinValue = null, flMaxValue = null)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == sName)
		{
			printf("[CreateConVar] ConVar '%s' already created", sName);
			return cvar;
		}
	}

	sDefaultValue = sDefaultValue.tostring();

	local cvar = CConVar(sName, sDefaultValue, sType, flMinValue, flMaxValue);
	local cvar_value = Convars.GetStr(sName);

	printf("[CreateConVar] ConVar '%s' with default value '%s' has been created", sName, sDefaultValue);

	g_aConVars.push(cvar);

	if (!cvar_value) SendToServerConsole(format("setinfo %s \"%s\"", sName, sDefaultValue));
	else if (sDefaultValue != cvar_value) cvar.m_sValue = cvar_value;

	return cvar;
}

/** Remove a console variable
* Signature: void RemoveConVar(ConVar cvar)
*/

function RemoveConVar(cvarToRemove)
{
	foreach (idx, cvar in g_aConVars)
	{
		if (cvarToRemove == cvar)
		{
			g_aConVars.remove(idx);
			printf("[RemoveConVar] ConVar '%s' has been removed", cvarToRemove.GetName());
			return;
		}
	}
}

/** Remove a console variable by given name
* Signature: void RemoveConVar(string name)
*/

function RemoveConVarByName(sName)
{
	foreach (idx, cvar in g_aConVars)
	{
		if (sName == cvar.GetName())
		{
			g_aConVars.remove(idx);
			printf("[RemoveConVarByName] ConVar '%s' has been removed", sCommand);
			return;
		}
	}

	printf("[RemoveConVarByName] ConVar '%s' is not created", sCommand);
}

/** Find a ConVar
* Signature: CConVar FindConVar(string name)
*/

function FindConVar(sName)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == sName)
			return cvar;
	}
}

/** Get a ConVar string
* Signature: string GetConVarBool(ConVar cvar)
*/

function GetConVarString(convar)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == convar.GetName())
		{
			return cvar.GetValue();
		}
	}
}
/** Get a ConVar bool
* Signature: bool GetConVarBool(ConVar cvar)
*/

function GetConVarBool(convar)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == convar.GetName())
		{
			return cvar.GetValue() != "0" && cvar.GetValue() != "false";
		}
	}
}

/** Get a ConVar integer
* Signature: int GetConVarBool(ConVar cvar)
*/

function GetConVarInt(convar)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == convar.GetName())
		{
			local value, min, max;

			if (!(value = cvar.GetValue(true)))
				return 0;

			value = value.tointeger();

			if (cvar.m_sType == "integer")
			{
				if (cvar.m_flMinValue != null && cvar.m_flMaxValue != null)
				{
					if (value < (min = cvar.m_flMinValue.tointeger()))
						return min;
						
					if (value > (max = cvar.m_flMaxValue.tointeger()))
						return max;
				}
				else if (cvar.m_flMinValue != null && cvar.m_flMaxValue == null)
				{
					if (value < (min = cvar.m_flMinValue.tointeger()))
						return min;
				}
				else if (cvar.m_flMinValue == null && cvar.m_flMaxValue != null)
				{
					if (value > (max = cvar.m_flMaxValue.tointeger()))
						return max;
				}
			}

			return value;
		}
	}
}

/** Get a ConVar float
* Signature: float GetConVarBool(ConVar cvar)
*/

function GetConVarFloat(convar)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == convar.GetName())
		{
			local value = cvar.GetValue(true);

			if (!value)
				return 0.0;

			value = value.tofloat();
			
			if (cvar.m_sType == "float")
			{
				if (cvar.m_flMinValue != null && cvar.m_flMaxValue != null)
				{
					if (value < cvar.m_flMinValue)
						return cvar.m_flMinValue;

					if (value > cvar.m_flMaxValue)
						return cvar.m_flMaxValue;
				}
				else if (cvar.m_flMinValue != null && cvar.m_flMaxValue == null)
				{
					if (value < cvar.m_flMinValue)
						return cvar.m_flMinValue;
				}
				else if (cvar.m_flMinValue == null && cvar.m_flMaxValue != null)
				{
					if (value > cvar.m_flMaxValue)
						return cvar.m_flMaxValue;
				}
			}
			
			return value;
		}
	}
}

/*===============================*\
 *        Hook Functions         *
\*===============================*/

/* Game event hook */

/** Hook game event
* Signature: void HookEvent(string event, function callFunction, table scope)
*/

function HookEvent(sEvent = null, func = null, tScope = null)
{
	if (typeof sEvent != "string" || !(typeof func == "function" || typeof func == "native function"))
	{
		printl("[HookEvent] Wrong type of variable");
		return;
	}

	if (!(sEvent in g_CallBackEvents))
	{
		g_CallBackEvents[sEvent] <- {};
		g_CallBackEvents[sEvent]["CallBack_Functions"] <- [];

		g_CallBackEvents[sEvent]["OnGameEvent_" + sEvent] <- function(tParams)
		{
			foreach (__func in g_CallBackEvents[sEvent]["CallBack_Functions"])
			{
				if ("userid" in tParams) tParams["_player"] <- GetPlayerFromUserID(tParams.userid);
				if ("victim" in tParams) tParams["_victim"] <- GetPlayerFromUserID(tParams.victim);
				if ("entityid" in tParams) tParams["_entity"] <- EntIndexToHScript(tParams.entityid);
				if ("subject" in tParams) tParams["_subject"] <- GetPlayerFromUserID(tParams.subject);
				if ("attacker" in tParams) tParams["_attacker"] <- GetPlayerFromUserID(tParams.attacker);

				__func(tParams);
			}
		}
	}

	if (func != null)
	{
		local sFunction;

		foreach (key, val in (tScope != null ? tScope : getroottable()))
		{
			if (val == func)
			{
				sFunction = key;
				break;
			}
		}

		if (!sFunction)
		{
			printl("[HookEvent] The specified function was not found in the certain scope");
			return;
		}

		foreach (func in g_CallBackEvents[sEvent]["CallBack_Functions"])
		{
			if (func == sFunction)
			{
				printf("[HookEvent] Event hook function '%s' already registered", sFunction);
				return;
			}
		}

		printf("[HookEvent] Event hook function '%s' has been registered for the game event '%s'", sFunction, sEvent);
		g_CallBackEvents[sEvent]["CallBack_Functions"].push(func);
	}
	else
	{
		printl("[HookEvent] Invalid function specified");
		return;
	}

	__CollectEventCallbacks(g_CallBackEvents[sEvent], "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
}

/** Unhook game event or function
* Signature: void UnhookEvent(string event, function callFunction, table scope)
*/

function UnhookEvent(sEvent = null, func = null, tScope = null)
{
	if (typeof sEvent != "string")
	{
		printl("[UnhookEvent] Wrong type of variable");
		return;
	}

	if (sEvent in g_CallBackEvents)
	{
		if (func != null)
		{
			if (typeof func == "function" || typeof func == "native function")
			{
				local sFunction;

				foreach (key, val in (tScope != null ? tScope : getroottable()))
				{
					if (val == func)
					{
						sFunction = key;
						break;
					}
				}

				if (!sFunction)
				{
					printl("[UnhookEvent] The specified function was not found in the certain scope");
					return;
				}

				foreach (idx, __func in g_CallBackEvents[sEvent]["CallBack_Functions"])
				{
					if (__func == func)
					{
						printf("[UnhookEvent] Function '%s' has been unhooked for the game event '%s'", sFunction, sEvent);
						g_CallBackEvents[sEvent]["CallBack_Functions"].remove(idx);
						return;
					}
				}

				printf("[UnhookEvent] Hook function '%s' is not registered", sFunction);
				return;
			}

			printl("[UnhookEvent] Wrong type of variable");
			return;
		}
		else
		{
			printf("[UnhookEvent] Game event '%s' has been unhooked", sEvent);
			delete g_CallBackEvents[sEvent];
			return;
		}
	}

	printf("[UnhookEvent] Event '%s' is not registered", sEvent); 
}

/** Unhook all game events
* Signature: void UnhookAllEvents()
*/

function UnhookAllEvents()
{
	foreach (event, val in g_CallBackEvents)
		delete g_CallBackEvents[event];
	
	printl("[UnhookAllEvents] All events have been unhooked");
}

/* Registration of functions called after a certain interval */

/** Register loop function
* Signature: CLoopFunction RegisterLoopFunction(string callFunction, float refireTime, any args)
*/

function RegisterLoopFunction(sFunction, flRefireTime, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[RegisterLoopFunction] Wrong type of variable");
		return;
	}

	if (!IsFunctionExist(sFunction))
	{
		printf("[RegisterLoopFunction] Function '%s' doesn't exist", sFunction);
		return;
	}

	foreach (func in g_aLoopFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			local aVars = clone func.GetArguments();
			aVars.remove(0);
			printf("[RegisterLoopFunction] Function '%s' already registered", sFunction);
			return;
		}
	}

	local sName = LOOPFUNC_PREFIX + sFunction.tolower();
	local hTimer = Entities.FindByName(null, sName);

	if (!hTimer)
	{
		local __loop_func = CLoopFunction(sFunction, flRefireTime, vargv);
		hTimer = SpawnEntityFromTable("logic_script", {targetname = sName});

		SetScriptScopeVar(hTimer, "__loop_params", {
			__func = sFunction
			__with_args = vargv.len() > 0
			__args = __loop_func.GetArguments()
		});

		SetScriptScopeVar(hTimer, "Think", function(){
			if (this["__loop_params"].__with_args)
			{
				CreateTimer(flRefireTime, function(sFunction, aInputArgs){
					if (IsFunctionExist(sFunction))
						compilestring("return " + sFunction)().acall(aInputArgs);
				}, this["__loop_params"].__func, this["__loop_params"].__args);
			}
			else 
			{
				CallScriptFunction(sFunction, flRefireTime, self, self);
			}

			CallScriptFunction("Think", flRefireTime, self, self);
		});

		if (vargv.len() > 0)
		{
			CreateTimer(0.01, function(sFunction, aInputArgs){
				compilestring("return " + sFunction)().acall(aInputArgs);
			}, sFunction, __loop_func.GetArguments());
		}
		else
		{
			CallScriptFunction(sFunction, 0.01, hTimer, hTimer);
		}
		
		CallScriptFunction("Think", 0.01, hTimer, hTimer);
		
		if (vargv.len() > 0)
		{
			local sVars = "";
			foreach (idx, var in vargv)
			{
				if (vargv.len() - 1 == idx) sVars += var;
				else sVars += var + ", ";
			}
			printf("[RegisterLoopFunction] Function '%s' with refire time '%.02f' and input variables: '%s' has been registered", sFunction, flRefireTime, sVars);
		}
		else
		{
			printf("[RegisterLoopFunction] Function '%s' with refire time '%.02f' has been registered", sFunction, flRefireTime);
		}

		g_aLoopFunctions.push(__loop_func);
	}
	else
	{
		hTimer.Kill();

		if (vargv.len() > 0)
		{
			local aVars = [this, sFunction, flRefireTime];
			aVars.extend(vargv);
			RegisterLoopFunction.acall(aVars);
			return;
		}

		RegisterLoopFunction(sFunction, flRefireTime);
	}
}

/** Remove loop function
* Signature: void RemoveLoopFunction(string callFunction, any args)
*/

function RemoveLoopFunction(sFunction, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[RemoveLoopFunction] Wrong type of variable");
		return;
	}

	if (!IsFunctionExist(sFunction))
	{
		printf("[RemoveLoopFunction] Function '%s' doesn't exist", sFunction);
		return;
	}

	foreach (idx, func in g_aLoopFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			if (vargv.len() > 0)
			{
				local aVars = clone func.GetArguments();
				aVars.remove(0);

				if (IsArraysEqual(aVars, vargv))
				{
					local sVars = "";
					local hTimer = Entities.FindByName(null, func.GetTimerName());

					if (hTimer) hTimer.Kill();

					foreach (idx, var in vargv)
					{
						if (vargv.len() - 1 == idx) sVars += var;
						else sVars += var + ", ";
					}

					printf("[RemoveLoopFunction] Function '%s' with input variables: '%s' has been removed", sFunction, sVars);
					g_aLoopFunctions.remove(idx);
					return;
				}
			}
			else
			{
				local hTimer = Entities.FindByName(null, func.GetTimerName());

				if (hTimer) hTimer.Kill();

				printf("[RemoveLoopFunction] Function '%s' has been removed", sFunction);
				g_aLoopFunctions.remove(idx);
				return;
			}
		}
	}
	
	if (vargv.len() > 0)
	{
		local sVars = "";

		foreach (idx, var in vargv)
		{
			if (vargv.len() - 1 == idx) sVars += var;
			else sVars += var + ", ";
		}

		printf("[RemoveLoopFunction] Function '%s' with input variables: '%s' is not registered", sFunction, sVars);
	}
	else
	{
		printf("[RemoveLoopFunction] Function '%s' is not registered", sFunction);
	}
}

/** Is loop function registered
* Signature: bool IsLoopFunctionRegistered(string callFunction, any args)
*/

function IsLoopFunctionRegistered(sFunction, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[IsLoopFunctionRegistered] Wrong type of variable");
		return;
	}

	if (!IsFunctionExist(sFunction))
	{
		printf("[IsLoopFunctionRegistered] Function '%s' doesn't exist", sFunction);
		return;
	}

	foreach (idx, func in g_aLoopFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			local aVars = clone func.GetArguments();
			aVars.remove(0);

			if (IsArraysEqual(aVars, vargv))
				return true;
		}
	}

	return false;
}

/* Registration of functions called every tick */

/** Register on tick function
* Signature: COnTickFunction RegisterOnTickFunction(string callFunction, args)
*/

function RegisterOnTickFunction(sFunction, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[RegisterOnTickFunction] Wrong type of variable");
		return;
	}

	if (!IsFunctionExist(sFunction))
	{
		printl("[RegisterOnTickFunction] The specified function doesn't exist");
		return;
	}

	foreach (func in g_aOnTickFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			local aVars = clone func.GetArguments();
			aVars.remove(0);

			if (IsArraysEqual(aVars, vargv))
			{
				printf("[RegisterOnTickFunction] Function '%s' already registered", sFunction);
				return;
			}
		}
	}

	if (vargv.len() > 0)
	{
		local sVars = "";

		foreach (idx, var in vargv)
		{
			if (vargv.len() - 1 == idx) sVars += var;
			else sVars += var + ", ";
		}

		printf("[RegisterOnTickFunction] Function '%s' with input variables: '%s' has been registered", sFunction, sVars);
	}
	else
	{
		printf("[RegisterOnTickFunction] Function '%s' has been registered", sFunction);
	}

	g_aOnTickFunctions.push(COnTickFunction(sFunction, vargv));
}

/** Remove on tick function
* Signature: void RemoveOnTickFunction(string callFunction, args)
*/

function RemoveOnTickFunction(sFunction, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[RemoveOnTickFunction] Wrong type of variable");
		return;
	}

	if (!IsFunctionExist(sFunction))
	{
		printl("[RemoveOnTickFunction] The specified function doesn't exist");
		return;
	}

	foreach (idx, func in g_aOnTickFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			if (vargv.len() > 0)
			{
				local aVars = clone func.GetArguments();
				aVars.remove(0);

				if (IsArraysEqual(aVars, vargv))
				{
					local sVars = "";

					foreach (idx, var in vargv)
					{
						if (vargv.len() - 1 == idx) sVars += var;
						else sVars += var + ", ";
					}

					printf("[RemoveOnTickFunction] Function '%s' with input variables: '%s' has been removed", sFunction, sVars);
					g_aOnTickFunctions.remove(idx);
					return
				}
			}
			else
			{
				printf("[RemoveOnTickFunction] Function '%s' has been removed", sFunction);
				g_aOnTickFunctions.remove(idx);
				return
			}
		}
	}

	if (vargv.len() > 0)
	{
		local sVars = "";

		foreach (idx, var in vargv)
		{
			if (vargv.len() - 1 == idx) sVars += var;
			else sVars += var + ", ";
		}

		printf("[RemoveOnTickFunction] Function '%s' with input variables: '%s' is not registered", sFunction, sVars);
	}
	else
	{
		printf("[RemoveOnTickFunction] Function '%s' is not registered", sFunction);
	}
}

/** Is on tick function registered
* Signature: bool IsOnTickFunctionRegistered(string callFunction, args)
*/

function IsOnTickFunctionRegistered(sFunction, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[IsOnTickFunctionRegistered] Wrong type of variable");
		return;
	}

	if (!IsFunctionExist(sFunction))
	{
		printl("[IsOnTickFunctionRegistered] The specified function doesn't exist");
		return;
	}

	foreach (idx, func in g_aOnTickFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			local aVars = clone func.GetArguments();
			aVars.remove(0);

			if (IsArraysEqual(aVars, vargv))
				return true;
		}
	}

	return false;
}

/* Listen a given button */

/** Register callback function for a specified button
* Signature: CButtonListener RegisterButtonListener(int button, string callFunction, int presstype, int team)
*/

function RegisterButtonListener(iButton, sFunction, iType = BUTTON_STATE_PRESSED, iTeam = TEAM_EVERYONE)
{
	if (typeof iButton == "integer" && typeof sFunction == "string" && typeof iTeam == "integer" && typeof iType == "integer")
	{
		Assert( iType >= BUTTON_STATE_PRESSED && iType <= BUTTON_STATE_HOLD, "Invalid button type", true );
		Assert( iTeam >= TEAM_SURVIVOR && iTeam <= TEAM_EVERYONE, "Invalid team", true );

		foreach (button in g_aButtonsListener)
		{
			if (button.GetButton() == iButton && button.GetFunctionName() == sFunction)
			{
				printf("[RegisterButtonListener] Button '%d' with callback function '%s' already registered", iButton, sFunction);
				return;
			}
		}

		local __buttonlistener = CButtonListener(iButton, sFunction, iType, iTeam);

		printf("[RegisterButtonListener] Button '%d' with callback function '%s' has been registered", iButton, sFunction);
		g_aButtonsListener.push(__buttonlistener);

		return __buttonlistener;
	}
	else
	{
		printl("[RegisterButtonListener] Wrong type of variable");
	}
}

/** Remove registered button or bound callback function
* Signature: void RemoveButtonListener(int button, string callFunction)
*/

function RemoveButtonListener(iButton, sFunction = null)
{
	if (typeof iButton != "integer")
	{
		printl("[RemoveButtonListener] Wrong type of variable");
		return;
	}

	local bFound = false;

	if (sFunction == null)
	{
		for (local i = 0; i < g_aButtonsListener.len(); ++i)
		{
			if (g_aButtonsListener[i].GetButton() == iButton)
			{
				bFound = true;

				g_aButtonsListener.remove(i);
				--i;
			}
		}
	}
	else
	{
		foreach (idx, button in g_aButtonsListener)
		{
			if (button.GetButton() == iButton && button.GetFunctionName() == sFunction)
			{
				printf("[RemoveButtonListener] Callback function '%s' for button '%d' has been removed", sFunction, iButton);
				g_aButtonsListener.remove(idx);
				return;
			}
		}
	}

	if (bFound)
		printf("[RemoveButtonListener] Button '%d' has been removed", iButton);
	else
		printf("[RemoveButtonListener] Button '%d' is not registered", iButton);
}

/* Registration of custom chat commands */

/** Register chat command
* Signature: CChatCommand RegisterChatCommand(string command, function callFunction, bool bProcessCaller, bool bProcessArguments)
*/

function RegisterChatCommand(sCommand, func, bProcessCaller = true, bProcessArguments = false)
{
	if (typeof sCommand == "string" && typeof func == "function" && typeof bProcessCaller == "bool" && typeof bProcessArguments == "bool")
	{
		sCommand = sCommand.tolower();

		if (sCommand in g_ChatCommands)
		{
			printf("[RegisterChatCommand] Chat command '%s' already registered", sCommand);
		}
		else
		{
			local __chatcmd = CChatCommand(sCommand, func, bProcessCaller, bProcessArguments);

			g_ChatCommands[sCommand] <- __chatcmd;
			printf("[RegisterChatCommand] Chat command '%s' has been registered", sCommand);

			return __chatcmd;
		}
	}
	else
	{
		printl("[RegisterChatCommand] Wrong type of variable");
	}
}

/** Remove chat command
* Signature: void RemoveChatCommand(string command)
*/

function RemoveChatCommand(sCommand = null)
{
	if (typeof sCommand != "string")
	{
		printl("[RemoveChatCommand] Wrong type of variable");
	}
	else
	{
		sCommand = sCommand.tolower();

		if (sCommand in g_ChatCommands)
		{
			printf("[RemoveChatCommand] Chat command '%s' has been removed", sCommand);
			delete g_ChatCommands[sCommand];
		}
		else
		{
			printf("[RemoveChatCommand] Chat command '%s' is not registered", sCommand);
		}
	}
}

/* Registration of custom console commands */

/** Register user command
* Signature: CUserCommand RegisterUserCommand(string command, function callFunction, bool bProcessArguments, bool bProcessCaller)
*/

function RegisterUserCommand(sCommand, func, bProcessCaller = true, bProcessArguments = false)
{
	if (typeof sCommand == "string" && typeof func == "function" && typeof bProcessArguments == "bool" && typeof bProcessCaller == "bool")
	{
		sCommand = sCommand.tolower();

		if (sCommand in g_UserCommands)
		{
			printf("[RegisterUserCommand] User command '%s' already registered", sCommand);
		}
		else
		{
			local __usercmd = CUserCommand(sCommand, func, bProcessCaller, bProcessArguments);

			g_UserCommands[sCommand] <- __usercmd;
			printf("[RegisterUserCommand] User command '%s' has been registered", sCommand);

			return __usercmd;
		}
	}
	else
	{
		printl("[RegisterUserCommand] Wrong type of variable");
	}
}

/** Remove user command
* Signature: void RemoveUserCommand(string command)
*/

function RemoveUserCommand(sCommand = null)
{
	if (typeof sCommand != "string")
	{
		printl("[RemoveUserCommand] Wrong type of variable");
	}
	else
	{
		sCommand = sCommand.tolower();

		if (sCommand in g_UserCommands)
		{
			printf("[RemoveUserCommand] User command '%s' has been removed", sCommand);
			delete g_UserCommands[sCommand];
		}
		else
		{
			printf("[RemoveUserCommand] User command '%s' is not registered", sCommand);
		}
	}
}

/* Ready-made templates */

// Entities
FindEntityByClassname <- Entities.FindByClassname.bindenv(Entities);
FindEntityByClassnameNearest <- Entities.FindByClassnameNearest.bindenv(Entities);
FindEntityByClassnameWithin <- Entities.FindByClassnameWithin.bindenv(Entities);
FindEntityByModel <- Entities.FindByModel.bindenv(Entities);
FindEntityByName <- Entities.FindByName.bindenv(Entities);
FindEntityByNameNearest <- Entities.FindByNameNearest.bindenv(Entities);
FindEntityByNameWithin <- Entities.FindByNameWithin.bindenv(Entities);
FindEntityByTarget <- Entities.FindByTarget.bindenv(Entities);
FindEntityInSphere <- Entities.FindInSphere.bindenv(Entities);
FirstEntity <- Entities.First.bindenv(Entities);
NextEntity <- Entities.Next.bindenv(Entities);

// NetProps
GetNetPropArraySize <- NetProps.GetPropArraySize.bindenv(NetProps);
GetNetPropEntity <- NetProps.GetPropEntity.bindenv(NetProps);
GetNetPropEntityArray <- NetProps.GetPropEntityArray.bindenv(NetProps);
GetNetPropFloat <- NetProps.GetPropFloat.bindenv(NetProps);
GetNetPropFloatArray <- NetProps.GetPropFloatArray.bindenv(NetProps);
GetNetPropInt <- NetProps.GetPropInt.bindenv(NetProps);
GetNetPropIntArray <- NetProps.GetPropIntArray.bindenv(NetProps);
GetNetPropString <- NetProps.GetPropString.bindenv(NetProps);
GetNetPropStringArray <- NetProps.GetPropStringArray.bindenv(NetProps);
GetNetPropType <- NetProps.GetPropType.bindenv(NetProps);
GetNetPropVector <- NetProps.GetPropVector.bindenv(NetProps);
GetNetPropVectorArray <- NetProps.GetPropVectorArray.bindenv(NetProps);
HasNetProp <- NetProps.HasProp.bindenv(NetProps);
SetNetPropEntity <- NetProps.SetPropEntity.bindenv(NetProps);
SetNetPropEntityArray <- NetProps.SetPropEntityArray.bindenv(NetProps);
SetNetPropFloat <- NetProps.SetPropFloat.bindenv(NetProps);
SetNetPropFloatArray <- NetProps.SetPropFloatArray.bindenv(NetProps);
SetNetPropInt <- NetProps.SetPropInt.bindenv(NetProps);
SetNetPropIntArray <- NetProps.SetPropIntArray.bindenv(NetProps);
SetNetPropString <- NetProps.SetPropString.bindenv(NetProps);
SetNetPropStringArray <- NetProps.SetPropStringArray.bindenv(NetProps);
SetNetPropVector <- NetProps.SetPropVector.bindenv(NetProps);
SetNetPropVectorArray <- NetProps.SetPropVectorArray.bindenv(NetProps);

function LU_OnRoundStart(tParams)
{
	foreach (func in g_Hooks.OnRoundStart)
	{
		try
		{
			func();
		}
		catch (exception)
		{
			errorl("[LU_OnRoundStart->g_Hooks::OnRoundStart()] " + exception);
			errorl("[LU_OnRoundStart->g_Hooks::OnRoundStart()] An error has occurred in a callback function");
		}
	}
	
	foreach (scriptPlugin in g_aScriptPlugins)
	{
		try
		{
			scriptPlugin.Load();
		}
		catch (exception)
		{
			errorl("[LU_OnRoundStart->IScriptPlugin::Load()] " + exception);
			errorl("[LU_OnRoundStart->IScriptPlugin::Load()] An error has occurred in a callback function of a Script Plugin: " + scriptPlugin.GetScriptPluginName());
		}
	}

	CreateTimer(0.01, function(){
		foreach (func in ::g_Hooks.OnRoundStartPost)
		{
			try
			{
				func();
			}
			catch (exception)
			{
				errorl("[LU_OnRoundStart->g_Hooks::OnRoundStartPost()] " + exception);
				errorl("[LU_OnRoundStart->g_Hooks::OnRoundStartPost()] An error has occurred in a callback function");
			}
		}
		
		foreach (scriptPlugin in g_aScriptPlugins)
		{
			try
			{
				scriptPlugin.OnRoundStartPost();
			}
			catch (exception)
			{
				errorl("[LU_OnRoundStart->IScriptPlugin::OnRoundStartPost()] " + exception);
				errorl("[LU_OnRoundStart->IScriptPlugin::OnRoundStartPost()] An error has occurred in a callback function of a Script Plugin: " + scriptPlugin.GetScriptPluginName());
			}
		}

		g_Hooks.OnRoundStartPost.clear();
	});

	g_Hooks.OnRoundStart.clear();
}

function LU_OnRoundEnd(tParams)
{
	foreach (func in g_Hooks.OnRoundEnd)
	{
		try
		{
			func();
		}
		catch (exception)
		{
			errorl("[LU_OnRoundEnd->g_Hooks::OnRoundEnd()] " + exception);
			errorl("[LU_OnRoundEnd->g_Hooks::OnRoundEnd()] An error has occurred in a callback function");
		}
	}

	foreach (scriptPlugin in g_aScriptPlugins)
	{
		try
		{
			scriptPlugin.OnRoundEnd();
		}
		catch (exception)
		{
			errorl("[LU_OnRoundEnd->IScriptPlugin::OnRoundEnd()] " + exception);
			errorl("[LU_OnRoundEnd->IScriptPlugin::OnRoundEnd()] An error has occurred in a callback function of a Script Plugin: " + scriptPlugin.GetScriptPluginName());
		}
	}
	
	delete ::ifaces_initialized;
}

function LU_OnPlayerSay(tParams)
{
	local hPlayer = tParams["_player"];
	local sText = tParams.text.tolower();

	if (tParams["_player"])
	{
		if (sText == "!lu_plugins")
		{
			if ("ClientPrint" in getroottable())
			{
				local it = 1;
				local sPlugins = "[Script Plugins List]\n";

				foreach (plugin in g_aScriptPlugins)
				{
					sPlugins += "[" + it++ + "] " + plugin.GetScriptPluginName() + "\n"; 
				}

				ClientPrint(hPlayer, HUD_PRINTCONSOLE, sPlugins);
			}
		}
		else if (g_ChatCommands.len() > 0)
		{
			local sCommand = split(sText, " ")[0];

			if (sCommand in g_ChatCommands)
			{
				LU_AnalyzeCommand(g_ChatCommands[sCommand], sText, hPlayer, " ");
			}
		}
	}
}

function LU_AnalyzeCommand(command, sArgs, hPlayer, sSeparator)
{
	local aArgs = null;

	local func = command.GetCallingFunction();
	local bProcessCaller = command.ProcessCaller();
	local bProcessArguments = command.ProcessArguments();

	if (bProcessArguments)
	{
		aArgs = split(sArgs, sSeparator);

		if (aArgs.len() > 1)
		{
			aArgs.remove(0);
		}
		else
		{
			aArgs = null;
		}
	}

	if (bProcessCaller && !bProcessArguments)
	{
		func(hPlayer);
	}
	else if (bProcessCaller && bProcessArguments)
	{
		func(hPlayer, aArgs);
	}
	else if (!bProcessCaller && bProcessArguments)
	{
		func(aArgs);
	}
}

function LU_CheckButtons(hPlayer, button)
{
	local buttons;
	local button_type = button.GetPressType();
	local idx = hPlayer.GetEntityIndex();

	if (button_type == BUTTON_STATE_PRESSED)
		buttons = NetProps.GetPropInt(hPlayer, "m_afButtonPressed");
	else if (button_type == BUTTON_STATE_RELEASED)
		buttons = NetProps.GetPropInt(hPlayer, "m_afButtonReleased");
	else
		buttons = NetProps.GetPropInt(hPlayer, "m_nButtons");

	if (buttons & button.GetButton())
		button.GetCallingFunction()(hPlayer);
}

function OnTickCall()
{
	local idx = 0;
	local length = g_aTimers.len();

	ProcessHooks_Think();

	// Functions called per tick
	for (local i = 0; i < g_aOnTickFunctions.len(); ++i)
	{
		try
		{
			g_aOnTickFunctions[i].GetCallingFunction().acall(g_aOnTickFunctions[i].GetArguments());
		}
		catch (exception)
		{
			errorl("[OnTickFunction Watchdog] " + exception);
			errorl("[OnTickFunction Watchdog] An error has occurred, on tick function has been removed");
			g_aOnTickFunctions.remove(i);
			--i;
		}
	}

	// Timers
	while (idx < length)
	{
		if (g_aTimers[idx].GetCallTime() <= Time())
		{
			try
			{
				g_aTimers[idx].GetCallingFunction().acall(g_aTimers[idx].GetArguments());
			}
			catch (exception)
			{
				errorl("[Timer Watchdog] " + exception);
				errorl("[Timer Watchdog] An error has occurred, calling task has been removed");
			}

			g_aTimers.remove(idx);
			--length;
			continue;
		}

		++idx;
	}

	idx = 0;
	length = g_aConVars.len();

	// ConVars
	while (idx < length)
	{
		local cvar = g_aConVars[idx];
		if (cvar.GetCurrentValue() != cvar.GetValue())
		{
			local min, max;
			local bProhibitChangeHook = false;
			local NewValue = cvar.GetValue();
			local CurrentValue = cvar.GetCurrentValue();

			try
			{
				if (cvar.m_sType == "integer")
				{
					NewValue = NewValue.tointeger();
					CurrentValue = CurrentValue.tointeger();

					if (cvar.m_flMinValue != null && cvar.m_flMaxValue != null)
					{
						min = cvar.m_flMinValue.tointeger();
						max = cvar.m_flMaxValue.tointeger();

						if (CurrentValue < min || CurrentValue > max)
							bProhibitChangeHook = true;
						
						NewValue = Math.Clamp(NewValue, min, max);
					}
					else if (cvar.m_flMinValue != null && cvar.m_flMaxValue == null)
					{
						min = cvar.m_flMinValue.tointeger();

						if (CurrentValue < min) bProhibitChangeHook = true;
						if (NewValue < min) NewValue = min;
					}
					else if (cvar.m_flMinValue == null && cvar.m_flMaxValue != null)
					{
						max = cvar.m_flMaxValue.tointeger();

						if (CurrentValue > max) bProhibitChangeHook = true;
						if (NewValue > max) NewValue = max;
					}
				}
				else if (cvar.m_sType == "float")
				{
					min = cvar.m_flMinValue;
					max = cvar.m_flMaxValue;
					
					NewValue = NewValue.tofloat();
					CurrentValue = CurrentValue.tofloat();

					if (cvar.m_flMinValue != null && cvar.m_flMaxValue != null)
					{
						if (CurrentValue < min || CurrentValue > max)
							bProhibitChangeHook = true;
						
						NewValue = Math.Clamp(NewValue, min, max);
					}
					else if (cvar.m_flMinValue != null && cvar.m_flMaxValue == null)
					{
						if (CurrentValue < min) bProhibitChangeHook = true;
						if (NewValue < min) NewValue = min;
					}
					else if (cvar.m_flMinValue == null && cvar.m_flMaxValue != null)
					{
						if (CurrentValue > max) bProhibitChangeHook = true;
						if (NewValue > max) NewValue = max;
					}
				}
			}
			catch (exception)
			{
				cvar.SetValue(CurrentValue);
				continue;
			}

			cvar.SetValue(NewValue);
			cvar.m_sValue = NewValue.tostring();

			if (cvar.m_bChangeHook && !bProhibitChangeHook && NewValue != CurrentValue)
			{
				cvar.m_ChangeHookFunction(cvar, CurrentValue, NewValue)
			}
		}

		++idx;
	}
}

function ProcessHooks_Think()
{
	if (g_Hooks.OnIteratePlayersPerTick.len() > 0 || g_aButtonsListener.len() > 0)
	{
		local hPlayer;
		local OnIteratePlayersPerTick_callbacks = clone g_Hooks.OnIteratePlayersPerTick;

		while (hPlayer = Entities.FindByClassname(hPlayer, "player"))
		{
			foreach (button in g_aButtonsListener)
			{
				local team = button.GetTeam();

				if (team == TEAM_EVERYONE)
				{
					LU_CheckButtons(hPlayer, button);
				}
				else if (team == TEAM_SURVIVOR)
				{
					if (hPlayer.IsSurvivor())
						LU_CheckButtons(hPlayer, button);
				}
				else
				{
					LU_CheckButtons(hPlayer, button);
				}
			}

			for (local i = 0; i < OnIteratePlayersPerTick_callbacks.len(); ++i)
			{
				try
				{
					local hookResult = OnIteratePlayersPerTick_callbacks[i](hPlayer);

					if (hookResult == HOOK_STOP_SINGLE)
					{
						OnIteratePlayersPerTick_callbacks.remove(i);
						--i;
					}
					else if (hookResult == HOOK_STOP)
					{
						OnIteratePlayersPerTick_callbacks.clear();
						break;
					}
				}
				catch (exception)
				{
					errorl("[Hooks Watchdog] " + exception);
					errorl("[Hooks Watchdog] An error has occurred, OnIteratePlayersPerTick's hook function has been removed");

					g_Hooks.OnIteratePlayersPerTick.remove(i);
					OnIteratePlayersPerTick_callbacks.remove(i);

					--i;
				}
			}
		}
	}
}

function ExtendClassMethods_Think()
{
	local hPlayer;

	while (hPlayer = Entities.FindByClassname(hPlayer, "player"))
	{
		ExtendClassMethods();
		RemoveOnTickFunction("ExtendClassMethods_Think");

		printl("[ExtendClassMethods_Think] New methods added");

		foreach (func in g_Hooks.OnExtendClassMethods)
		{
			try
			{
				func();
			}
			catch (exception)
			{
				errorl("[LU_OnRoundEnd->g_Hooks::OnExtendClassMethods()] " + exception);
				errorl("[LU_OnRoundEnd->g_Hooks::OnExtendClassMethods()] An error has occurred in a callback function");
			}
		}

		foreach (scriptPlugin in g_aScriptPlugins)
		{
			try
			{
				scriptPlugin.OnExtendClassMethods();
			}
			catch (exception)
			{
				errorl("[LU_OnRoundStart->IScriptPlugin::OnExtendClassMethods()] " + exception);
				errorl("[LU_OnRoundStart->IScriptPlugin::OnExtendClassMethods()] An error has occurred in a callback function of a Script Plugin: " + scriptPlugin.GetScriptPluginName());
			}
		}
		
		g_Hooks.OnExtendClassMethods.clear();

		break;
	}
}

RegisterLoopFunction("OnTickCall", 0.01);
RegisterOnTickFunction("ExtendClassMethods_Think");

HookEvent("player_say", LU_OnPlayerSay);
HookEvent("round_start", LU_OnRoundStart);
HookEvent("round_end", LU_OnRoundEnd);

// Get map name

if (!g_sMapName)
{
	function __get_query_data(queryData)
	{
		if (queryData["concept"] == "GetQueryData")
			::g_sMapName = queryData["map"];

		return false;
	}

	if (!("rrule__get_query_data" in this))
	{
		rrule__get_query_data <- true;

		g_rr.rr_ProcessRules([
			{
				name = "__get_query_data"
				criteria = [ ["concept", "__get_query_data"], [__get_query_data] ]
				responses = [ { scenename = "" } ]
				group_params = g_rr.RGroupParams( { permitrepeats = true, sequential = false, norepeat = false } )
			}
		]);
	}

	if (Entities.FindByClassname(null, "func_orator"))
	{
		EntFire("func_orator", "SpeakResponseConcept", "__get_query_data");
	}
	else
	{
		local orator;
		if (orator = SpawnEntityFromTable("func_orator", { targetname = "dummy_orator" }))
		{
			DoEntFire("!self", "SpeakResponseConcept", "__get_query_data", 0.0, null, orator);
			DoEntFire("!self", "Kill", "", 0.0, null, orator);
		}
	}
}

// Scripted Mode Hooks

if (hook_UserConsoleCommand)
{

function UserConsoleCommand(hPlayer, sArgs)
{
	if (sArgs)
	{
		sArgs = sArgs.tolower();

		if (sArgs == "lu_plugins")
		{
			if ("ClientPrint" in getroottable())
			{
				local it = 1;
				local sPlugins = "[Script Plugins List]\n";

				foreach (plugin in g_aScriptPlugins)
				{
					sPlugins += "[" + it++ + "] " + plugin.GetScriptPluginName() + "\n"; 
				}

				ClientPrint(hPlayer, HUD_PRINTCONSOLE, sPlugins);
			}
		}
		else if (g_UserCommands.len() > 0)
		{
			local aArgs = split(sArgs, ",");
			local sCommand = aArgs[0];

			if (sCommand in g_UserCommands)
			{
				LU_AnalyzeCommand(g_UserCommands[sCommand], sArgs, hPlayer, " ");
			}
		}
	}
}

}

if (hook_InterceptChat)
{

function InterceptChat(sMsg, hPlayer)
{
	local retVal = true;
	local bRetValOverriden = false;
	local showMessage = { value = true };

	for (local i = 0; i < g_Hooks.OnInterceptChat.len(); ++i)
	{
		showMessage.value = true;

		try
		{
			local hookReturnCode = g_Hooks.OnInterceptChat[i](showMessage, sMsg, hPlayer);

			if (hookReturnCode == HOOK_STOP)
			{
				return showMessage.value;
			}
			else if (hookReturnCode == HOOK_OVERRIDE && !bRetValOverriden)
			{
				retVal = showMessage.value;
				bRetValOverriden = true;
			}
		}
		catch (exception)
		{
			errorl("[Hooks Watchdog] " + exception);
			errorl("[Hooks Watchdog] An error has occurred, InterceptChat's hook function has been removed");
			g_Hooks.OnInterceptChat.remove(i);
			--i;
		}
	}

	return retVal;
}

}

if (hook_AllowBash)
{

function AllowBash(hBasher, hBashee)
{
	local retVal = ALLOW_BASH_ALL;
	local bRetValOverriden = false;
	local bashReturnCode = { value = ALLOW_BASH_ALL };

	for (local i = 0; i < g_Hooks.OnAllowBash.len(); ++i)
	{
		bashReturnCode.value = ALLOW_BASH_ALL;

		try
		{
			local hookReturnCode = g_Hooks.OnAllowBash[i](bashReturnCode, hBasher, hBashee);

			if (hookReturnCode == HOOK_STOP)
			{
				return bashReturnCode.value;
			}
			else if (hookReturnCode == HOOK_OVERRIDE && !bRetValOverriden)
			{
				retVal = bashReturnCode.value;
				bRetValOverriden = true;
			}
		}
		catch (exception)
		{
			errorl("[Hooks Watchdog] " + exception);
			errorl("[Hooks Watchdog] An error has occurred, AllowBash's hook function has been removed");
			g_Hooks.OnAllowBash.remove(i);
			--i;
		}
	}

	return retVal;
}

}

if (hook_AllowTakeDamage)
{

function AllowTakeDamage(tDamageInfo)
{
	local bRetVal = true;
	local bRetValOverriden = false;
	local applyDamage = { value = true };

	for (local i = 0; i < g_Hooks.OnAllowTakeDamage.len(); ++i)
	{
		applyDamage.value = true;

		try
		{
			local hookReturnCode = g_Hooks.OnAllowTakeDamage[i](applyDamage, tDamageInfo);

			if (hookReturnCode == HOOK_STOP)
			{
				return applyDamage.value;
			}
			else if (hookReturnCode == HOOK_OVERRIDE && !bRetValOverriden)
			{
				bRetVal = applyDamage.value;
				bRetValOverriden = true;
			}
		}
		catch (exception)
		{
			errorl("[Hooks Watchdog] " + exception);
			errorl("[Hooks Watchdog] An error has occurred, AllowTakeDamage's hook function has been removed");
			g_Hooks.OnAllowTakeDamage.remove(i);
			--i;
		}
	}

	return bRetVal;
}

}

if (hook_BotQuery)
{

function BotQuery(queryFlag, hEntity, defaultValue)
{
	local bRetVal = true;
	local bRetValOverriden = false;
	local allowBash = { value = true };

	for (local i = 0; i < g_Hooks.OnBotQuery.len(); ++i)
	{
		allowBash.value = true;

		try
		{
			local hookReturnCode = g_Hooks.OnBotQuery[i](allowBash, queryFlag, hEntity, defaultValue);

			if (hookReturnCode == HOOK_STOP)
			{
				return allowBash.value;
			}
			else if (hookReturnCode == HOOK_OVERRIDE && !bRetValOverriden)
			{
				bRetVal = allowBash.value;
				bRetValOverriden = true;
			}
		}
		catch (exception)
		{
			errorl("[Hooks Watchdog] " + exception);
			errorl("[Hooks Watchdog] An error has occurred, BotQuery's hook function has been removed");
			g_Hooks.OnBotQuery.remove(i);
			--i;
		}
	}

	return bRetVal;
}

}

if (hook_CanPickupObject)
{

function CanPickupObject(hObject)
{
	local bRetVal = true;
	local bRetValOverriden = false;
	local allowPickup = { value = true };

	for (local i = 0; i < g_Hooks.OnCanPickupObject.len(); ++i)
	{
		allowPickup.value = true;

		try
		{
			local hookReturnCode = g_Hooks.OnCanPickupObject[i](allowPickup, hObject);

			if (hookReturnCode == HOOK_STOP)
			{
				return allowPickup.value;
			}
			else if (hookReturnCode == HOOK_OVERRIDE && !bRetValOverriden)
			{
				bRetVal = allowPickup.value;
				bRetValOverriden = true;
			}
		}
		catch (exception)
		{
			errorl("[Hooks Watchdog] " + exception);
			errorl("[Hooks Watchdog] An error has occurred, CanPickupObject's hook function has been removed");
			g_Hooks.OnCanPickupObject.remove(i);
			--i;
		}
	}

	return bRetVal;
}

}

printl("Loaded Library of Utils v" + LU_VERSION);