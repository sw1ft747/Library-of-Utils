// VScript Library of Utils
// Author: Sw1ft >> http://steamcommunity.com/profiles/76561198397776991

/*===============================*\
 *  Validate that current scope  *
 *       is the root table       *
\*===============================*/

if ( this != getroottable() )
	throw "the library must be included in the root table";

/*===============================*\
 *   Include Library once when   *
 * Scripted Mode was initialized *
\*===============================*/

__vslu_dummy_event_listener <- { OnGameEvent___vslu_dummy_event = function(tParams) {} }

if ("GameEventCallbacks" in this && typeof GameEventCallbacks == "table" && "__vslu_dummy_event" in GameEventCallbacks)
{
	if ("VSLU" in this && typeof VSLU != "table")
	{
		__CollectEventCallbacks(__vslu_dummy_event_listener, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
		delete vslu_ifaces_initialized;
	}
	else
	{
		return;
	}
}
else
{
	__CollectEventCallbacks(__vslu_dummy_event_listener, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
}

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

const VSLU_VERSION = "1.0.0"
const VSLU_DATA_FOLDER = "vslu/"
const VSLU_LOOPFUNC_PREFIX = "vslu_lf_"

const MAXENTS = 2048
const MAXCLIENTS = 32

const ZOMBIE_NONE = -1
const ZOMBIE_SURVIVOR = 9

const TEAM_SPECTATOR = 1
const TEAM_SURVIVOR = 2
const TEAM_INFECTED = 3
const TEAM_EVERYONE = 4

const BUTTON_STATE_PRESSED = 0
const BUTTON_STATE_RELEASED = 1
const BUTTON_STATE_HOLD = 2

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

const DEFAULT_INTERVAL_PER_TICK = 0.033333333333333333

const TRACE_MASK_SHOT_IGNORE_WINDOW = 1174421505
const TRACE_MAX_DISTANCE = 1000000000

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
 *          Singleton            *
\*===============================*/

if ( !("VSLU" in this) || typeof VSLU != "table" )
{

::VSLU <-
{
	/*===============================*\
	*        Global Variables        *
	\*===============================*/

	sMapName = null
	iUniqueIDs = 0

	hClientCommand = SpawnEntityFromTable("point_clientcommand", {})
	hServerCommand = SpawnEntityFromTable("point_servercommand", {})
	hBroadcastClientCommand = SpawnEntityFromTable("point_broadcastclientcommand", {})

	/*===============================*\
	*             Tables             *
	\*===============================*/

	ScriptedModeHooks =
	{
		Enable = false
		Initialized = false

		tUserConsoleCommandFuncs = {}
		tInterceptChatFuncs = {}
		tAllowBashFuncs = {}
		tAllowTakeDamageFuncs = {}
		tBotQueryFuncs = {}
		tCanPickupObjectFuncs = {}
	}

	/*===============================*\
	*            Arrays             *
	\*===============================*/

	aScriptPlugins = []
}

}

/*===============================*\
 *      Include Sub-Modules      *
\*===============================*/

DoIncludeScript("vslu/math", this);
DoIncludeScript("vslu/matrix", this);

/*===============================*\
*         Interfaces            *
\*===============================*/

/** Interface Script Plugin
* Signature: class VSLU::IScriptPlugin()
*/

if ( !("vslu_ifaces_initialized" in this) )
{

class VSLU.IScriptPlugin
{
	// Called when the plugin must be loaded
	function Load() { VSLU.ScriptPluginsHelper.PureVirtualError() };

	// Called when the plugin must be unloaded
	function Unload() { VSLU.ScriptPluginsHelper.PureVirtualError() };

	// Called on next tick after round start
	function OnRoundStartPost() { VSLU.ScriptPluginsHelper.PureVirtualError() };

	// Called on round end
	function OnRoundEnd() { VSLU.ScriptPluginsHelper.PureVirtualError() };

	// Return name of the described class
	function GetClassName() { VSLU.ScriptPluginsHelper.PureVirtualError() };

	// Return plugin name
	function GetScriptPluginName() { VSLU.ScriptPluginsHelper.PureVirtualError() };

	// Return version of the interface
	function GetInterfaceVersion() { VSLU.ScriptPluginsHelper.PureVirtualError() };
}

::vslu_ifaces_initialized <- true;

}

/*===============================*\
 *           Classes             *
\*===============================*/

/** Class Loop Function
* Signature: class VSLU::CLoopFunction(string funcName, float refiretime, any args)
*/

class VSLU.CLoopFunction
{
	constructor(sFunction, flInterval, aInputArgs = [])
	{
		local aArgs = [this];
		aArgs.extend(aInputArgs);

		m_aArgs = aArgs;
		m_sFunctionName = sFunction;
		m_sTimerName = VSLU_LOOPFUNC_PREFIX + sFunction.tolower();

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
* Signature: class VSLU::COnTickFunction(string funcName, any args)
*/

class VSLU.COnTickFunction
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
* Signature: class VSLU::CButtonListener(int button, string funcName, int pressType, int team)
*/

class VSLU.CButtonListener
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

/** Class ConVar
* Signature: class VSLU::CConVar(string name, string defaultValue, string variableType, float minValue, float maxValue)
*/

class VSLU.CConVar
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
		if ( !m_bChangeHook )
		{
			m_bChangeHook = true;
			m_ChangeHookFunction = Function;
			printf("[Class ConVar] A function has been hooked for cvar '%s'", m_sName);
		}
	}

	function RemoveChangeHook()
	{
		if ( m_bChangeHook )
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
* Signature: class VSLU::CTimer(float callTime, function callFunction, any args)
*/

class VSLU.CTimer
{
	constructor(flCallTime, Function, aInputArgs = [])
	{
		local aArgs = [this];
		aArgs.extend(aInputArgs);

		m_aArgs = aArgs;
		m_iIdentifier = ::VSLU.iUniqueIDs++;
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

if ( !VSLU.hClientCommand.IsValid() )
	VSLU.hClientCommand <- SpawnEntityFromTable("point_clientcommand", {});

if ( !VSLU.hServerCommand.IsValid() )
	VSLU.hServerCommand <- SpawnEntityFromTable("point_servercommand", {});

if ( !VSLU.hBroadcastClientCommand.IsValid() )
	VSLU.hBroadcastClientCommand <- SpawnEntityFromTable("point_broadcastclientcommand", {});

/*===============================*\
 *            Tables             *
\*===============================*/

VSLU.tCallBackEvents <- {};
VSLU.tChatCommands <- {};
VSLU.tConsoleCommands <- {};

VSLU.Player <- {};
VSLU.Debug <- {};
VSLU.Events <- {};

VSLU.Hooks <-
{
	// VSLU.Hooks.RegisterHook( VSLU.Hooks.OnAllowTakeDamage, MyHookFunction );
	function RegisterHook(aHooks, hookFunc)
	{
		foreach (idx, func in aHooks)
		{
			if ( func == hookFunc )
			{
				printf("[Hooks] A function for hook %s already registered", VSLU.FindKeyFromValueInScope(aHooks, this));
				return false;
			}
		}

		aHooks.push(hookFunc);
		printf("[Hooks] Registered a function for hook %s", VSLU.FindKeyFromValueInScope(aHooks, this));

		return true;
	}

	// VSLU.Hooks.RemoveHook( VSLU.Hooks.OnAllowTakeDamage, MyHookFunction );
	function RemoveHook(aHooks, hookFunc)
	{
		foreach (idx, func in aHooks)
		{
			if ( func == hookFunc )
			{
				aHooks.remove(idx);
				printf("[Hooks] Removed a function for hook %s", VSLU.FindKeyFromValueInScope(aHooks, this));

				return true;
			}
		}

        printf("[Hooks] A function for hook %s not registered", VSLU.FindKeyFromValueInScope(aHooks, this));
		return false;
	}

	// Signature: void OnRoundStart()
	OnRoundStart = []

	// Signature: void OnRoundStartPost()
	OnRoundStartPost = []

	// Signature: void OnRoundEnd()
	OnRoundEnd = []

	// Signature: void OnSetEntityAnglesCompleted(handle entity)
	OnSetEntityAnglesCompleted = []

	// Signature: HookReturnCode OnIteratePlayersPerTick(handle player)
	// Hook codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_STOP - stop executing further hook functions on this tick
	// HOOK_STOP_SINGLE - stop executing current hook function on this tick
	OnIteratePlayersPerTick = []

	// Signature: HookReturnCode OnUserConsoleCommand(table params) | ScriptedMode Hook
	// Table 'params' contains keys 'player' and 'args' that can be changed. Signatures: 'handle player', 'string args'
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override 'params' table
	// HOOK_STOP - stop executing the general hook function
	OnUserConsoleCommand = []

	// Signature: HookReturnCode OnInterceptChat(table showMessage, string message, handle player) | ScriptedMode Hook
	// Table 'showMessage' contains key 'value' that can be changed, 'true' to show message to other clients, otherwise 'false'
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override return value (showMessage.value), further hook functions won't be able to override it
	// HOOK_STOP - stop executing the general hook function, return value can be overriden, but further hook functions won't be called
	OnInterceptChat = []

	// Signature: HookReturnCode OnAllowBash(table bashReturnCode, handle basher, handle bashee) | ScriptedMode Hook
	// Table 'bashReturnCode' contains key 'value' that can be changed, see constants ALLOW_BASH_*
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override return value (bashReturnCode.value), further hook functions won't be able to override it
	// HOOK_STOP - stop executing the general hook function, return value can be overriden, but further hook functions won't be called
	OnAllowBash = []

	// Signature: HookReturnCode OnAllowTakeDamage(table applyDamage, table damageInfo) | ScriptedMode Hook
	// Table 'applyDamage' contains key 'value' that can be changed, 'true' to apply damage, otherwise 'false'
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override return value (applyDamage.value), further hook functions won't be able to override it
	// HOOK_STOP - stop executing the general hook function, return value can be overriden, but further hook functions won't be called
	OnAllowTakeDamage = []

	// Signature: HookReturnCode OnBotQuery(table allowQuery, int queryflag, handle entity, bool defaultvalue) | ScriptedMode Hook
	// Table 'allowQuery' contains key 'value' that can be changed, 'true' to disallow bashing for a bot, otherwise 'false'
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override return value (allowQuery.value), further hook functions won't be able to override it
	// HOOK_STOP - stop executing the general hook function, return value can be overriden, but further hook functions won't be called
	OnBotQuery = []

	// Signature: HookReturnCode OnCanPickupObject(table allowPickup, handle object) | ScriptedMode Hook
	// Table 'allowPickup' contains key 'value' that can be changed, 'true' to allow pickup an object, otherwise 'false'
	// Hook return codes:
	// HOOK_CONTINUE - continue executing
	// HOOK_OVERRIDE - override return value (allowPickup.value), further hook functions won't be able to override it
	// HOOK_STOP - stop executing the general hook function, return value can be overriden, but further hook functions won't be called
	OnCanPickupObject = []
};

VSLU.ScriptPluginsHelper <-
{
	PureVirtualError = function()
	{
		throw "Abstract Class: cannot call undescribed virtual method";
	}
	
	AddScriptPlugin = function(scriptPlugin)
	{
		if (scriptPlugin instanceof VSLU.IScriptPlugin)
		{
			foreach (idx, plugin in VSLU.aScriptPlugins)
			{
				if ( plugin == scriptPlugin )
				{
					errorl(format("[VSLU::ScriptPluginsHelper::AddScriptPlugin] Script Plugin '%s' already added", scriptPlugin.GetScriptPluginName()));
					return false;
				}
				else if ( plugin.GetClassName() == scriptPlugin.GetClassName() )
				{
					VSLU.aScriptPlugins[idx] = scriptPlugin;
					printf("[VSLU::ScriptPluginsHelper::AddScriptPlugin] Script Plugin '%s' was reloaded", scriptPlugin.GetScriptPluginName());
					return true;
				}
			}

			VSLU.aScriptPlugins.push(scriptPlugin);
			printf("[VSLU::ScriptPluginsHelper::AddScriptPlugin] Script Plugin '%s' successfully added", scriptPlugin.GetScriptPluginName());
			return true;
		}

		errorl("[VSLU::ScriptPluginsHelper::AddScriptPlugin] Failed to add a Script Plugin");
		return false;
	}

	RemoveScriptPlugin = function(scriptPlugin)
	{
		if (scriptPlugin instanceof VSLU.IScriptPlugin)
		{
			foreach (idx, plugin in VSLU.aScriptPlugins)
			{
				if ( plugin == scriptPlugin )
				{
					VSLU.aScriptPlugins.remove(idx);
					scriptPlugin.Unload();

					printf("[VSLU::ScriptPluginsHelper::RemoveScriptPlugin] Script Plugin '%s' successfully removed", scriptPlugin.GetScriptPluginName());
					return true;
				}
			}

			errorl(format("[VSLU::ScriptPluginsHelper::RemoveScriptPlugin] Script Plugin '%s' wasn't added", scriptPlugin.GetScriptPluginName()));
			return false;
		}

		errorl("[VSLU::ScriptPluginsHelper::RemoveScriptPlugin] Failed to remove a Script Plugin");
		return false;
	}
};

/*===============================*\
 *            Arrays             *
\*===============================*/

VSLU.aLoopFunctions <- [];
VSLU.aOnTickFunctions <- [];
VSLU.aButtonsListener <- [];
VSLU.aConVars <- [];
VSLU.aTimers <- [];

/*===============================*\
 *       Global Functions        *
\*===============================*/

/** Print format
* Signature: void printf(string message, any args)
*/

function printf(sMsg, ...)
{
	local aInputArgs = [this, sMsg];
	aInputArgs.extend(vargv);
	printl(format.acall(aInputArgs));
}

/** Send an error message
* Signature: void errorl(string message)
*/

function errorl(sMsg)
{
	error(sMsg + "\n");
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

/** Test a value. If assertion fails, prints message in the console
* Signature: void Assert(bool value, string message, bool throwError)
*/

function Assert(bAssertion, sMsg = null, bThrowError = false)
{
	if ( !bAssertion )
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
	if ( value != null )
		Convars.SetValue(sName.tostring(), value.tostring());
	else if ( bReturnString )
		return Convars.GetStr(sName.tostring());
	else
		return Convars.GetFloat(sName.tostring());
}

/** Interpreting ToKVString method
* Signature: string kvstr(instance)
*/

function kvstr(__instance)
{
	if ( __instance instanceof Vector || __instance instanceof QAngle )
		return __instance.x + " " + __instance.y + " " + __instance.z;

	if ( __instance instanceof Vector2D )
		return __instance.x + " " + __instance.y;

	if ( __instance instanceof Vector4D || __instance instanceof Quaternion )
		return __instance.x + " " + __instance.y + " " + __instance.z + " " + __instance.w;

	return "0";
}

/** Convert string to integer
* Signature: int str_to_int(string value)
*/

function str_to_int(value)
{
    try { return value.tointeger(); }
    catch (e) return 0;
}

/** Convert string to float
* Signature: float str_to_float(string value)
*/

function str_to_float(value)
{
    try { return value.tofloat(); }
    catch (e) return 0.0;
}

/*===============================*\
 *           Debugging           *
\*===============================*/

/** Draw a point
* Signature: void VSLU::Debug::Mark(Vector origin, float duration, Vector min, Vector max, int r, int g, int b, int alpha)
*/

function VSLU::Debug::Mark(vecPos, flDuration = 5.0, vecMins = Vector(-2, -2, -2), vecMaxs = Vector(2, 2, 2), iRed = 232, iGreen = 0, iBlue = 232, iAlpha = 255)
{
	DebugDrawBox(vecPos, vecMins, vecMaxs, iRed, iGreen, iBlue, iAlpha, flDuration);
}

/** Draw a line
* Signature: void VSLU::Line(Vector start, Vector end, float time, int red, int green, int blue)
*/

function VSLU::Debug::Line(vecStart, vecEnd, flTime = 5.0, iRed = 232, iGreen = 0, iBlue = 232)
{
	DebugDrawLine(vecStart, vecEnd, iRed, iGreen, iBlue, false, flTime);
}

/*===============================*\
 *           Functions           *
\*===============================*/

if ("ClientPrint" in this)
{

/** Send message to a specified player
* Signature: void VSLU::SendMessage(handle player, string message, int destination)
*/

function VSLU::SendMessage(hPlayer, sMsg, iDest = HUD_PRINTTALK)
{
	ClientPrint(hPlayer, iDest, "" + sMsg);
}

/** Send message to all players
* Signature: void VSLU::SendMessageAll(string message, int destination)
*/

function VSLU::SendMessageAll(sMsg, iDest = HUD_PRINTTALK)
{
	ClientPrint(null, iDest, "" + sMsg);
}

}
else
{

function VSLU::SendMessage(hPlayer, sMsg, iDest = HUD_PRINTTALK)
{
	Say(null, "(To: " + hPlayer.GetPlayerName() + " ) " + sMsg, false);
}

function VSLU::SendMessageAll(sMsg, iDest = HUD_PRINTTALK)
{
	Say(null, "" + sMsg, false);
}

}

/** Is a function exist
* Signature: bool VSLU::IsFunctionExist(string funcName)
*/

function VSLU::IsFunctionExist(sFunction)
{
	if (typeof sFunction != "string")
	{
		printl("[VSLU::IsFunctionExist] Wrong type of variable");
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
* Signature: any VSLU::FindValueFromKeyInScope(string key, table scope)
*/

function VSLU::FindValueFromKeyInScope(key, scope = null)
{
	if ( !scope )
		scope = getroottable();
	
	foreach (k, val in scope)
		if (key == k)
			return val;
	
	return null;
}

/** Get value's key from given scope
* Signature: string VSLU::FindKeyFromValueInScope(any value, table scope)
*/

function VSLU::FindKeyFromValueInScope(value, scope = null)
{
	if ( !scope )
		scope = getroottable();
	
	foreach (key, val in scope)
		if (value == val)
			return "" + key;
	
	return null;
}

/** Run a script code with the delay
* Signature: void VSLU::RunScriptCode(string script, float delay, handle activator, handle caller)
*/

function VSLU::RunScriptCode(sScript, flDelay = 0.0, hActivator = null, hCaller = null)
{
	if (typeof sScript != "string")
	{
		printl("[VSLU::RunScriptCode] Wrong type of variable");
		return;
	}

	if (hCaller)
		VSLU.AcceptEntityInput(hCaller, "RunScriptCode", sScript, flDelay, hActivator);
	else
		EntFire((hActivator != null ? "!activator" : "worldspawn"), "RunScriptCode", sScript, flDelay, hActivator);
}

/** Call a script function code with the delay
* Signature: void VSLU::CallScriptFunction(string function, float delay, handle activator, handle caller)
*/

function VSLU::CallScriptFunction(sFunction, flDelay = 0.0, hActivator = null, hCaller = null)
{
	if (typeof sFunction != "string")
	{
		printl("[VSLU::CallScriptFunction] Wrong type of variable");
		return;
	}

	if (hCaller)
		VSLU.AcceptEntityInput(hCaller, "CallScriptFunction", sFunction, flDelay, hActivator);
	else
		EntFire((hActivator != null ? "!activator" : "worldspawn"), "CallScriptFunction", sFunction, flDelay, hActivator);
}

/** Call a function with the delay and input variables
* Signature: CTimer VSLU::CreateTimer(float delay, function callFunction, array args)
*/

function VSLU::CreateTimer(flDelay, func, ...)
{
	if (typeof func == "function" || typeof func == "native function")
	{
		local timer = VSLU.CTimer(Time() + flDelay, func, vargv);
		VSLU.aTimers.push(timer);
		return timer;
	}

	printl("[VSLU::CreateTimer] Wrong type of variable");
}

/** Remove a timer by given identifier
* Signature: void VSLU::RemoveTimerByID(int identifier)
*/

function VSLU::RemoveTimerByID(iIdentifier)
{
	for (local i = 0; i < VSLU.aTimers.len(); ++i)
	{
		if (VSLU.aTimers[i].GetIdentifier() == iIdentifier)
		{
			VSLU.aTimers.remove(i);
			--i;
		}
	}
}

/** Call a function in the next game tick with input variables
* Signature: CTimer VSLU::RunNextTickFunction(function callFunction, array args)
*/

function VSLU::RunNextTickFunction(func, ...)
{
	if (typeof func == "function" || typeof func == "native function")
	{
		local timer = VSLU.CTimer(Time() + 0.0334, func, vargv);
		VSLU.aTimers.push(timer);
		return timer;
	}

	printl("[VSLU::RunNextTickFunction] Wrong type of variable");
}

/** Is arrays equal
* Signature: bool VSLU::AreArraysEqual(array arr1, array arr2)
*/

function VSLU::AreArraysEqual(a, _a)
{
	if (a.len() != _a.len()) return false;
	foreach (idx, val in a) if (_a[idx] != val) return false;

	return true;
}

/** Convert seconds to timer format
* Signature: string VSLU::ConvertTimeToTimer(float time, bool bMs)
*/

function VSLU::ConvertTimeToTimer(flTime = 0.0, bMs = true)
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
* Signature: void VSLU::ServerCommand(string command, float delay)
*/

function VSLU::ServerCommand(sCommand = "", flDelay = 0.0)
{
	VSLU.AcceptEntityInput(VSLU.hServerCommand, "Command", sCommand.tostring(), flDelay.tofloat(), null);
	VSLU.AcceptEntityInput(VSLU.hServerCommand, "Kill", "", flDelay.tofloat(), null);
}

/** Create "infinite" end point for tracing
* Signature: Vector VSLU::Trace_MakeEndPoint(Vector traceStart, Vector traceDirection)
*/

function VSLU::Trace_MakeEndPoint(vecStart, vecDir)
{
	return vecStart + vecDir.Scale(TRACE_MAX_DISTANCE);
}

/** Wrapper for TraceLine function
* Signature: void VSLU::TraceLine(table result, Vector start, Vector end, int masktype, handle ignoreEntity, bool getPlaneNormal, QAngle traceDirection)
*/

function VSLU::TraceLine(tTraceResult, vecStart, vecEnd, iMask = TRACE_MASK_SHOT, hIgnore = null, bPlaneNormal = false, traceDirection = null)
{
	Assert( typeof tTraceResult == "table", "tTraceResult must be passed as empty table", true );

	local tTrace =
	{
		start = vecStart
		end = vecEnd
		ignore = hIgnore
		mask = iMask
	}

	::TraceLine(tTrace);

	if (bPlaneNormal)
	{
		if (traceDirection == null)
			traceDirection = VSLU.Math.VectorToQAngle(vecEnd - vecStart);
		
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

		::TraceLine(tPlaneTrace); vecPointA = tPlaneTrace.pos;

		tPlaneTrace.start = vecStart + traceDirection.Up().Scale(-0.01);
		tPlaneTrace.end = tPlaneTrace.start + vecDir.Scale(TRACE_MAX_DISTANCE);

		::TraceLine(tPlaneTrace); vecPointB = tPlaneTrace.pos;
		
		tTraceResult.planenormal <- (vecPointA - tTrace.pos).Cross(vecPointB - tTrace.pos).Scale(100000).Normalize();
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
* Signature: void VSLU::AcceptEntityInput(handle caller, string command, string value, handle activator, float delay)
*/

function VSLU::AcceptEntityInput(hEntity, sInput, sValue = "", flDelay = 0.0, hActivator = null)
{
	if ( !hEntity )
	{
		printl("[VSLU::AcceptEntityInput] Entity doesn't exist");
		return;
	}

	DoEntFire("!self", sInput.tostring(), sValue.tostring(), flDelay.tofloat(), hActivator, hEntity);
}

/** Teleport an entity
* Signature: void VSLU::TeleportEntity(Vector position, Vector/QAngle angles, Vector velocity, bool bForwardDirection)
*/

function VSLU::TeleportEntity(hEntity, vecPos = Vector(), vecAngles = QAngle(), vecVel = Vector(), bForwardDirection = false)
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
				hEntity.SetForwardVector(bForwardDirection ? vecAngles : vecAngles.Forward());
			else
				hEntity.SetAngles(bForwardDirection ? VSLU.Math.VectorToQAngle(vecAngles) : vecAngles);
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
* Signature: float VSLU::GetAngleBetweenEntities(handle entity, handle target)
*/

function VSLU::GetAngleBetweenEntities(hEntity = null, hTarget = null, vecCorrection = Vector(), bMethod2D = false)
{
	if ( !hEntity || !hTarget )
	{
		printl("[VSLU::GetAngleBetweenEntities] Entity doesn't exist");
		return;
	}

	local vecPos = hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin();
	local _vecPos = hTarget.IsPlayer() ? hTarget.EyePosition() : hTarget.GetOrigin();

	if (bMethod2D)
	{
		vecPos.z = 0.0;
		_vecPos.z = 0.0;
	}

	return acos(((hEntity.IsPlayer() ? hEntity.EyeAngles() : hEntity.GetAngles()).Forward()).Dot(((_vecPos - vecPos) + vecCorrection).Normalize())) * VSLU.Math.Rad2Deg;
}

/** Emit a sound
* Signature: void VSLU::EmitSound(string soundFile)
*/

function VSLU::EmitSound(vecPos, sSound, iRadius = 3000.0)
{
	local hEntity = SpawnEntityFromTable("ambient_generic", {
		origin = vecPos
		message = sSound
		radius = iRadius
		spawnflags = 48
		health = 100
	});

	VSLU.AcceptEntityInput(hEntity, "PlaySound");
	VSLU.AcceptEntityInput(hEntity, "Kill");
}

/** Emit a sound to all players
* Signature: void VSLU::EmitSoundToAll(string soundScript)
*/

function VSLU::EmitSoundToAll(sSound)
{
	local hPlayer;

	while (hPlayer = Entities.FindByClassname(hPlayer, "player"))
		EmitSoundOnClient(sSound, hPlayer);
}

/** Checks if an entity is alive
* Signature: bool VSLU::IsEntityAlive(handle entity)
*/

function VSLU::IsEntityAlive(hEntity)
{
	return NetProps.GetPropInt(hEntity, "m_lifeState") == 0;
}

/** Attach an entity
* Signature: void VSLU::AttachEntity(handle entity, handle target, string attachment, float delay)
*/

function VSLU::AttachEntity(hEntity, hEntityToAttach, sAttachment = null, flDelay = 0.0)
{
	VSLU.AcceptEntityInput(hEntityToAttach, "SetParent", "!activator", flDelay, hEntity);
	if (sAttachment != null) VSLU.AcceptEntityInput(hEntityToAttach, "SetParentAttachment", sAttachment, flDelay, hEntity);
}

/** Remove an attachment
* Signature: void VSLU::RemoveAttachment(handle entity, handle target, float delay)
*/

function VSLU::RemoveAttachment(hEntity, hEntityToUnattach, flDelay = 0.0)
{
	VSLU.AcceptEntityInput(hEntityToUnattach, "ClearParent", "", flDelay, hEntity);
}

/** Get distance between two entities
* Signature: float VSLU::GetDistanceToEntity(handle entity, handle target, bool bSquared, bool bMethod2D)
*/

function VSLU::GetDistanceToEntity(hEntity, hTarget, bSquared = false, bMethod2D = false)
{
	local flDistance;

	if (bSquared)
		flDistance = bMethod2D ? (hEntity.GetOrigin() - hTarget.GetOrigin()).Length2DSqr() : (hEntity.GetOrigin() - hTarget.GetOrigin()).LengthSqr();
	else
		flDistance = bMethod2D ? (hEntity.GetOrigin() - hTarget.GetOrigin()).Length2D() : (hEntity.GetOrigin() - hTarget.GetOrigin()).Length();

	return flDistance;
}

/** Ignite an entity
* Signature: void VSLU::Ignite(handle entity, handle attacker, float interval)
*/

function VSLU::Ignite(hEntity, hAttacker = null, flInterval = 5.0)
{
	if ( hEntity.IsPlayer() || hEntity.GetClassname() == "witch" )
		hEntity.TakeDamage(0.01, DMG_BURN, !hAttacker ? hEntity : hAttacker);
	else
		VSLU.AcceptEntityInput(hEntity, "IgniteLifeTime", flInterval.tostring());
	
	if ( hEntity.IsPlayer() && !hEntity.IsSurvivor() )
	{
		VSLU.SetScriptScopeVar(hEntity, "__vslu_extinguish_time", Time() + flInterval);
		VSLU.CreateTimer(flInterval, function(hPlayer){
			if (hPlayer.IsValid() && hPlayer.IsOnFire() & VSLU.GetScriptScopeVar(hPlayer, "__vslu_extinguish_time") <= Time())
				hPlayer.Extinguish();
		}, hEntity);
	}
}

/** Set entity angles by steps. Returns unique identifier for all timers in case you want to abort the function.
* Signature: int VSLU::SetAnglesBySteps(handle entity, QAngle angles, int steps, bool sphericalLerp, bool smoothLerp, float interval)
*/

function VSLU::SetAnglesBySteps(hEntity, vecAngles, iSteps, bSlerp = true, bSpline = false, flInterval = DEFAULT_INTERVAL_PER_TICK)
{
	Assert( iSteps > 0 );

	local vecAnglesStart = hEntity.IsPlayer() ? hEntity.EyeAngles() : hEntity.GetAngles();

	if ( !VSLU.GetScriptScopeVar(hEntity, "__vslu_changing_angles") && !VSLU.Math.OrientationsEqual(vecAngles, vecAnglesStart) )
	{
		local vecResult;
		local nID = VSLU.iUniqueIDs;

		local t = 0.0;
		local dt = 1.0 / iSteps;
		local flTime = 0.0;

		VSLU.SetScriptScopeVar(hEntity, "__vslu_changing_angles", true);

		if ( hEntity.IsPlayer() )
		{
			for (local i = 0; i < iSteps; ++i)
			{
				t += dt;
				flTime += flInterval;

				// if (bSlerp)
				// 	vecResult = VSLU.Math.VectorToQAngle(VSLU.Math.VectorSlerp(vecAnglesStart.Forward(), vecAngles.Forward(), bSpline ? VSLU.Math.SimpleSpline(t) : t));
				// else
					vecResult = VSLU.Math.AnglesLerp(vecAnglesStart, vecAngles, bSpline ? VSLU.Math.SimpleSpline(t) : t);

				local timer = VSLU.CreateTimer(flTime, ::__vslu_SetAnglesBySteps_TimerHandler, hEntity, vecResult);

				--VSLU.iUniqueIDs;
				timer.m_iIdentifier = nID;
			}
		}
		else
		{
			for (local i = 0; i < iSteps; ++i)
			{
				t += dt;
				flTime += flInterval;

				local timer = VSLU.CreateTimer(flTime, ::__vslu_SetAnglesBySteps_TimerHandler, hEntity, VSLU.Math.OrientationLerp(vecAnglesStart, vecAngles, t, bSlerp, true));

				--VSLU.iUniqueIDs;
				timer.m_iIdentifier = nID;
			}
		}

		local timer = VSLU.CreateTimer(flTime, function(hEntity){
			if ( hEntity.IsValid() )
			{
				VSLU.SetScriptScopeVar(hEntity, "__vslu_changing_angles", false);

				foreach (func in ::VSLU.Hooks.OnSetEntityAnglesCompleted)
				{
					try
					{
						func(hEntity);
					}
					catch (e)
					{
						errorl("[VSLU::Hooks::OnSetEntityAnglesCompleted Watchdog] " + e);
						errorl("[VSLU::Hooks::OnSetEntityAnglesCompleted Watchdog] An error has occurred in a callback function");
					}
				}
			}
		}, hEntity);

		--VSLU.iUniqueIDs;
		timer.m_iIdentifier = nID;

		return nID;
	}

	return null;
}

function __vslu_SetAnglesBySteps_TimerHandler(hEntity, vecAngles)
{
	if ( hEntity.IsValid() )
	{
		if ( hEntity.IsPlayer() )
			VSLU.TeleportEntity(hEntity, null, vecAngles, null);
		else
			hEntity.SetAngles(vecAngles);
	}
}

/** Set an entity angles to another entity
* Signature: void VSLU::SetAnglesToEntity(handle entity, handle target, Vector vecCorrection, bool bUseBodyPosition, float bodyPositionPercent)
*/

function VSLU::SetAnglesToEntity(hEntity, hTarget, vecCorrection = Vector(), bUseBodyPosition = false, flBodyPositionPercent = 0.5)
{
	local vecDir = vecCorrection;

	if ( hTarget.IsPlayer() )
		vecDir += (bUseBodyPosition ? VSLU.Player.GetBodyPosition(hTarget, flBodyPositionPercent) : hTarget.EyePosition()) - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
	else
		vecDir += hTarget.GetOrigin() - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());

	VSLU.TeleportEntity(hEntity, null, vecDir, null, true);
}

/** Get an entity angles to another entity
* Signature: QAngle VSLU::GetAnglesToEntity(handle entity, handle target, Vector vecCorrection, bool bUseBodyPosition, float bodyPositionPercent)
*/

function VSLU::GetAnglesToEntity(hEntity, hTarget, vecCorrection = Vector(), bUseBodyPosition = false, flBodyPositionPercent = 0.5)
{
	local vecDir = vecCorrection;

	if ( hTarget.IsPlayer() )
		vecDir += (bUseBodyPosition ? VSLU.Player.GetBodyPosition(hTarget, flBodyPositionPercent) : hTarget.EyePosition()) - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
	else
		vecDir += hTarget.GetOrigin() - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());

	return VSLU.Math.VectorToQAngle(vecDir);
}

/** Create an invisible wall
* Signature: handle VSLU::CreateInvisibleWall(string targetname, Vector origin, Vector maxs, Vector mins, int type, bool bEnable)
*/

function VSLU::CreateInvisibleWall(sName, vecPos, vecMaxs = Vector(64, 64, 128), vecMins = Vector(-64, -64, 0), iType = PHYS_BLOCKER_EVERYONE, bEnable = true)
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
* Signature: handle VSLU::GetHostPlayer()
*/

function VSLU::GetHostPlayer()
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
* Signature: void VSLU::SendCommandToBot(int command, handle bot, handle target, Vector position)
*/

function VSLU::SendCommandToBot(iCommand = BOT_CMD_MOVE, hBot = null, hTarget = null, vecPos = null)
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
* Signature: void VSLU::ClientCommandAll(string command, float delay)
*/

function VSLU::ClientCommandAll(sCommand = "", flDelay = 0.0)
{
	VSLU.AcceptEntityInput(VSLU.hBroadcastClientCommand, "Command", sCommand.tostring(), flDelay.tofloat(), null);
	VSLU.AcceptEntityInput(VSLU.hBroadcastClientCommand, "Kill", "", flDelay.tofloat(), null);
}

/** Get position to ground
* Signature: Vector VSLU::GetPositionToGround(handle entity)
*/

function VSLU::GetPositionToGround(hEntity)
{
	local tTraceResult = {};

	VSLU.TraceLine(tTraceResult, hEntity.GetOrigin(), hEntity.GetOrigin() + Vector(0, 0, -TRACE_MAX_DISTANCE), TRACE_MASK_SHOT, hEntity);

	return tTraceResult["pos"];
}

/** Get distance to ground
* Signature: float VSLU::GetDistanceToGround(handle entity)
*/

function VSLU::GetDistanceToGround(hEntity)
{
	local tTraceResult = {};

	VSLU.TraceLine(tTraceResult, hEntity.GetOrigin(), hEntity.GetOrigin() + Vector(0, 0, -TRACE_MAX_DISTANCE), TRACE_MASK_SHOT, hEntity);

	return fabs(hEntity.GetOrigin().z - tTraceResult["pos"].z);
}

/** Get entity's script scope
* Signature: table VSLU::GetScriptScope(handle entity)
*/

function VSLU::GetScriptScope(hEntity)
{
	hEntity.ValidateScriptScope();
	return hEntity.GetScriptScope();
}

/** Get entity's script scope variable
* Signature: any VSLU::GetScriptScopeVar(handle entity, string key)
*/

function VSLU::GetScriptScopeVar(hEntity, key)
{
	hEntity.ValidateScriptScope();

	if (VSLU.KeyInScriptScope(hEntity, key))
		return hEntity.GetScriptScope()[key];
}

/** Set entity's script scope variable
* Signature: void VSLU::SetScriptScopeVar(handle entity, string key, any variable)
*/

function VSLU::SetScriptScopeVar(hEntity, key, var)
{
	hEntity.ValidateScriptScope();
	hEntity.GetScriptScope()[key] <- var;
}

/** If a key in entity's script scope
* Signature: bool VSLU::KeyInScriptScope(handle entity, string key)
*/

function VSLU::KeyInScriptScope(hEntity, key)
{
	hEntity.ValidateScriptScope();

	if (key in hEntity.GetScriptScope())
		return true;

	return false;
}

/** Remove entity's script scope key
* Signature: void VSLU::RemoveScriptScopeKey(handle entity, string key)
*/

function VSLU::RemoveScriptScopeKey(hEntity, key)
{
	hEntity.ValidateScriptScope();

	if (VSLU.KeyInScriptScope(hEntity, key))
		delete hEntity.GetScriptScope()[key];
}

/*===============================*\
 *   Player Related Functions    *
\*===============================*/

/** Send a client command
* Signature: void VSLU::Player::ClientCommand(handle player, string command, float delay)
*/

function VSLU::Player::ClientCommand(hPlayer, sCommand = "", flDelay = 0.0)
{
	VSLU.AcceptEntityInput(VSLU.hClientCommand, "Command", sCommand.tostring(), flDelay.tofloat(), hPlayer);
	VSLU.AcceptEntityInput(VSLU.hClientCommand, "Kill", "", flDelay.tofloat(), null);
}

/** Press a button
* Signature: void VSLU::Player::SendInput(handle player, int button, float releasedelay)
*/

function VSLU::Player::SendInput(hPlayer, iButton, flReleaseDelay = 0.01)
{
	if (VSLU.KeyInScriptScope(hPlayer, format("__vslu_bitmask_%d_forced", iButton)))
		if (VSLU.GetScriptScopeVar(hPlayer, format("__vslu_bitmask_%d_forced", iButton)))
			return;

	NetProps.SetPropInt(hPlayer, "m_afButtonForced", NetProps.GetPropInt(hPlayer, "m_afButtonForced") | iButton);
	VSLU.SetScriptScopeVar(hPlayer, format("__vslu_bitmask_%d_forced", iButton), true);

	VSLU.CreateTimer(flReleaseDelay, function(hPlayer, iButton){
		if (hPlayer.IsValid())
		{
			NetProps.SetPropInt(hPlayer, "m_afButtonForced", NetProps.GetPropInt(hPlayer, "m_afButtonForced") & ~iButton)
			VSLU.SetScriptScopeVar(hPlayer, format("__vslu_bitmask_%d_forced", iButton), false);
		}
	}, hPlayer, iButton);
}

/** Is player a host
* Signature: bool VSLU::Player::IsHost(handle player)
*/

function VSLU::Player::IsHost(hPlayer)
{
	local hGameRules, hPlayerManager;

	if ( (hGameRules = Entities.FindByClassname(null, "terror_gamerules")) && (hPlayerManager = Entities.FindByClassname(null, "terror_player_manager")) )
		return !NetProps.GetPropInt(hGameRules, "m_bIsDedicatedServer") && NetProps.GetPropIntArray(hPlayerManager, "m_listenServerHost", hPlayer.GetEntityIndex());

	return false;
}

/** Is a player stuck
* Signature: bool VSLU::Player::IsStuck(handle player)
*/

function VSLU::Player::IsStuck(hPlayer)
{
	return NetProps.GetPropInt(hPlayer, "m_StuckLast") > 0;
}

/** Is a player alive
* Signature: bool VSLU::Player::IsAlive(handle player)
*/

function VSLU::Player::IsAlive(hPlayer)
{
	return !(hPlayer.IsDead() || hPlayer.IsDying());
}

/** Kill a player
* Signature: void VSLU::Player::Kill(handle player, handle attacker, int damageType)
*/

function VSLU::Player::Kill(hPlayer, hAttacker = null, iDamageType = DMG_GENERIC)
{
	if ( hPlayer.IsSurvivor() )
		hPlayer.SetReviveCount(2);

	hPlayer.SetHealth(1);
	hPlayer.TakeDamage(10.0, DMG_GENERIC, !hAttacker ? hPlayer : hAttacker);
}

/** Hide the player's HUD
* Signature: void VSLU::Player::HideHUD(handle player, int bitmask)
*/

function VSLU::Player::HideHUD(hPlayer, bitmask)
{
	NetProps.SetPropInt(hPlayer, "m_Local.m_iHideHUD", bitmask);
}

/** Returns a vector between player's eye position and foot position
* Signature: Vector VSLU::Player::GetBodyPosition(handle player, float distanceFactor)
*/

function VSLU::Player::GetBodyPosition(hPlayer, flPercent = 0.5)
{
	return hPlayer.GetOrigin() + (hPlayer.EyePosition() - hPlayer.GetOrigin()) * flPercent;
}

/** Is a player attacked by a special infected
* Signature: bool VSLU::Player::IsAttackedBySI(handle player)
*/

function VSLU::Player::IsAttackedBySI(hPlayer)
{
	if ( hPlayer.IsSurvivor() )
	{
		return NetProps.GetPropEntity(hPlayer, "m_pounceAttacker") ||
				NetProps.GetPropEntity(hPlayer, "m_jockeyAttacker") ||
				NetProps.GetPropEntity(hPlayer, "m_pummelAttacker") ||
				NetProps.GetPropEntity(hPlayer, "m_carryAttacker") ||
				NetProps.GetPropEntity(hPlayer, "m_tongueOwner");
	}
}

/** Get a SI attacked a player
* Signature: handle VSLU::Player::GetSIAttacker(handle Player)
*/

function VSLU::Player::GetSIAttacker(hPlayer)
{
	if ( hPlayer.IsSurvivor() )
	{
		if (NetProps.GetPropEntity(hPlayer, "m_pounceAttacker")) return NetProps.GetPropEntity(hPlayer, "m_pounceAttacker");
		else if (NetProps.GetPropEntity(hPlayer, "m_jockeyAttacker")) return NetProps.GetPropEntity(hPlayer, "m_jockeyAttacker");
		else if (NetProps.GetPropEntity(hPlayer, "m_pummelAttacker")) return NetProps.GetPropEntity(hPlayer, "m_pummelAttacker");
		else if (NetProps.GetPropEntity(hPlayer, "m_carryAttacker")) return NetProps.GetPropEntity(hPlayer, "m_carryAttacker");
		else if (NetProps.GetPropEntity(hPlayer, "m_tongueOwner")) return NetProps.GetPropEntity(hPlayer, "m_tongueOwner");
	}
}

/** Get a SI's victim
* Signature: handle VSLU::Player::GetSIVictim(handle player)
*/

function VSLU::Player::GetSIVictim(hPlayer)
{
	if ( !hPlayer.IsSurvivor() )
	{
		if (NetProps.GetPropEntity(hPlayer, "m_pounceVictim")) return NetProps.GetPropEntity(hPlayer, "m_pounceVictim");
		else if (NetProps.GetPropEntity(hPlayer, "m_jockeyVictim")) return NetProps.GetPropEntity(hPlayer, "m_jockeyVictim");
		else if (NetProps.GetPropEntity(hPlayer, "m_pummelVictim")) return NetProps.GetPropEntity(hPlayer, "m_pummelVictim");
		else if (NetProps.GetPropEntity(hPlayer, "m_carryVictim")) return NetProps.GetPropEntity(hPlayer, "m_carryVictim");
		else if (NetProps.GetPropEntity(hPlayer, "m_tongueVictim")) return NetProps.GetPropEntity(hPlayer, "m_tongueVictim");
	}
}

/** Is a player a special infected
* Signature: bool VSLU::Player::IsSpecialInfected(handle player)
*/

function VSLU::Player::IsSpecialInfected(hPlayer)
{
	if (NetProps.GetPropInt(hPlayer, "m_iTeamNum") == 3)
	{
		return (hPlayer.GetZombieType() != ZOMBIE_TANK);
	}

	return false;
}

/** Set a player's ammo
* Signature: void VSLU::Player::SetAmmo(handle player, int slot, int clips, int ammo, int upgradeammo)
*/

function VSLU::Player::SetAmmo(hPlayer, iSlot, iClip, iAmmo = null, iUpgradeAmmo = null)
{
	local tInv = {};
	GetInvTable(hPlayer, tInv);

	if (iSlot == INVENTORY_WEAPON_PRIMARY)
	{
		if ("slot0" in tInv)
		{
			local hWeapon = tInv["slot0"];

			if (iClip != null)
				NetProps.SetPropInt(hWeapon, "m_iClip1", iClip);

			if (iAmmo != null)
			{
				NetProps.SetPropIntArray(hPlayer, "m_iAmmo", iAmmo, NetProps.GetPropInt(hWeapon, "m_iPrimaryAmmoType"));

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
* Signature: void VSLU::Player::TraceLine(handle player, table result, float traceDistance, int masktype, bool getPlaneNormal)
*/

function VSLU::Player::TraceLine(hPlayer, tTraceResult, flTraceDistance = TRACE_MAX_DISTANCE, iMask = TRACE_MASK_SHOT, bPlaneNormal = false)
{
	Assert( typeof tTraceResult == "table", "tTraceResult must be passed as empty table", true );

	local traceDirection = hPlayer.EyeAngles();
	local vecDir = traceDirection.Forward();

	local vecStart = hPlayer.EyePosition();
	local vecEnd = vecStart + vecDir.Scale(flTraceDistance);

	local tTrace =
	{
		start = vecStart
		end = vecEnd
		ignore = hPlayer
		mask = iMask
	}

	::TraceLine(tTrace);

	if (bPlaneNormal)
	{
		if (traceDirection == null)
			traceDirection = VSLU.Math.VectorToQAngle(vecEnd - vecStart);
		
		local vecPointA, vecPointB;

		local vecStartShifted = vecStart + traceDirection.Left().Scale(-0.01);

		local tPlaneTrace =
		{
			start = vecStartShifted
			end = vecStartShifted + vecDir.Scale(TRACE_MAX_DISTANCE)
			ignore = hPlayer
			mask = iMask
		}

		::TraceLine(tPlaneTrace); vecPointA = tPlaneTrace.pos;

		tPlaneTrace.start = vecStart + traceDirection.Up().Scale(-0.01);
		tPlaneTrace.end = tPlaneTrace.start + vecDir.Scale(TRACE_MAX_DISTANCE);

		::TraceLine(tPlaneTrace); vecPointB = tPlaneTrace.pos;
		
		tTraceResult.planenormal <- (vecPointA - tTrace.pos).Cross(vecPointB - tTrace.pos).Scale(100000).Normalize();
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

/*===============================*\
 *     ConVar Class Functions    *
\*===============================*/

/** Create a new console variable
* Signature: CConVar VSLU::CreateConVar(string name, string defaultValue, string variableType, float minValue, float maxValue)
*/

function VSLU::CreateConVar(sName, sDefaultValue, sType = null, flMinValue = null, flMaxValue = null)
{
	foreach (cvar in VSLU.aConVars)
	{
		if (cvar.GetName() == sName)
		{
			printf("[VSLU::CreateConVar] ConVar '%s' already created", sName);
			return cvar;
		}
	}

	sDefaultValue = sDefaultValue.tostring();

	local cvar = VSLU.CConVar(sName, sDefaultValue, sType, flMinValue, flMaxValue);
	local cvar_value = Convars.GetStr(sName);

	printf("[VSLU::CreateConVar] ConVar '%s' with default value '%s' has been created", sName, sDefaultValue);

	VSLU.aConVars.push(cvar);

	if (!cvar_value) SendToServerConsole(format("setinfo %s \"%s\"", sName, sDefaultValue));
	else if (sDefaultValue != cvar_value) cvar.m_sValue = cvar_value;

	return cvar;
}

/** Remove a console variable
* Signature: void VSLU::RemoveConVar(ConVar cvar)
*/

function VSLU::RemoveConVar(cvarToRemove)
{
	foreach (idx, cvar in VSLU.aConVars)
	{
		if (cvarToRemove == cvar)
		{
			VSLU.aConVars.remove(idx);
			printf("[VSLU::RemoveConVar] ConVar '%s' has been removed", cvarToRemove.GetName());
			return;
		}
	}
}

/** Remove a console variable by given name
* Signature: void VSLU::RemoveConVarByName(string name)
*/

function VSLU::RemoveConVarByName(sName)
{
	foreach (idx, cvar in VSLU.aConVars)
	{
		if (sName == cvar.GetName())
		{
			VSLU.aConVars.remove(idx);
			printf("[VSLU::RemoveConVarByName] ConVar '%s' has been removed", sCommand);
			return;
		}
	}

	printf("[VSLU::RemoveConVarByName] ConVar '%s' is not created", sCommand);
}

/** Find a ConVar
* Signature: CConVar VSLU::FindConVar(string name)
*/

function VSLU::FindConVar(sName)
{
	foreach (cvar in VSLU.aConVars)
	{
		if (cvar.GetName() == sName)
			return cvar;
	}
}

/** Get a ConVar string
* Signature: string VSLU::GetConVarString(ConVar cvar)
*/

function VSLU::GetConVarString(convar)
{
	foreach (cvar in VSLU.aConVars)
	{
		if (cvar.GetName() == convar.GetName())
		{
			return cvar.GetValue();
		}
	}
}
/** Get a ConVar bool
* Signature: bool VSLU::GetConVarBool(ConVar cvar)
*/

function VSLU::GetConVarBool(convar)
{
	foreach (cvar in VSLU.aConVars)
	{
		if (cvar.GetName() == convar.GetName())
		{
			return cvar.GetValue() != "0" && cvar.GetValue() != "false";
		}
	}
}

/** Get a ConVar integer
* Signature: int VSLU::GetConVarInt(ConVar cvar)
*/

function VSLU::GetConVarInt(convar)
{
	foreach (cvar in VSLU.aConVars)
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
* Signature: float VSLU::GetConVarFloat(ConVar cvar)
*/

function VSLU::GetConVarFloat(convar)
{
	foreach (cvar in VSLU.aConVars)
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

/** Hook game event
* Signature: void VSLU::HookEvent(string event, function callFunction, table scope)
*/

function VSLU::HookEvent(sEvent, func, tScope = null)
{
	if (typeof sEvent != "string" || !(typeof func == "function" || typeof func == "native function"))
	{
		printl("[VSLU::HookEvent] Wrong type of variable");
		return;
	}

	if (!(sEvent in VSLU.tCallBackEvents))
	{
		VSLU.tCallBackEvents[sEvent] <- {};
		VSLU.tCallBackEvents[sEvent]["CallBack_Functions"] <- [];

		VSLU.tCallBackEvents[sEvent]["OnGameEvent_" + sEvent] <- function(tParams)
		{
			foreach (__func in VSLU.tCallBackEvents[sEvent]["CallBack_Functions"])
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
			printl("[VSLU::HookEvent] The specified function was not found in the certain scope");
			return;
		}

		foreach (func in VSLU.tCallBackEvents[sEvent]["CallBack_Functions"])
		{
			if (func == sFunction)
			{
				printf("[VSLU::HookEvent] Event hook function '%s' already registered", sFunction);
				return;
			}
		}

		printf("[VSLU::HookEvent] Event hook function '%s' has been registered for the game event '%s'", sFunction, sEvent);
		VSLU.tCallBackEvents[sEvent]["CallBack_Functions"].push(func);
	}
	else
	{
		printl("[VSLU::HookEvent] Invalid function specified");
		return;
	}

	__CollectEventCallbacks(VSLU.tCallBackEvents[sEvent], "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
}

/** Unhook game event or function
* Signature: void VSLU::UnhookEvent(string event, function callFunction, table scope)
*/

function VSLU::UnhookEvent(sEvent, func, tScope = null)
{
	if (typeof sEvent != "string")
	{
		printl("[VSLU::UnhookEvent] Wrong type of variable");
		return;
	}

	if (sEvent in VSLU.tCallBackEvents)
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
					printl("[VSLU::UnhookEvent] The specified function was not found in the certain scope");
					return;
				}

				foreach (idx, __func in VSLU.tCallBackEvents[sEvent]["CallBack_Functions"])
				{
					if (__func == func)
					{
						printf("[VSLU::UnhookEvent] Function '%s' has been unhooked for the game event '%s'", sFunction, sEvent);
						VSLU.tCallBackEvents[sEvent]["CallBack_Functions"].remove(idx);
						return;
					}
				}

				printf("[VSLU::UnhookEvent] Hook function '%s' is not registered", sFunction);
				return;
			}

			printl("[VSLU::UnhookEvent] Wrong type of variable");
			return;
		}
		else
		{
			printf("[VSLU::UnhookEvent] Game event '%s' has been unhooked", sEvent);
			delete VSLU.tCallBackEvents[sEvent];
			return;
		}
	}

	printf("[UnhookEvent] Event '%s' is not registered", sEvent); 
}

/** Unhook all game events
* Signature: void VSLU::UnhookAllEvents()
*/

function VSLU::UnhookAllEvents()
{
	foreach (event, val in VSLU.tCallBackEvents)
		delete VSLU.tCallBackEvents[event];
	
	printl("[VSLU::UnhookAllEvents] All events have been unhooked");
}

/** Register loop function
* Signature: CLoopFunction VSLU::RegisterLoopFunction(string callFunction, float refireTime, any args)
*/

function VSLU::RegisterLoopFunction(sFunction, flRefireTime, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[VSLU::RegisterLoopFunction] Wrong type of variable");
		return;
	}

	if (!VSLU.IsFunctionExist(sFunction))
	{
		printf("[VSLU::RegisterLoopFunction] Function '%s' doesn't exist", sFunction);
		return;
	}

	Assert( flRefireTime > 0.0, "flRefireTime > 0.0" );

	foreach (func in VSLU.aLoopFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			local aVars = clone func.GetArguments();
			aVars.remove(0);

			printf("[VSLU::RegisterLoopFunction] Function '%s' already registered", sFunction);
			return;
		}
	}

	local sName = VSLU_LOOPFUNC_PREFIX + sFunction.tolower();
	local hTimer = Entities.FindByName(null, sName);

	if (!hTimer)
	{
		local __loop_func = VSLU.CLoopFunction(sFunction, flRefireTime, vargv);
		hTimer = SpawnEntityFromTable("logic_script", {targetname = sName});

		VSLU.SetScriptScopeVar(hTimer, "__vslu_loop_params", {
			__func = sFunction
			__with_args = vargv.len() > 0
			__args = __loop_func.GetArguments()
		});

		VSLU.SetScriptScopeVar(hTimer, "Think", function(){
			if (this["__vslu_loop_params"].__with_args)
			{
				VSLU.CreateTimer(flRefireTime, function(sFunction, aInputArgs){
					if (VSLU.IsFunctionExist(sFunction))
						compilestring("return " + sFunction)().acall(aInputArgs);
				}, this["__vslu_loop_params"].__func, this["__vslu_loop_params"].__args);
			}
			else 
			{
				VSLU.CallScriptFunction(sFunction, flRefireTime, self, self);
			}

			VSLU.CallScriptFunction("Think", flRefireTime, self, self);
		});

		if (vargv.len() > 0)
		{
			VSLU.CreateTimer(0.01, function(sFunction, aInputArgs){
				compilestring("return " + sFunction)().acall(aInputArgs);
			}, sFunction, __loop_func.GetArguments());
		}
		else
		{
			VSLU.CallScriptFunction(sFunction, 0.01, hTimer, hTimer);
		}
		
		VSLU.CallScriptFunction("Think", 0.01, hTimer, hTimer);
		
		if (vargv.len() > 0)
		{
			local sVars = "";

			foreach (idx, var in vargv)
			{
				if (vargv.len() - 1 == idx)
					sVars += var;
				else
					sVars += var + ", ";
			}

			printf("[VSLU::RegisterLoopFunction] Function '%s' with refire time '%.02f' and input variables: '%s' has been registered", sFunction, flRefireTime, sVars);
		}
		else
		{
			printf("[VSLU::RegisterLoopFunction] Function '%s' with refire time '%.02f' has been registered", sFunction, flRefireTime);
		}

		VSLU.aLoopFunctions.push(__loop_func);
	}
	else
	{
		hTimer.Kill();

		if (vargv.len() > 0)
		{
			local aVars = [this, sFunction, flRefireTime];
			aVars.extend(vargv);

			VSLU.RegisterLoopFunction.acall(aVars);
			return;
		}

		VSLU.RegisterLoopFunction(sFunction, flRefireTime);
	}
}

/** Remove loop function
* Signature: void VSLU::RemoveLoopFunction(string callFunction, any args)
*/

function VSLU::RemoveLoopFunction(sFunction, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[VSLU::RemoveLoopFunction] Wrong type of variable");
		return;
	}

	if (!VSLU.IsFunctionExist(sFunction))
	{
		printf("[VSLU::RemoveLoopFunction] Function '%s' doesn't exist", sFunction);
		return;
	}

	foreach (idx, func in VSLU.aLoopFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			if (vargv.len() > 0)
			{
				local aVars = clone func.GetArguments();
				aVars.remove(0);

				if (VSLU.AreArraysEqual(aVars, vargv))
				{
					local sVars = "";
					local hTimer = Entities.FindByName(null, func.GetTimerName());

					if (hTimer) hTimer.Kill();

					foreach (idx, var in vargv)
					{
						if (vargv.len() - 1 == idx) sVars += var;
						else sVars += var + ", ";
					}

					printf("[VSLU::RemoveLoopFunction] Function '%s' with input variables: '%s' has been removed", sFunction, sVars);
					VSLU.aLoopFunctions.remove(idx);
					return;
				}
			}
			else
			{
				local hTimer = Entities.FindByName(null, func.GetTimerName());

				if (hTimer) hTimer.Kill();

				printf("[VSLU::RemoveLoopFunction] Function '%s' has been removed", sFunction);
				VSLU.aLoopFunctions.remove(idx);
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

		printf("[VSLU::RemoveLoopFunction] Function '%s' with input variables: '%s' is not registered", sFunction, sVars);
	}
	else
	{
		printf("[VSLU::RemoveLoopFunction] Function '%s' is not registered", sFunction);
	}
}

/** Is loop function registered
* Signature: bool VSLU::IsLoopFunctionRegistered(string callFunction, any args)
*/

function VSLU::IsLoopFunctionRegistered(sFunction, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[VSLU::IsLoopFunctionRegistered] Wrong type of variable");
		return;
	}

	if (!VSLU.IsFunctionExist(sFunction))
	{
		printf("[VSLU::IsLoopFunctionRegistered] Function '%s' doesn't exist", sFunction);
		return;
	}

	foreach (idx, func in VSLU.aLoopFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			local aVars = clone func.GetArguments();
			aVars.remove(0);

			if (VSLU.AreArraysEqual(aVars, vargv))
				return true;
		}
	}

	return false;
}

/* Registration of functions called every tick */

/** Register on tick function
* Signature: COnTickFunction VSLU::RegisterOnTickFunction(string callFunction, args)
*/

function VSLU::RegisterOnTickFunction(sFunction, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[VSLU::RegisterOnTickFunction] Wrong type of variable");
		return;
	}

	if (!VSLU.IsFunctionExist(sFunction))
	{
		printl("[VSLU::RegisterOnTickFunction] The specified function doesn't exist");
		return;
	}

	foreach (func in VSLU.aOnTickFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			local aVars = clone func.GetArguments();
			aVars.remove(0);

			if (VSLU.AreArraysEqual(aVars, vargv))
			{
				printf("[VSLU::RegisterOnTickFunction] Function '%s' already registered", sFunction);
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

		printf("[VSLU::RegisterOnTickFunction] Function '%s' with input variables: '%s' has been registered", sFunction, sVars);
	}
	else
	{
		printf("[VSLU::RegisterOnTickFunction] Function '%s' has been registered", sFunction);
	}

	VSLU.aOnTickFunctions.push(VSLU.COnTickFunction(sFunction, vargv));
}

/** Remove on tick function
* Signature: void VSLU::RemoveOnTickFunction(string callFunction, args)
*/

function VSLU::RemoveOnTickFunction(sFunction, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[VSLU::RemoveOnTickFunction] Wrong type of variable");
		return;
	}

	if (!VSLU.IsFunctionExist(sFunction))
	{
		printl("[VSLU::RemoveOnTickFunction] The specified function doesn't exist");
		return;
	}

	foreach (idx, func in VSLU.aOnTickFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			if (vargv.len() > 0)
			{
				local aVars = clone func.GetArguments();
				aVars.remove(0);

				if (VSLU.AreArraysEqual(aVars, vargv))
				{
					local sVars = "";

					foreach (idx, var in vargv)
					{
						if (vargv.len() - 1 == idx) sVars += var;
						else sVars += var + ", ";
					}

					printf("[VSLU::RemoveOnTickFunction] Function '%s' with input variables: '%s' has been removed", sFunction, sVars);

					VSLU.aOnTickFunctions.remove(idx);
					return
				}
			}
			else
			{
				printf("[VSLU::RemoveOnTickFunction] Function '%s' has been removed", sFunction);

				VSLU.aOnTickFunctions.remove(idx);
				return
			}
		}
	}

	if (vargv.len() > 0)
	{
		local sVars = "";

		foreach (idx, var in vargv)
		{
			if (vargv.len() - 1 == idx)
				sVars += var;
			else
				sVars += var + ", ";
		}

		printf("[VSLU::RemoveOnTickFunction] Function '%s' with input variables: '%s' is not registered", sFunction, sVars);
	}
	else
	{
		printf("[VSLU::RemoveOnTickFunction] Function '%s' is not registered", sFunction);
	}
}

/** Is on tick function registered
* Signature: bool VSLU::IsOnTickFunctionRegistered(string callFunction, args)
*/

function VSLU::IsOnTickFunctionRegistered(sFunction, ...)
{
	if (typeof sFunction != "string")
	{
		printl("[VSLU::IsOnTickFunctionRegistered] Wrong type of variable");
		return;
	}

	if (!VSLU.IsFunctionExist(sFunction))
	{
		printl("[VSLU::IsOnTickFunctionRegistered] The specified function doesn't exist");
		return;
	}

	foreach (idx, func in VSLU.aOnTickFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			local aVars = clone func.GetArguments();
			aVars.remove(0);

			if (VSLU.AreArraysEqual(aVars, vargv))
				return true;
		}
	}

	return false;
}

/** Register callback function for a specified button
* Signature: CButtonListener VSLU::RegisterButtonListener(int button, string callFunction, int presstype, int team)
*/

function VSLU::RegisterButtonListener(iButton, sFunction, iType = BUTTON_STATE_PRESSED, iTeam = TEAM_EVERYONE)
{
	if (typeof iButton == "integer" && typeof sFunction == "string" && typeof iTeam == "integer" && typeof iType == "integer")
	{
		Assert( iType >= BUTTON_STATE_PRESSED && iType <= BUTTON_STATE_HOLD, "Invalid button type", true );
		Assert( iTeam >= TEAM_SURVIVOR && iTeam <= TEAM_EVERYONE, "Invalid team", true );

		foreach (button in VSLU.aButtonsListener)
		{
			if (button.GetButton() == iButton && button.GetFunctionName() == sFunction)
			{
				printf("[VSLU::RegisterButtonListener] Button '%d' with callback function '%s' already registered", iButton, sFunction);
				return;
			}
		}

		local __buttonlistener = VSLU.CButtonListener(iButton, sFunction, iType, iTeam);

		printf("[VSLU::RegisterButtonListener] Button '%d' with callback function '%s' has been registered", iButton, sFunction);
		VSLU.aButtonsListener.push(__buttonlistener);

		return __buttonlistener;
	}
	else
	{
		printl("[VSLU::RegisterButtonListener] Wrong type of variable");
	}
}

/** Remove registered button or bound callback function
* Signature: bool VSLU::RemoveButtonListener(int button, string callFunction)
*/

function VSLU::RemoveButtonListener(iButton, sFunction = null)
{
	if (typeof iButton != "integer")
	{
		printl("[VSLU::RemoveButtonListener] Wrong type of variable");
		return;
	}

	local bFound = false;

	if (sFunction == null)
	{
		for (local i = 0; i < VSLU.aButtonsListener.len(); ++i)
		{
			if (VSLU.aButtonsListener[i].GetButton() == iButton)
			{
				bFound = true;

				VSLU.aButtonsListener.remove(i);
				--i;
			}
		}
	}
	else
	{
		foreach (idx, button in VSLU.aButtonsListener)
		{
			if (button.GetButton() == iButton && button.GetFunctionName() == sFunction)
			{
				printf("[VSLU::RemoveButtonListener] Callback function '%s' for button '%d' has been removed", sFunction, iButton);
				VSLU.aButtonsListener.remove(idx);
				return true;
			}
		}
	}

	if (bFound)
	{
		printf("[VSLU::RemoveButtonListener] Button '%d' has been removed", iButton);
		return true;
	}
	else
	{
		printf("[VSLU::RemoveButtonListener] Button '%d' is not registered", iButton);
	}

	return false;
}

/* Registration of custom chat commands */

/** Register chat command
* Signature: bool VSLU::RegisterChatCommand(string command, function callFunction)
*/

function VSLU::RegisterChatCommand(sCommand, func)
{
	if (typeof sCommand == "string" && typeof func == "function")
	{
		sCommand = sCommand.tolower();

		if (sCommand in VSLU.tChatCommands)
		{
			printf("[VSLU::RegisterChatCommand] Chat command '%s' already registered", sCommand);
		}
		else
		{
			VSLU.tChatCommands[sCommand] <- func;
			printf("[VSLU::RegisterChatCommand] Chat command '%s' has been registered", sCommand);

			return true;
		}
	}
	else
	{
		printl("[VSLU::RegisterChatCommand] Wrong type of variable");
	}

	return false;
}

/** Remove chat command
* Signature: bool VSLU::RemoveChatCommand(string command)
*/

function VSLU::RemoveChatCommand(sCommand = null)
{
	if (typeof sCommand != "string")
	{
		printl("[VSLU::RemoveChatCommand] Wrong type of variable");
	}
	else
	{
		sCommand = sCommand.tolower();

		if (sCommand in VSLU.tChatCommands)
		{
			printf("[VSLU::RemoveChatCommand] Chat command '%s' has been removed", sCommand);
			delete VSLU.tChatCommands[sCommand];

			return true;
		}
		else
		{
			printf("[VSLU::RemoveChatCommand] Chat command '%s' is not registered", sCommand);
		}
	}

	return false;
}

/** Register user console command
* Signature: bool VSLU::RegisterConsoleCommand(string command, function callFunction)
*/

function VSLU::RegisterConsoleCommand(sCommand, func)
{
	if (typeof sCommand == "string" && typeof func == "function")
	{
		sCommand = sCommand.tolower();

		if (sCommand in VSLU.tConsoleCommands)
		{
			printf("[VSLU::RegisterConsoleCommand] Console command '%s' already registered", sCommand);
		}
		else
		{
			VSLU.tConsoleCommands[sCommand] <- func;
			printf("[VSLU::RegisterConsoleCommand] Console command '%s' has been registered", sCommand);

			return true;
		}
	}
	else
	{
		printl("[VSLU::RegisterConsoleCommand] Wrong type of variable");
	}

	return false;
}

/** Remove user console command
* Signature: void VSLU::RemoveConsoleCommand(string command)
*/

function VSLU::RemoveConsoleCommand(sCommand = null)
{
	if (typeof sCommand != "string")
	{
		printl("[VSLU::RemoveConsoleCommand] Wrong type of variable");
	}
	else
	{
		sCommand = sCommand.tolower();

		if (sCommand in VSLU.tConsoleCommands)
		{
			printf("[VSLU::RemoveConsoleCommand] Console command '%s' has been removed", sCommand);
			delete VSLU.tConsoleCommands[sCommand];

			return true;
		}
		else
		{
			printf("[VSLU::RemoveConsoleCommand] Console command '%s' is not registered", sCommand);
		}
	}

	return false;
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

function VSLU::Events::OnRoundStart(tParams)
{
	::__vslu_init_scmp_hooks();

	foreach (func in VSLU.Hooks.OnRoundStart)
	{
		try
		{
			func();
		}
		catch (e)
		{
			errorl("[VSLU::Events::OnRoundStart -> VSLU::Hooks::OnRoundStart()] " + e);
			errorl("[VSLU::Events::OnRoundStart -> VSLU::Hooks::OnRoundStart()] An error has occurred in a callback function");
		}
	}
	
	foreach (scriptPlugin in VSLU.aScriptPlugins)
	{
		try
		{
			scriptPlugin.Load();
		}
		catch (e)
		{
			errorl("[VSLU::Events::OnRoundStart -> VSLU::IScriptPlugin::Load()] " + e);
			errorl("[VSLU::Events::OnRoundStart -> VSLU::IScriptPlugin::Load()] An error has occurred in a callback function of the script plugin: " + scriptPlugin.GetScriptPluginName());
		}
	}

	VSLU.CreateTimer(0.01, function(){
		foreach (func in ::VSLU.Hooks.OnRoundStartPost)
		{
			try
			{
				func();
			}
			catch (e)
			{
				errorl("[VSLU::Events::OnRoundStart -> VSLU::Hooks::OnRoundStartPost()] " + e);
				errorl("[VSLU::Events::OnRoundStart -> VSLU::Hooks::OnRoundStartPost()] An error has occurred in a callback function");
			}
		}
		
		foreach (scriptPlugin in VSLU.aScriptPlugins)
		{
			try
			{
				scriptPlugin.OnRoundStartPost();
			}
			catch (e)
			{
				errorl("[VSLU::Events::OnRoundStart -> IScriptPlugin::OnRoundStartPost()] " + e);
				errorl("[VSLU::Events::OnRoundStart -> IScriptPlugin::OnRoundStartPost()] An error has occurred in a callback function of the script plugin: " + scriptPlugin.GetScriptPluginName());
			}
		}

		VSLU.Hooks.OnRoundStartPost.clear();
	});

	VSLU.Hooks.OnRoundStart.clear();
}

function VSLU::Events::OnRoundEnd(tParams)
{
	foreach (func in VSLU.Hooks.OnRoundEnd)
	{
		try
		{
			func();
		}
		catch (e)
		{
			errorl("[VSLU::Events::OnRoundEnd -> VSLU::Hooks::OnRoundEnd()] " + e);
			errorl("[VSLU::Events::OnRoundEnd -> VSLU::Hooks::OnRoundEnd()] An error has occurred in a callback function");
		}
	}

	foreach (scriptPlugin in VSLU.aScriptPlugins)
	{
		try
		{
			scriptPlugin.OnRoundEnd();
		}
		catch (e)
		{
			errorl("[VSLU::Events::OnRoundEnd -> VSLU::IScriptPlugin::OnRoundEnd()] " + e);
			errorl("[VSLU::Events::OnRoundEnd -> VSLU::IScriptPlugin::OnRoundEnd()] An error has occurred in a callback function of the script plugin: " + scriptPlugin.GetScriptPluginName());
		}
	}
	
	delete ::vslu_ifaces_initialized;
}

function VSLU::Events::OnPlayerSay(tParams)
{
	local hPlayer = tParams["_player"];
	local sText = tParams.text.tolower();

	if (hPlayer)
	{
		if (sText == "!vslu_plugins")
		{
			if ("ClientPrint" in getroottable())
			{
				local it = 1;
				local sPlugins = "[Script Plugins List]\n";

				foreach (plugin in VSLU.aScriptPlugins)
				{
					sPlugins += "[" + it++ + "] " + plugin.GetScriptPluginName() + "\n"; 
				}

				ClientPrint(hPlayer, HUD_PRINTCONSOLE, sPlugins);
			}
		}
		else if (VSLU.tChatCommands.len() > 0)
		{
			local args = split(sText, " ");
			local sCommand = args[0];

			if (sCommand in VSLU.tChatCommands)
			{
				local func = VSLU.tChatCommands[sCommand];

				if (args.len() > 1)
				{
					args.remove(0);
				}
				else
				{
					args = null;
				}

				func(hPlayer, args);
			}
		}
	}
}

function VSLU::CheckButtons(hPlayer, button)
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

function VSLU::ProcessHooks_Think()
{
	if (VSLU.Hooks.OnIteratePlayersPerTick.len() > 0 || VSLU.aButtonsListener.len() > 0)
	{
		local hPlayer;
		local OnIteratePlayersPerTick_callbacks = clone VSLU.Hooks.OnIteratePlayersPerTick;

		while (hPlayer = Entities.FindByClassname(hPlayer, "player"))
		{
			foreach (button in VSLU.aButtonsListener)
			{
				local team = button.GetTeam();

				if (team == TEAM_EVERYONE)
				{
					VSLU.CheckButtons(hPlayer, button);
				}
				else if (team == TEAM_SURVIVOR)
				{
					if (hPlayer.IsSurvivor())
						VSLU.CheckButtons(hPlayer, button);
				}
				else
				{
					VSLU.CheckButtons(hPlayer, button);
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
				catch (e)
				{
					errorl("[VSLU::Hooks Watchdog] " + e);
					errorl("[VSLU::Hooks Watchdog] An error has occurred, OnIteratePlayersPerTick's hook function has been removed");

					VSLU.Hooks.OnIteratePlayersPerTick.remove(i);
					OnIteratePlayersPerTick_callbacks.remove(i);

					--i;
				}
			}
		}
	}
}

function VSLU_Think()
{
	local idx = 0;
	local length = VSLU.aTimers.len();

	VSLU.ProcessHooks_Think();

	// Functions called per tick
	for (local i = 0; i < VSLU.aOnTickFunctions.len(); ++i)
	{
		try
		{
			VSLU.aOnTickFunctions[i].GetCallingFunction().acall(VSLU.aOnTickFunctions[i].GetArguments());
		}
		catch (e)
		{
			errorl("[VSLU::OnTickFunction Watchdog] " + e);
			errorl("[VSLU::OnTickFunction Watchdog] An error has occurred, on tick function has been removed");

			VSLU.aOnTickFunctions.remove(i);
			--i;
		}
	}

	// Timers
	while (idx < length)
	{
		if (VSLU.aTimers[idx].GetCallTime() <= Time())
		{
			try
			{
				VSLU.aTimers[idx].GetCallingFunction().acall(VSLU.aTimers[idx].GetArguments());
			}
			catch (e)
			{
				errorl("[VSLU::Timer Watchdog] " + e);
				errorl("[VSLU::Timer Watchdog] An error has occurred, a calling task has been removed");
			}

			VSLU.aTimers.remove(idx);
			--length;

			continue;
		}

		++idx;
	}

	idx = 0;
	length = VSLU.aConVars.len();

	// ConVars
	while (idx < length)
	{
		local cvar = VSLU.aConVars[idx];
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
						
						NewValue = VSLU.Math.Clamp(NewValue, min, max);
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
						
						NewValue = VSLU.Math.Clamp(NewValue, min, max);
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
			catch (e)
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

/*===============================================*\
* Method of intercepting SCMP functions by smilzo *
*  steamcommunity.com/profiles/76561198015804349  *
\*===============================================*/

function __vslu_init_scmp_hooks()
{
	if ( !VSLU.ScriptedModeHooks.Enable )
		return;

	local roottable = getroottable();

	// if ( !VSLU.ScriptedModeHooks.Initialized )
	// {
		// UserConsoleCommand
		if ("UserConsoleCommand" in roottable && roottable.UserConsoleCommand != null && roottable.UserConsoleCommand != VSLU.ScriptedModeHooks.UserConsoleCommand)
		{
			VSLU.ScriptedModeHooks.tUserConsoleCommandFuncs["__vslu_root"] <- roottable.UserConsoleCommand;
			roottable.UserConsoleCommand <- VSLU.ScriptedModeHooks.UserConsoleCommand;
		}
		if ("UserConsoleCommand" in g_ModeScript && g_ModeScript.UserConsoleCommand != null && g_ModeScript.UserConsoleCommand != VSLU.ScriptedModeHooks.UserConsoleCommand && VSLU.FindKeyFromValueInScope(g_ModeScript.UserConsoleCommand, VSLU.ScriptedModeHooks.tUserConsoleCommandFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tUserConsoleCommandFuncs["__vslu_modescript"] <- g_ModeScript.UserConsoleCommand;
			g_ModeScript.UserConsoleCommand <- null;
		}
		if ("UserConsoleCommand" in g_MapScript && g_MapScript.UserConsoleCommand != null && g_MapScript.UserConsoleCommand != VSLU.ScriptedModeHooks.UserConsoleCommand && VSLU.FindKeyFromValueInScope(g_MapScript.UserConsoleCommand, VSLU.ScriptedModeHooks.tUserConsoleCommandFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tUserConsoleCommandFuncs["__vslu_mapscript"] <- g_MapScript.UserConsoleCommand;
			g_MapScript.UserConsoleCommand <- null;
		}

		// InterceptChat
		if ("InterceptChat" in roottable && roottable.InterceptChat != null && roottable.InterceptChat != VSLU.ScriptedModeHooks.InterceptChat)
		{
			VSLU.ScriptedModeHooks.tInterceptChatFuncs["__vslu_root"] <- roottable.InterceptChat;
			roottable.InterceptChat <- VSLU.ScriptedModeHooks.InterceptChat;
		}
		if ("InterceptChat" in g_ModeScript && g_ModeScript.InterceptChat != null && g_ModeScript.InterceptChat != VSLU.ScriptedModeHooks.InterceptChat && VSLU.FindKeyFromValueInScope(g_ModeScript.InterceptChat, VSLU.ScriptedModeHooks.tInterceptChatFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tInterceptChatFuncs["__vslu_modescript"] <- g_ModeScript.InterceptChat;
			g_ModeScript.InterceptChat <- null;
		}
		if ("InterceptChat" in g_MapScript && g_MapScript.InterceptChat != null && g_MapScript.InterceptChat != VSLU.ScriptedModeHooks.InterceptChat && VSLU.FindKeyFromValueInScope(g_MapScript.InterceptChat, VSLU.ScriptedModeHooks.tInterceptChatFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tInterceptChatFuncs["__vslu_mapscript"] <- g_MapScript.InterceptChat;
			g_MapScript.InterceptChat <- null;
		}

		// AllowBash
		if ("AllowBash" in roottable && roottable.AllowBash != null && roottable.AllowBash != VSLU.ScriptedModeHooks.AllowBash)
		{
			VSLU.ScriptedModeHooks.tAllowBashFuncs["__vslu_root"] <- roottable.AllowBash;
			roottable.AllowBash <- VSLU.ScriptedModeHooks.AllowBash;
		}
		if ("AllowBash" in g_ModeScript && g_ModeScript.AllowBash != null && g_ModeScript.AllowBash != VSLU.ScriptedModeHooks.AllowBash && VSLU.FindKeyFromValueInScope(g_ModeScript.AllowBash, VSLU.ScriptedModeHooks.tAllowBashFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tAllowBashFuncs["__vslu_modescript"] <- g_ModeScript.AllowBash;
			g_ModeScript.AllowBash <- null;
		}
		if ("AllowBash" in g_MapScript && g_MapScript.AllowBash != null && g_MapScript.AllowBash != VSLU.ScriptedModeHooks.AllowBash && VSLU.FindKeyFromValueInScope(g_MapScript.AllowBash, VSLU.ScriptedModeHooks.tAllowBashFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tAllowBashFuncs["__vslu_mapscript"] <- g_MapScript.AllowBash;
			g_MapScript.AllowBash <- null;
		}

		// AllowTakeDamage
		if ("AllowTakeDamage" in roottable && roottable.AllowTakeDamage != null && roottable.AllowTakeDamage != VSLU.ScriptedModeHooks.AllowTakeDamage)
		{
			VSLU.ScriptedModeHooks.tAllowTakeDamageFuncs["__vslu_root"] <- roottable.AllowTakeDamage;
			roottable.AllowTakeDamage <- VSLU.ScriptedModeHooks.AllowTakeDamage;
		}
		if ("AllowTakeDamage" in g_ModeScript && g_ModeScript.AllowTakeDamage != null && g_ModeScript.AllowTakeDamage != VSLU.ScriptedModeHooks.AllowTakeDamage && VSLU.FindKeyFromValueInScope(g_ModeScript.AllowTakeDamage, VSLU.ScriptedModeHooks.tAllowTakeDamageFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tAllowTakeDamageFuncs["__vslu_modescript"] <- g_ModeScript.AllowTakeDamage;
			g_ModeScript.AllowTakeDamage <- null;
		}
		if ("AllowTakeDamage" in g_MapScript && g_MapScript.AllowTakeDamage != null && g_MapScript.AllowTakeDamage != VSLU.ScriptedModeHooks.AllowTakeDamage && VSLU.FindKeyFromValueInScope(g_MapScript.AllowTakeDamage, VSLU.ScriptedModeHooks.tAllowTakeDamageFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tAllowTakeDamageFuncs["__vslu_mapscript"] <- g_MapScript.AllowTakeDamage;
			g_MapScript.AllowTakeDamage <- null;
		}
		
		// BotQuery
		if ("BotQuery" in roottable && roottable.BotQuery != null && roottable.BotQuery != VSLU.ScriptedModeHooks.BotQuery)
		{
			VSLU.ScriptedModeHooks.tBotQueryFuncs["__vslu_root"] <- roottable.BotQuery;
			roottable.BotQuery <- VSLU.ScriptedModeHooks.BotQuery;
		}
		if ("BotQuery" in g_ModeScript && g_ModeScript.BotQuery != null && g_ModeScript.BotQuery != VSLU.ScriptedModeHooks.BotQuery && VSLU.FindKeyFromValueInScope(g_ModeScript.BotQuery, VSLU.ScriptedModeHooks.tBotQueryFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tBotQueryFuncs["__vslu_modescript"] <- g_ModeScript.BotQuery;
			g_ModeScript.BotQuery <- null;
		}
		if ("BotQuery" in g_MapScript && g_MapScript.BotQuery != null && g_MapScript.BotQuery != VSLU.ScriptedModeHooks.BotQuery && VSLU.FindKeyFromValueInScope(g_MapScript.BotQuery, VSLU.ScriptedModeHooks.tBotQueryFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tBotQueryFuncs["__vslu_mapscript"] <- g_MapScript.BotQuery;
			g_MapScript.BotQuery <- null;
		}
		
		// CanPickupObject
		if ("CanPickupObject" in roottable && roottable.CanPickupObject != null && roottable.CanPickupObject != VSLU.ScriptedModeHooks.CanPickupObject)
		{
			VSLU.ScriptedModeHooks.tCanPickupObjectFuncs["__vslu_root"] <- roottable.CanPickupObject;
			roottable.CanPickupObject <- VSLU.ScriptedModeHooks.CanPickupObject;
		}
		if ("CanPickupObject" in g_ModeScript && g_ModeScript.CanPickupObject != null && g_ModeScript.CanPickupObject != VSLU.ScriptedModeHooks.CanPickupObject && VSLU.FindKeyFromValueInScope(g_ModeScript.CanPickupObject, VSLU.ScriptedModeHooks.tCanPickupObjectFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tCanPickupObjectFuncs["__vslu_modescript"] <- g_ModeScript.CanPickupObject;
			g_ModeScript.CanPickupObject <- null;
		}
		if ("CanPickupObject" in g_MapScript && g_MapScript.CanPickupObject != null && g_MapScript.CanPickupObject != VSLU.ScriptedModeHooks.CanPickupObject && VSLU.FindKeyFromValueInScope(g_MapScript.CanPickupObject, VSLU.ScriptedModeHooks.tCanPickupObjectFuncs) == null)
		{
			VSLU.ScriptedModeHooks.tCanPickupObjectFuncs["__vslu_mapscript"] <- g_MapScript.CanPickupObject;
			g_MapScript.CanPickupObject <- null;
		}
	// }
	// else
	if ( VSLU.ScriptedModeHooks.Initialized )
	{
		roottable.UserConsoleCommand <- VSLU.ScriptedModeHooks.UserConsoleCommand;
		g_ModeScript.UserConsoleCommand <- VSLU.ScriptedModeHooks.UserConsoleCommand;

		roottable.InterceptChat <- VSLU.ScriptedModeHooks.InterceptChat;
		g_ModeScript.InterceptChat <- VSLU.ScriptedModeHooks.InterceptChat;

		roottable.AllowBash <- VSLU.ScriptedModeHooks.AllowBash;
		g_ModeScript.AllowBash <- VSLU.ScriptedModeHooks.AllowBash;

		roottable.AllowTakeDamage <- VSLU.ScriptedModeHooks.AllowTakeDamage;
		g_ModeScript.AllowTakeDamage <- VSLU.ScriptedModeHooks.AllowTakeDamage;

		roottable.BotQuery <- VSLU.ScriptedModeHooks.BotQuery;
		g_ModeScript.BotQuery <- VSLU.ScriptedModeHooks.BotQuery;

		roottable.CanPickupObject <- VSLU.ScriptedModeHooks.CanPickupObject;
		g_ModeScript.CanPickupObject <- VSLU.ScriptedModeHooks.CanPickupObject;
	}

	// VSLib stuff
	if ("ModeUserConsoleCommand" in g_ModeScript)
		delete g_ModeScript.ModeUserConsoleCommand;
	if ("MapUserConsoleCommand" in g_ModeScript)
		delete g_ModeScript.MapUserConsoleCommand;

	if ("ModeInterceptChat" in g_ModeScript)
		delete g_ModeScript.ModeInterceptChat;
	if ("MapInterceptChat" in g_ModeScript)
		delete g_ModeScript.MapInterceptChat;
		
	if ("ModeAllowBash" in g_ModeScript)
		delete g_ModeScript.ModeAllowBash;
	if ("MapAllowBash" in g_ModeScript)
		delete g_ModeScript.MapAllowBash;

	if ("ModeAllowTakeDamage" in g_ModeScript)
		delete g_ModeScript.ModeAllowTakeDamage;
	if ("MapAllowTakeDamage" in g_ModeScript)
		delete g_ModeScript.MapAllowTakeDamage;
		
	if ("ModeBotQuery" in g_ModeScript)
		delete g_ModeScript.ModeBotQuery;
	if ("MapBotQuery" in g_ModeScript)
		delete g_ModeScript.MapBotQuery;
		
	if ("ModeCanPickupObject" in g_ModeScript)
		delete g_ModeScript.ModeCanPickupObject;
	if ("MapCanPickupObject" in g_ModeScript)
		delete g_ModeScript.MapCanPickupObject;

	VSLU.ScriptedModeHooks.Initialized = true;
}

VSLU.RegisterLoopFunction("VSLU_Think", 0.01);

VSLU.HookEvent("player_say", VSLU.Events.OnPlayerSay, VSLU.Events);
VSLU.HookEvent("round_start", VSLU.Events.OnRoundStart, VSLU.Events);
VSLU.HookEvent("round_end", VSLU.Events.OnRoundEnd, VSLU.Events);

// Get map name

if ( !VSLU.sMapName )
{
	function __vslu_get_query_data(queryData)
	{
		if (queryData["concept"] == "GetQueryData")
			::VSLU.sMapName = queryData["map"];

		return false;
	}

	if ( !("__vslu_rrule_get_query_data" in this) )
	{
		__vslu_rrule_get_query_data <- true;

		g_rr.rr_ProcessRules([
			{
				name = "__vslu_get_query_data"
				criteria = [ ["concept", "GetQueryData"], [__vslu_get_query_data] ]
				responses = [ { scenename = "" } ]
				group_params = g_rr.RGroupParams( { permitrepeats = true, sequential = false, norepeat = false } )
			}
		]);
	}

	if ( Entities.FindByClassname(null, "func_orator") )
	{
		EntFire("func_orator", "SpeakResponseConcept", "GetQueryData");
	}
	else
	{
		local orator;
		if (orator = SpawnEntityFromTable("func_orator", { targetname = "dummy_orator" }))
		{
			DoEntFire("!self", "SpeakResponseConcept", "GetQueryData", 0.0, null, orator);
			DoEntFire("!self", "Kill", "", 0.0, null, orator);
		}
	}
}

// Scripted Mode Hooks

if ( !("UserConsoleCommand" in VSLU.ScriptedModeHooks) )
{

function VSLU::ScriptedModeHooks::UserConsoleCommand(hPlayer, sArgs)
{
	foreach (key, func in VSLU.ScriptedModeHooks.tUserConsoleCommandFuncs)
	{
		try
		{
			func(hPlayer, sArgs);
		}
		catch (e)
		{
			errorl("[VSLU::ScriptedModeHooks::UserConsoleCommand Watchdog] An error has occurred: " + e);
		}
	}

	local tParamsHolder = { player = hPlayer, args = sArgs };
	local bParamsOverriden = false;
	local tParams = { player = hPlayer, args = sArgs };

	for (local i = 0; i < VSLU.Hooks.OnUserConsoleCommand.len(); ++i)
	{
		if ( bParamsOverriden )
		{
			tParams.player = tParamsHolder.player;
			tParams.args = tParamsHolder.args;
		}
		else
		{
			tParams.player = hPlayer;
			tParams.args = sArgs;
		}

		try
		{
			local hookReturnCode = VSLU.Hooks.OnUserConsoleCommand[i](tParams);

			if (hookReturnCode == HOOK_STOP)
			{
				tParamsHolder.player = tParams.player;
				tParamsHolder.args = tParams.args;
				break;
			}
			else if (hookReturnCode == HOOK_OVERRIDE && !bParamsOverriden)
			{
				tParamsHolder.player = tParams.player;
				tParamsHolder.args = tParams.args;

				bParamsOverriden = true;
			}
		}
		catch (e)
		{
			errorl("[VSLU::Hooks::UserConsoleCommand Watchdog] " + e);
			errorl("[VSLU::Hooks::UserConsoleCommand Watchdog] An error has occurred, a hook function has been removed");

			VSLU.Hooks.OnUserConsoleCommand.remove(i);
			--i;
		}
	}

	hPlayer = tParamsHolder.player;
	sArgs = tParamsHolder.args;

	if (hPlayer && sArgs)
	{
		sArgs = sArgs.tolower();

		if (sArgs == "vslu_plugins")
		{
			if ("ClientPrint" in getroottable())
			{
				local it = 1;
				local sPlugins = "[Script Plugins List]\n";

				foreach (plugin in VSLU.aScriptPlugins)
				{
					sPlugins += "[" + it++ + "] " + plugin.GetScriptPluginName() + "\n"; 
				}

				ClientPrint(hPlayer, HUD_PRINTCONSOLE, sPlugins);
			}
		}
		else if (VSLU.tConsoleCommands.len() > 0)
		{
			local args = split(sArgs, ",");
			local sCommand = args[0];

			if (sCommand in VSLU.tConsoleCommands)
			{
				local func = VSLU.tConsoleCommands[sCommand];

				if (args.len() > 1)
				{
					args.remove(0);
				}
				else
				{
					args = null;
				}

				func(hPlayer, args);
			}
		}
	}
}

function VSLU::ScriptedModeHooks::InterceptChat(sMsg, hPlayer)
{
	local bRetVal = true;
	local bRetValOverriden = false;
	local showMessage = { value = true };

	foreach (key, func in VSLU.ScriptedModeHooks.tInterceptChatFuncs)
	{
		try
		{
			local result = func(sMsg, hPlayer);

			if ( result == false )
				bRetVal = false;
		}
		catch (e)
		{
			errorl("[VSLU::ScriptedModeHooks::InterceptChat Watchdog] An error has occurred: " + e);
		}
	}

	if ( !bRetVal )
		bRetValOverriden = true;

	for (local i = 0; i < VSLU.Hooks.OnInterceptChat.len(); ++i)
	{
		showMessage.value = true;

		try
		{
			local hookReturnCode = VSLU.Hooks.OnInterceptChat[i](showMessage, sMsg, hPlayer);

			if (hookReturnCode == HOOK_STOP)
			{
				return showMessage.value;
			}
			else if (hookReturnCode == HOOK_OVERRIDE && !bRetValOverriden)
			{
				bRetVal = showMessage.value;
				bRetValOverriden = true;
			}
		}
		catch (e)
		{
			errorl("[VSLU::Hooks::InterceptChat Watchdog] " + e);
			errorl("[VSLU::Hooks::InterceptChat Watchdog] An error has occurred, a hook function has been removed");

			VSLU.Hooks.OnInterceptChat.remove(i);
			--i;
		}
	}

	return bRetVal;
}

function VSLU::ScriptedModeHooks::AllowBash(hBasher, hBashee)
{
	local retVal = ALLOW_BASH_ALL;
	local bRetValOverriden = false;
	local bashReturnCode = { value = ALLOW_BASH_ALL };

	foreach (key, func in VSLU.ScriptedModeHooks.tAllowBashFuncs)
	{
		try
		{
			local result = func(hBasher, hBashee);

			if (result == ALLOW_BASH_NONE && retVal != result)
				retVal = result;
			else if (result == ALLOW_BASH_PUSHONLY && retVal != result && retVal != ALLOW_BASH_NONE)
				retVal = result;
		}
		catch (e)
		{
			errorl("[VSLU::ScriptedModeHooks::AllowBash Watchdog] An error has occurred: " + e);
		}
	}

	if ( retVal != ALLOW_BASH_ALL )
		bRetValOverriden = true;

	for (local i = 0; i < VSLU.Hooks.OnAllowBash.len(); ++i)
	{
		bashReturnCode.value = ALLOW_BASH_ALL;

		try
		{
			local hookReturnCode = VSLU.Hooks.OnAllowBash[i](bashReturnCode, hBasher, hBashee);

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
		catch (e)
		{
			errorl("[VSLU::Hooks::AllowBash Watchdog] " + e);
			errorl("[VSLU::Hooks::AllowBash Watchdog] An error has occurred, a hook function has been removed");

			VSLU.Hooks.OnAllowBash.remove(i);
			--i;
		}
	}

	return retVal;
}

function VSLU::ScriptedModeHooks::AllowTakeDamage(tDamageInfo)
{
	local bRetVal = true;
	local bRetValOverriden = false;
	local applyDamage = { value = true };

	foreach (key, func in VSLU.ScriptedModeHooks.tAllowTakeDamageFuncs)
	{
		try
		{
			local result = func(tDamageInfo);

			if ( result == false )
				bRetVal = false;
		}
		catch (e)
		{
			errorl("[VSLU::ScriptedModeHooks::AllowTakeDamage Watchdog] An error has occurred: " + e);
		}
	}

	if ( !bRetVal )
		bRetValOverriden = true;

	for (local i = 0; i < VSLU.Hooks.OnAllowTakeDamage.len(); ++i)
	{
		applyDamage.value = true;

		try
		{
			local hookReturnCode = VSLU.Hooks.OnAllowTakeDamage[i](applyDamage, tDamageInfo);

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
		catch (e)
		{
			errorl("[VSLU::Hooks::AllowTakeDamage Watchdog] " + e);
			errorl("[VSLU::Hooks::AllowTakeDamage Watchdog] An error has occurred, a hook function has been removed");

			VSLU.Hooks.OnAllowTakeDamage.remove(i);
			--i;
		}
	}

	return bRetVal;
}

function VSLU::ScriptedModeHooks::BotQuery(queryFlag, hEntity, defaultValue)
{
	local bRetVal = true;
	local bRetValOverriden = false;
	local allowQuery = { value = true };

	foreach (key, func in VSLU.ScriptedModeHooks.tBotQueryFuncs)
	{
		try
		{
			local result = func(queryFlag, hEntity, defaultValue);

			if ( result == false )
				bRetVal = false;
		}
		catch (e)
		{
			errorl("[VSLU::ScriptedModeHooks::BotQuery Watchdog] An error has occurred: " + e);
		}
	}

	if ( !bRetVal )
		bRetValOverriden = true;

	for (local i = 0; i < VSLU.Hooks.OnBotQuery.len(); ++i)
	{
		allowQuery.value = true;

		try
		{
			local hookReturnCode = VSLU.Hooks.OnBotQuery[i](allowQuery, queryFlag, hEntity, defaultValue);

			if (hookReturnCode == HOOK_STOP)
			{
				return allowQuery.value;
			}
			else if (hookReturnCode == HOOK_OVERRIDE && !bRetValOverriden)
			{
				bRetVal = allowQuery.value;
				bRetValOverriden = true;
			}
		}
		catch (e)
		{
			errorl("[VSLU::Hooks::BotQuery Watchdog] " + e);
			errorl("[VSLU::Hooks::BotQuery Watchdog] An error has occurred, a hook function has been removed");

			VSLU.Hooks.OnBotQuery.remove(i);
			--i;
		}
	}

	return bRetVal;
}

function VSLU::ScriptedModeHooks::CanPickupObject(hObject)
{
	local bRetVal = true;
	local bRetValOverriden = false;
	local allowPickup = { value = true };

	foreach (key, func in VSLU.ScriptedModeHooks.tCanPickupObjectFuncs)
	{
		try
		{
			local result = func(hObject);

			if ( result == true )
				bRetVal = true;
		}
		catch (e)
		{
			errorl("[VSLU::ScriptedModeHooks::CanPickupObject Watchdog] An error has occurred: " + e);
		}
	}

	if ( !bRetVal )
		bRetValOverriden = true;

	for (local i = 0; i < VSLU.Hooks.OnCanPickupObject.len(); ++i)
	{
		allowPickup.value = true;

		try
		{
			local hookReturnCode = VSLU.Hooks.OnCanPickupObject[i](allowPickup, hObject);

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
		catch (e)
		{
			errorl("[VSLU::Hooks::CanPickupObject Watchdog] " + e);
			errorl("[VSLU::Hooks::CanPickupObject Watchdog] An error has occurred, a hook function has been removed");

			VSLU.Hooks.OnCanPickupObject.remove(i);
			--i;
		}
	}

	return bRetVal;
}

}

printl("Loaded Library of Utils v" + VSLU_VERSION);