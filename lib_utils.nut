// Squirrel
// Library of Utils
// Author: Sw1ft >> http://steamcommunity.com/profiles/76561198397776991

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

const MAXENTS = 2048
const MAXCLIENTS = 32
const ZOMBIE_NONE = -1
const ZOMBIE_SURVIVOR = 9
const TEAM_SPECTATOR = 1
const TEAM_SURVIVOR = 2
const TEAM_INFECTED = 3
const PHYS_BLOCKER_EVERYONE = 0
const PHYS_BLOCKER_SURVIVORS = 1
const PHYS_BLOCKER_SI = 2
const PHYS_BLOCKER_ALL_SI = 3
const LF_PREFIX = "lf_"
const LIB_DATA_FOLDER = "lib_utils/"
const CMD_EMPTY_ARGUMENT = "__STRING_EMPTY_ARGUMENT"
const FLT_EPSILON = 0.0000001192092896;

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

enum eTrace
{
	Mask_All = -1,
	Mask_NPC_Solid = 33701899,
	Mask_Player_Solid = 33636363,
	Mask_Shot = 1174421507,
	Mask_Visible_And_NPCS = 33579137,
	Mask_Visible = 33579073,
	Distance = 1000000000,
	Type_Hit = 1,
	Type_Pos = 2
}

enum eUpgrade
{
	None = 0,
	Incendiary = 1,
	Explosive = 2,
	Laser = 4
}

enum eInventoryWeapon
{
	Primary,
	Secondary
}

enum eTeam
{
	Everyone,
	Survivor,
	Infected
}

enum eButtonType
{
	Pressed,
	Released,
	Hold
}

/*===============================*\
 *           Classes             *
\*===============================*/

/** Class Matrix
* Signature: class CMatrix(array matrix, int rows, int columns)
*/

class CMatrix
{
	constructor(matrix, iRows = null, iColumns = null)
	{
		if (iRows != null && iColumns != null && iRows > 0 && iColumns > 0)
		{
			m_iRows = iRows;
			m_iColumns = iColumns;
		}
		else
		{
			local length = matrix.len();
			local iWidestColumn = 0;
			if (length > 0)
			{
				for (local i = 0; i < length; i++)
				{
					if (iWidestColumn < matrix[i].len())
						iWidestColumn = matrix[i].len();
				}
				for (local j = 0; j < length; j++)
				{
					while (matrix[j].len() < iWidestColumn)
						matrix[j].push(0.0);
				}
			}
			else
			{
				matrix.push([0.0]);
				iWidestColumn = length = 1;
			}
			m_iRows = length;
			m_iColumns = iWidestColumn;
		}
		m_aMatrix = matrix;
	}

	function Multiply(matrix)
	{
		if (matrix instanceof CMatrix)
		{
			if (m_iColumns == matrix.GetRows())
			{
				local aMatrixOutput = [];
				local aMatrix = matrix.GetMatrix();
				local columns = matrix.GetColumns();

				for (local n = 0; n < m_iRows; n++)
				{
					aMatrixOutput.push([]);
					for (local m = 0; m < columns; m++)
						aMatrixOutput[n].push(0.0);
				}

				for (local i = 0; i < m_iRows; i++)
				{
					for (local j = 0; j < columns; j++)
					{
						for (local k = 0; k < m_iColumns; k++)
						{
							aMatrixOutput[i][j] += m_aMatrix[i][k] * aMatrix[k][j];
						}
					}
				}
				
				return CMatrix(aMatrixOutput, m_iRows, columns);
			}
			throw "wrong matrix size";
		}
		throw "argument is not a matrix";
	}

	function Add(matrix)
	{
		if (matrix instanceof CMatrix)
		{
			if (m_iRows == matrix.GetRows() && m_iColumns == matrix.GetColumns())
			{
				local aMatrixOutput = [];
				local aMatrix = matrix.GetMatrix();
				for (local i = 0; i < m_iRows; i++)
				{
					aMatrixOutput.push(GetRowArray(i));
					for (local j = 0; j < m_iColumns; j++)
					{
						aMatrixOutput[i][j] += aMatrix[i][j];
					}
				}
				return CMatrix(aMatrixOutput, m_iRows, m_iColumns);
			}
			throw "wrong matrix size";
		}
		throw "expected a matrix";
	}

	function Scale(value)
	{
		local aMatrix = [];
		for (local i = 0; i < m_iRows; i++)
		{
			aMatrix.push(GetRowArray(i));
			for (local j = 0; j < m_iColumns; j++)
			{
				aMatrix[i][j] *= value;
			}
		}
		return CMatrix(aMatrix, m_iRows, m_iColumns);
	}

	function Division(value)
	{
		return Scale(1.0 / value);
	}

	function Determinant()
	{
		if (!IsSquare())
			throw "expected a square matrix";
		
		if (m_iRows == 1)
			return m_aMatrix[0][0];

		if (m_iRows == 2)
			return m_aMatrix[0][0] * m_aMatrix[1][1] - m_aMatrix[0][1] * m_aMatrix[1][0];

		local sign = 1;
		local determinant = 0;
		
		if ("Vector" in getroottable() && m_aMatrix[0][0] instanceof Vector)
			determinant = Vector(0.0, 0.0, 0.0);

		for (local i = 0; i < m_iColumns; i++)
		{
			determinant += m_aMatrix[0][i] * GetMinor(0, i).Determinant() * sign;
			sign *= -1;
		}
		return (m_Determinant = determinant);
	}

	function Inverse()
	{
		if (!IsSquare())
			throw "expected a square matrix";
		
		local aMatrixOutput = [];
		for (local i = 0; i < m_iRows; i++)
		{
			aMatrixOutput.push([]);
			for (local j = 0; j < m_iColumns; j++)
			{
				aMatrixOutput[i].push(GetMinor(i, j).Determinant() * ((i + j + 2) % 2 ? -1.0 : 1.0));
			}
		}

		local matrix = CMatrix(aMatrixOutput, m_iRows, m_iColumns).Transpose();
		return matrix.Division(Determinant());
	}

	function Transpose()
	{
		local aTransposeMatrix = [];
		for (local i = 0; i < m_iColumns; i++)
			aTransposeMatrix.push(GetColumnArray(i));
			
		return CMatrix(aTransposeMatrix, m_iColumns, m_iRows);
	}

	function ToVector()
	{
		if (m_iRows == 3)
			return Vector(m_aMatrix[0][0], m_aMatrix[1][0], m_aMatrix[2][0]);

		if (m_iRows == 4)
			return Vector4D(m_aMatrix[0][0], m_aMatrix[1][0], m_aMatrix[2][0], m_aMatrix[3][0]);

		if (m_iRows == 2)
			return Vector2D(m_aMatrix[0][0], m_aMatrix[1][0]);
	}

	function GetMinor(iRow, iColumn)
	{
		if (m_iRows == 1 && m_iColumns == 1)
			return CMatrix([[1.0]], 1, 1);

		local idx = 0;
		local aMinor = [];
		for (local i = 0; i < m_iRows; i++)
		{
			if (i == iRow) continue;

			aMinor.push(GetRowArray(i));
			for (local j = 0; j < m_iColumns; j++)
			{
				if (j == iColumn)
				{
					aMinor[idx].remove(j);
					break;
				}
			}
			idx++;
		}
		return CMatrix(aMinor, m_iRows - 1, m_iColumns - 1);
	}

	function GetColumnArray(iColumn)
	{
		local aColumn = [];
		for (local i = 0; i < m_iRows; i++)
			aColumn.push(m_aMatrix[i][iColumn]);

		return aColumn;
	}

	function GetRowArray(iRow) { return clone m_aMatrix[iRow]; }

	function GetCellValue(iRow, iColumn) { return m_aMatrix[iRow][iColumn]; }

	function IsSquare() { return m_iRows == m_iColumns; }

	function GetMatrix() { return m_aMatrix; }

	function GetRows() { return m_iRows; }

	function GetColumns() { return m_iColumns; }

	function _tostring()
	{
		local str = "Matrix: (";
		foreach (idx, arr in m_aMatrix)
		{
			foreach (_idx, val in arr)
			{
				if (m_iColumns - 1 != _idx)
				{
					str += val + ", ";
					continue;
				}
				str += val;
			}
			str += (m_iRows - 1 == idx ? ")" : "; ");
		}
		return str;
	}

	function _mul(arg)
	{
		if (typeof arg == "integer" || typeof arg == "float")
			return Scale(arg);

		return Multiply(arg);
	}

	function _set(key, val) { throw null; }

	function _div(arg) { return Division(arg); }

	function _unm() { return Inverse(); }

	function _add(arg) { return Add(arg); }

	function _sub(arg) { return Add(arg.Scale(-1)); }

	m_aMatrix = null;
	m_iColumns = 0;
	m_iRows = 0;
	m_Determinant = 0;
}

/** Class Loop Function
* Signature: class CLoopFunction(string funcName, float refiretime, any args)
*/

class CLoopFunction
{
	constructor(sFunction, flInterval, aInputArgs = [])
	{
		local aArgs = [this];
		aArgs.extend(aInputArgs);

		m_aInputArgs = aArgs;
		m_sFunctionName = sFunction;
		m_sTimerName = LF_PREFIX + sFunction.tolower();

		if (flInterval != null) m_flInterval = flInterval;
	}

	function GetInputArguments() { return m_aInputArgs; }

	function GetFunctionName() { return m_sFunctionName; }

	function GetTimerName() { return m_sTimerName; }

	function GetRefireTime() { return m_flInterval; }

	m_sFunctionName = null;
	m_aInputArgs = null;
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

		m_aInputArgs = aArgs;
		m_sFunctionName = sFunction;
	}

	function GetInputArguments() { return m_aInputArgs; }

	function GetCallingFunction() { return compilestring("return " + m_sFunctionName)(); }

	function GetFunctionName() { return m_sFunctionName; }

	m_sFunctionName = null;
	m_aInputArgs = null;
}

/** Class Chat Command
* Signature: class CChatCommand(string command, function callFunction, bool bInputPlayerHandle, bool bInputValue)
*/

class CChatCommand
{
	constructor(sCommand, Function, bInputPlayerHandle, bInputValue)
	{
		m_sCommand = sCommand;
		m_Function = Function;
		m_bInputPlayerHandle = bInputPlayerHandle;
		m_bInputValue = bInputValue;
	}

	function GetCommand() { return m_sCommand; }

	function GetCallingFunction() { return m_Function; }

	function GetInputPlayerHandle() { return m_bInputPlayerHandle; }

	function GetInputValue() { return m_bInputValue; }

	m_sCommand = null;
	m_Function = null;
	m_bInputPlayerHandle = false;
	m_bInputValue = false;
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

	function GetFunction() { return m_sFunctionName; }

	function GetButton() { return m_nButtons; }

	function GetTeam() { return m_iTeam; }

	function GetType() { return m_iPressType; }

	m_sFunctionName = null;
	m_nButtons = null;
	m_iPressType = null;
	m_iTeam = null;
}

/** Class User Command
* Signature: class CUserCommand(string command, function callFunction, bool bInputValue, bool bInputPlayerHandle)
*/

class CUserCommand
{
	constructor(sCommand, hCallingFunction, bInputValue, bInputPlayerHandle)
	{
		m_sCommand = sCommand;
		m_Function = hCallingFunction;
		m_bInputValue = bInputValue;
		m_bInputPlayerHandle = bInputPlayerHandle;
	}

	function GetCallingFunction() { return m_Function; }

	function GetInputPlayerHandle() { return m_bInputPlayerHandle; }

	function GetInputValue() { return m_bInputValue; }

	function GetCommand() { return m_sCommand; }

	m_sCommand = null;
	m_Function = null;
	m_bInputValue = false;
	m_bInputPlayerHandle = true;
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

		m_aInputArgs = aArgs;
		m_sIdentifier = UniqueString();
		m_Function = Function;
		m_flCallTime = flCallTime;
	}

	function GetCallingFunction() { return m_Function; }

	function GetCallTime() { return m_flCallTime; }

	function GetInputArguments() { return m_aInputArgs; }

	function GetIdentifier() { return m_sIdentifier; }

	m_sIdentifier = null;
	m_flCallTime = null;
	m_Function = null;
	m_aInputArgs = null;
}

/*===============================*\
 *        Global Variables       *
\*===============================*/

if (!("g_sMapName" in this)) g_sMapName <- null;
if (!("g_bOverrideGameHooks" in this)) g_bOverrideGameHooks <- false;

g_hClientCommand <- SpawnEntityFromTable("point_clientcommand", {});
g_hServerCommand <- SpawnEntityFromTable("point_servercommand", {});
g_hBroadcastClientCommand <- SpawnEntityFromTable("point_broadcastclientcommand", {});

/*===============================*\
 *           Tables              *
\*===============================*/

g_CallBackEvents <- {};
VMath <- {};

Math <-
{
	Deg2Rad = PI / 180
	Rad2Deg = 180 / PI
};

g_Hooks <-
{
	OnRoundStart = []
	OnRoundStartPost = []
	AdditionalClassMethodsInjected = []
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
					error(format("[AddScriptPlugin] Script Plugin '%s' already added\n", scriptPlugin.GetScriptPluginName()));
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

		error("[AddScriptPlugin] Failed to add a Script Plugin\n");
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

			error(format("[RemoveScriptPlugin] Script Plugin '%s' wasn't added\n", scriptPlugin.GetScriptPluginName()));
			return false;
		}

		error("[RemoveScriptPlugin] Failed to remove a Script Plugin\n");
		return false;
	}
};

/*===============================*\
 *           Arrays              *
\*===============================*/

if (!("g_aScriptPlugins" in this)) g_aScriptPlugins <- [];

g_bAllowChangeCameraAngles <- array(MAXENTS + 1, true);
g_aLoopFunctions <- [];
g_aOnTickFunctions <- [];
g_aChatCommands <- [];
g_aButtonsListener <- [];
g_aUserCommands <- [];
g_aConVars <- [];
g_aTimers <- [];

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
	function Load() { g_ScriptPluginsHelper.PureVirtualError() };
	function Unload() { g_ScriptPluginsHelper.PureVirtualError() };
	function OnRoundStartPost() { g_ScriptPluginsHelper.PureVirtualError() };
	function OnRoundEnd() { g_ScriptPluginsHelper.PureVirtualError() };
	function AdditionalClassMethodsInjected() { g_ScriptPluginsHelper.PureVirtualError() };
	function GetClassName() { g_ScriptPluginsHelper.PureVirtualError() };
	function GetScriptPluginName() { g_ScriptPluginsHelper.PureVirtualError() };
	function GetInterfaceVersion() { g_ScriptPluginsHelper.PureVirtualError() };
}

ifaces_initialized <- true;

}

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

/** Set a value for a console variable or return the current value
* Signature: void/string/float cvar(string convar, any value, bool bReturnString)
*/

function cvar(sName = null, value = null, bReturnString = true)
{
	if (sName != null)
	{
		if (value != null) Convars.SetValue(sName.tostring(), value.tostring());
		else if (bReturnString) return Convars.GetStr(sName.tostring());
		else return Convars.GetFloat(sName.tostring());
	}
}

/** Interpreting ToKVString method
* Signature: string kvstr(instance)
*/

function kvstr(__instance)
{
	if (__instance instanceof Vector)
		return __instance.x + " " + __instance.y + " " + __instance.z;

	if (__instance instanceof QAngle)
		return __instance.x + " " + __instance.y + " " + __instance.z;

	if (__instance instanceof Vector2D)
		return __instance.x + " " + __instance.y;

	if (__instance instanceof Vector4D)
		return __instance.x + " " + __instance.y + " " + __instance.z + " " + __instance.w;

	if (__instance instanceof Quaternion)
		return __instance.x + " " + __instance.y + " " + __instance.z + " " + __instance.w;

	return "0 0 0";
}

/** Draw a point
* Signature: void Mark(Vector origin, float duration, Vector min, Vector max, int r, int g, int b, int alpha)
*/

function Mark(vecPos, flDuration = 5.0, vecMins = Vector(2, 2, 2), vecMaxs = Vector(-2, -2, -2), iRed = 232, iGreen = 0, iBlue = 232, iAlpha = 255)
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

	try {
		foreach (val in aString)
		{
			local func = compilestring("return " + val)();
			if (typeof func == "function" || typeof func == "native function")
				return true;
		}
		return false;
	}
	catch (val) {
		return false;
	}
}

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

	if (hCaller) AcceptEntityInput(hCaller, "RunScriptCode", sScript, flDelay, hActivator);
	else EntFire((hActivator != null ? "!activator" : "worldspawn"), "RunScriptCode", sScript, flDelay, hActivator);
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

	if (hCaller) AcceptEntityInput(hCaller, "CallScriptFunction", sFunction, flDelay, hActivator);
	else EntFire((hActivator != null ? "!activator" : "worldspawn"), "CallScriptFunction", sFunction, flDelay, hActivator);
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

/** Is arrays equal
* Signature: bool IsArraysEqual(array arr1, array arr2)
*/

function IsArraysEqual(a, _a)
{
	if (a.len() != _a.len()) return false;
	foreach (idx, val in a) if (_a[idx] != val) return false;
	return true;
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

/** Convert string to byte string
* Signature: string EncodeString(string message, bool bStringToFile, string fileName)
*/

function EncodeString(sInput = null, bStringToFile = false, sFileName = null)
{
	if (typeof sInput != "string") return;

	local sOutput = "";
	foreach (symbol in sInput)
	{
		symbol = format("x%X", symbol)
		if (symbol.find("FFFFFF") != null) symbol = "x" + symbol.slice(8);
		sOutput += symbol;
	}

	if (bStringToFile)
	{
		if (typeof sFileName != "string") return;
		sOutput = format("\"%s\"", sOutput);
		sOutput += "\n";
		return StringToFile(sFileName, sOutput);
	}

	return sOutput;
}

/** Convert byte string to string
* Signature: string DecodeString(string message, bool bFileToString, string fileName)
*/

function DecodeString(sInput = null, bFileToString = false, sFileName = null)
{
	if (!bFileToString)
	{
		if (typeof sInput != "string")
			return;
	}

	if (bFileToString)
	{
		if (typeof sFileName != "string") return;
		sInput = compilestring("return " + FileToString(sFileName))();
	}

	local aInput = split(sInput, "x");
	local sOutput = "";

	foreach (symbol in aInput)
	{
		if (symbol != "x") sOutput += compilestring("return 0x" + symbol)().tochar().tostring();
	}

	return sOutput;
}

/** Teleport an entity
* Signature: void TP(Vector position, Vector/QAngle angles, Vector velocity, bool bVectorDirection)
*/

function TP(hEntity = null, vecPos = Vector(), eAngles = QAngle(), vecVel = Vector(), bVectorDirection = false)
{
	if (hEntity != null)
	{
		if (vecPos != null)
		{
			hEntity.SetOrigin(vecPos);
		}

		if (eAngles != null)
		{
			if (hEntity.IsPlayer()) hEntity.SetForwardVector(bVectorDirection ? eAngles : eAngles.Forward());
			else hEntity.SetAngles(bVectorDirection ? VectorToQAngle(eAngles) : eAngles);
		}

		if (vecVel != null)
		{
			if (hEntity.IsPlayer()) hEntity.SetVelocity(vecVel);
			else hEntity.ApplyAbsVelocityImpulse(vecVel);
		}
	}
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

			idx++;
		}
	}
}

/** Collect alive survivors into a table
* Signature: table CollectAliveSurvivors()
*/

function CollectAliveSurvivors()
{
	local hPlayer;
	local tSurvivors = {};

	while (hPlayer = Entities.FindByClassname(hPlayer, "player"))
	{
		if (hPlayer.IsSurvivor() && hPlayer.IsAlive() && !hPlayer.IsIncapacitated())
		{
			tSurvivors[hPlayer.GetEntityIndex()] <- hPlayer;
		}
	}

	return tSurvivors;
}

/** Collect alive players into a table
* Signature: table CollectAlivePlayers()
*/

function CollectAlivePlayers()
{
	local hPlayer;
	local tPlayers = {};

	while (hPlayer = Entities.FindByClassname(hPlayer, "player"))
	{
		if (hPlayer.IsSurvivor())
		{
			if (hPlayer.IsAlive())
			{
				tPlayers[hPlayer.GetEntityIndex()] <- hPlayer;
			}
		}
		else
		{
			if (NetProps.GetPropInt(hPlayer, "m_iObserverMode") == 0)
			{
				tPlayers[hPlayer.GetEntityIndex()] <- hPlayer;
			}
		}
	}

	return tPlayers;
}

/** Collect all players into a table
* Signature: table CollectAliveSurvivors()
*/

function CollectPlayers()
{
	local hPlayer;
	local tPlayers = {};

	while (hPlayer = Entities.FindByClassname(hPlayer, "player"))
		tPlayers[hPlayer.GetEntityIndex()] <- hPlayer;

	return tPlayers;
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

/** Send a server command
* Signature: void ServerCommand(string command, float delay)
*/

function ServerCommand(sCommand = "", flDelay = 0.0)
{
	AcceptEntityInput(g_hServerCommand, "Command", sCommand.tostring(), flDelay.tofloat(), null);
	AcceptEntityInput(g_hServerCommand, "Kill", "", flDelay.tofloat(), null);
}

/** Send a client command to all
* Signature: void ClientCommandToAll(string command, float delay)
*/

function ClientCommandToAll(sCommand = "", flDelay = 0.0)
{
	AcceptEntityInput(g_hBroadcastClientCommand, "Command", sCommand.tostring(), flDelay.tofloat(), null);
	AcceptEntityInput(g_hBroadcastClientCommand, "Kill", "", flDelay.tofloat(), null);
}

/** Do trace line
* Signature: handle/Vector DoTraceLine(Vector Start, Vector Direction, int hittype, float distance, int masktype, handle ignoreEntity)
*/

function DoTraceLine(vecStart = Vector(), vecDir = Vector(), tr_type = eTrace.Type_Hit, tr_dist = eTrace.Distance, tr_mask = eTrace.Mask_Shot, tr_ignore = null)
{
	local vecEnd = vecStart + vecDir.Scale(tr_dist);
	local tTrace =
	{
		start = vecStart
		end = vecEnd
		ignore = tr_ignore
		mask = tr_mask
	}

	TraceLine(tTrace);

	if (tr_type == eTrace.Type_Hit && tTrace.hit && tTrace.enthit.GetEntityIndex() != 0)
		return tTrace.enthit;

	if (tr_type == eTrace.Type_Pos)
		return tTrace.pos;
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
			return;
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
			if (!(value = cvar.GetValue(true))) return 0;
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
			if (!value) return 0.0;
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
*    Entity Related Functions    *
\*===============================*/

/** Attach an entity
* Signature: void AttachEntity(handle entity, handle target, string attachment, float delay)
*/

function AttachEntity(hEntity, hTarget, sAttachment = null, flDelay = 0.0)
{
	AcceptEntityInput(hTarget, "SetParent", "!activator", flDelay, hEntity);
	if (sAttachment != null) AcceptEntityInput(hTarget, "SetParentAttachment", sAttachment, flDelay, hEntity);
}

/** Remove an attachment
* Signature: void RemoveAttachment(handle entity, handle target, float delay)
*/

function RemoveAttachment(hEntity, hTarget, flDelay = 0.0)
{
	AcceptEntityInput(hTarget, "ClearParent", "", flDelay, hEntity);
}

/** Get distance between two entities
* Signature: float GetDistance(handle entity, handle target, bool bSquared, bool bMethod2D)
*/

function GetDistanceToEntity(hEntity, hTarget, bSquared = false, bMethod2D = false)
{
	local flDistance;
	if (bSquared) flDistance = bMethod2D ? (hEntity.GetOrigin() - hTarget.GetOrigin()).Length2DSqr() : (hEntity.GetOrigin() - hTarget.GetOrigin()).LengthSqr();
	else flDistance = bMethod2D ? (hEntity.GetOrigin() - hTarget.GetOrigin()).Length2D() : (hEntity.GetOrigin() - hTarget.GetOrigin()).Length();
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

/** Set entity angles by steps
* Signature: void SetAnglesBySteps(handle entity, QAngle angles, int steps, float deltaTime, bool sphericalLerp)
*/

function SetAnglesBySteps(hEntity, eAngles, iSteps, flDeltaTime = 0.01, bSlerp = true)
{
	local eAnglesStart = hEntity.IsPlayer() ? hEntity.EyeAngles() : hEntity.GetAngles();
	if ((Vector(eAngles.x, eAngles.y, eAngles.z) - Vector(eAnglesStart.x, eAnglesStart.y, eAnglesStart.z)).LengthSqr() >= 1)
	{
		local flTime = 0.0;
		if (hEntity.IsPlayer()) // linear interpolation only
		{
			if (eAngles.z != 0) eAngles.z = 0;
			if (eAngles.y < -180 || eAngles.y > 180) eAngles.y = Math.NormalizeAngle(eAngles.y);
			if (eAnglesStart.y < -180 || eAnglesStart.y > 180) eAnglesStart.y = Math.NormalizeAngle(eAnglesStart.y);
			if (eAngles.y < 0) eAngles.y += 360;
			if (eAnglesStart.y < 0) eAnglesStart.y += 360;

			local eAnglesDifference = eAngles - eAnglesStart;

			if (eAngles.y + fabs(360 - eAnglesStart.y) < fabs(eAngles.y - eAnglesStart.y)) eAnglesDifference.y = eAngles.y + fabs(360 - eAnglesStart.y);
			else if (eAnglesStart.y + fabs(360 - eAngles.y) < fabs(eAnglesStart.y - eAngles.y)) eAnglesDifference.y = -(eAnglesStart.y + fabs(360 - eAngles.y));

			local eAnglesDelta = QAngle(eAnglesDifference.x / iSteps, eAnglesDifference.y / iSteps, 0);
			for (local i = 0; i < iSteps; i++)
			{
				flTime += flDeltaTime;
				eAnglesStart += eAnglesDelta;

				CreateTimer(flTime, function(hEntity, idx, eAngles){
					if (hEntity.IsValid() && g_bAllowChangeCameraAngles[idx])
					{
						if (eAngles.y < -180 || eAngles.y > 180) eAngles.y = Math.NormalizeAngle(eAngles.y);
						TP(hEntity, null, eAngles, null);
					}
				}, hEntity, hEntity.GetEntityIndex(), eAnglesStart);

				if (i == iSteps - 1)
				{
					CreateTimer(flTime, function(hEntity){
						if ("SetCameraAnglesCompleted" in getroottable()) SetCameraAnglesCompleted(hEntity);
					}, hEntity);
				}
			}
		}
		else // spherical (with a choice) linear interpolation
		{
			local frametime = 1.0 / iSteps;
			for (local t = frametime; t < 1.0; t += frametime)
			{
				flTime += flDeltaTime;

				CreateTimer(flTime, function(hEntity, idx, eAngles){
					if (hEntity.IsValid() && g_bAllowChangeCameraAngles[idx])
					{
						hEntity.SetAngles(eAngles);
					}
				}, hEntity, hEntity.GetEntityIndex(), OrientationLerp(eAnglesStart, eAngles, t, bSlerp, true));

				if (t + frametime >= 1.0)
				{
					CreateTimer(flTime, function(hEntity){
						if ("SetCameraAnglesCompleted" in getroottable()) SetCameraAnglesCompleted(hEntity);
					}, hEntity);
				}
			}
		}
	}
}

/** Set an entity angles to another entity
* Signature: void SetAnglesToEntity(handle entity, handle target, Vector vecCorrection, bool bUseBodyPosition, float bodyPositionPercent)
*/

function SetAnglesToEntity(hEntity, hTarget, vecCorrection = Vector(), bUseBodyPosition = false, flBodyPositionPercent = 0.5)
{
	local vecDir = vecCorrection;
	if (hTarget.IsPlayer()) vecDir += (bUseBodyPosition ? hTarget.GetBodyPosition(flBodyPositionPercent) : hTarget.EyePosition()) - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
	else vecDir += hTarget.GetOrigin() - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
	TP(hEntity, null, vecDir, null, true);
}

/** Get an entity angles to another entity
* Signature: QAngle GetAnglesToEntity(handle entity, handle target, Vector vecCorrection, bool bUseBodyPosition, float bodyPositionPercent)
*/

function GetAnglesToEntity(hEntity, hTarget, vecCorrection = Vector(), bUseBodyPosition = false, flBodyPositionPercent = 0.5)
{
	local vecDir = vecCorrection;
	if (hTarget.IsPlayer()) vecDir += (bUseBodyPosition ? hTarget.GetBodyPosition(flBodyPositionPercent) : hTarget.EyePosition()) - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
	else vecDir += hTarget.GetOrigin() - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
	return VectorToQAngle(vecDir);
}

/** Get position to ground
* Signature: Vector GetPositionToGround(handle entity)
*/

function GetPositionToGround(hEntity)
{
	return DoTraceLine(hEntity.GetOrigin(), Vector(0, 0, -1), eTrace.Type_Pos, eTrace.Distance, eTrace.Mask_Shot, hEntity);
}

/** Get distance to ground
* Signature: float GetDistanceToGround(handle entity)
*/

function GetDistanceToGround(hEntity)
{
	return (hEntity.GetOrigin() - DoTraceLine(hEntity.GetOrigin(), Vector(0, 0, -1), eTrace.Type_Pos, eTrace.Distance, eTrace.Mask_Shot, hEntity)).Length();
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
	if (KeyInScriptScope(hEntity, key)) return hEntity.GetScriptScope()[key];
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
	if (key in hEntity.GetScriptScope()) return true;
	return false;
}

/** Remove entity's script scope key
* Signature: void RemoveScriptScopeKey(handle entity, string key)
*/

function RemoveScriptScopeKey(hEntity, key)
{
	hEntity.ValidateScriptScope();
	if (KeyInScriptScope(hEntity, key)) delete hEntity.GetScriptScope()[key];
}

/*===============================*\
 *    Extends Classes Methods    *
\*===============================*/

function InjectAdditionalClassMethods()
{
	if (!("CTerrorPlayer" in getroottable())) return;

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
		{
			return NetProps.GetPropIntArray(hPlayerManager, "m_listenServerHost", this.GetEntityIndex()) && !NetProps.GetPropInt(hGameRules, "m_bIsDedicatedServer");
		}
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
		return !(this.IsDead() || this.IsDying());
	}

	/** Kill a player
	* Signature: void CTerrorPlayer.KillPlayer(handle attacker, int damageType)
	*/

	function CTerrorPlayer::KillPlayer(hAttacker = null, iDamageType = DMG_GENERIC)
	{
		if (this.IsSurvivor()) this.SetReviveCount(2);
		this.SetHealth(1); this.TakeDamage(10.0, DMG_GENERIC, !hAttacker ? this : hAttacker);
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
			return;
		}
		printl("[IsAttackedBySI] Player is not a survivor");
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
			return;
		}
		printl("[IsAttackedBySI] Player is not an infected");
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
			}
			return false;
		}
		printl("[IsSpecialInfected] Player is not an infected");
	}

	/** Set a player's ammo
	* Signature: void CTerrorPlayer.SetAmmo(int slot, int clips, int ammo, int upgradeammo)
	*/

	function CTerrorPlayer::SetAmmo(iSlot, iClip = null, iAmmo = null, iUpgradeAmmo = null)
	{
		local tInv = {};
		GetInvTable(this, tInv);

		if (iSlot == eInventoryWeapon.Primary)
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

						if (iUpgradeType & eUpgrade.Incendiary || iUpgradeType & eUpgrade.Explosive)
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
		else if (iSlot == eInventoryWeapon.Secondary && iClip != null)
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

	/** Do trace Line
	* Signature: handle/Vector CTerrorPlayer.DoTraceLine(int hittype, float distance, int masktype)
	*/

	function CTerrorPlayer::DoTraceLine(tr_type = eTrace.Type_Hit, tr_dist = eTrace.Distance, tr_mask = eTrace.Mask_Shot)
	{
		local vecStart = this.EyePosition();
		local vecEnd = vecStart + this.EyeAngles().Forward().Scale(tr_dist);
		local tTrace =
		{
			start = vecStart
			end = vecEnd
			ignore = this
			mask = tr_mask
		}

		TraceLine(tTrace);

		if (tr_type == eTrace.Type_Hit && tTrace.hit && tTrace.enthit.GetEntityIndex() != 0)
			return tTrace.enthit;

		if (tr_type == eTrace.Type_Pos)
			return tTrace.pos;
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
	foreach (event, val in g_CallBackEvents) delete g_CallBackEvents[event];
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
			local aVars = clone func.GetInputArguments();
			aVars.remove(0);
			printf("[RegisterLoopFunction] Function '%s' already registered", sFunction);
			return;
		}
	}

	local sName = LF_PREFIX + sFunction.tolower();
	local hTimer = Entities.FindByName(null, sName);

	if (!hTimer)
	{
		local __loop_func = CLoopFunction(sFunction, flRefireTime, vargv);
		hTimer = SpawnEntityFromTable("logic_script", {targetname = sName});

		SetScriptScopeVar(hTimer, "__loop_params", {
			__func = sFunction
			__with_args = vargv.len() > 0
			__args = __loop_func.GetInputArguments()
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
			}, sFunction, __loop_func.GetInputArguments());
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
		else printf("[RegisterLoopFunction] Function '%s' with refire time '%.02f' has been registered", sFunction, flRefireTime);
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
				local aVars = clone func.GetInputArguments();
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
			local aVars = clone func.GetInputArguments();
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
			local aVars = clone func.GetInputArguments();
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
				local aVars = clone func.GetInputArguments();
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
			local aVars = clone func.GetInputArguments();
			aVars.remove(0);

			if (IsArraysEqual(aVars, vargv))
				return true;
		}
	}

	return false;
}

/* Registration of custom chat commands */

/** Register chat command
* Signature: CChatCommand RegisterChatCommand(string command, function callFunction, bool bInputPlayerHandle, bool bInputValue)
*/

function RegisterChatCommand(sCommand = null, func = null, bInputPlayerHandle = false, bInputValue = false)
{
	if (typeof sCommand == "string" && typeof func == "function" && typeof bInputPlayerHandle == "bool" && typeof bInputValue == "bool")
	{
		sCommand = sCommand.tolower();

		local ChatCommand = CChatCommand(sCommand, func, bInputPlayerHandle, bInputValue);
		foreach (idx, command in g_aChatCommands)
		{
			if (sCommand == command.GetCommand())
			{
				g_aChatCommands[idx] = ChatCommand;
				printf("[RegisterChatCommand] Already registered, but chat command '%s' has been replaced by an existing one", sCommand);
				return;
			}
		}

		printf("[RegisterChatCommand] Chat command '%s' has been registered", sCommand);
		g_aChatCommands.push(ChatCommand);

		return;
	}
	printl("[RegisterChatCommand] Wrong type of variable");
}

/** Remove chat command
* Signature: void RemoveChatCommand(string command)
*/

function RemoveChatCommand(sCommand = null)
{
	if (typeof sCommand != "string")
	{
		printl("[RemoveChatCommand] Wrong type of variable");
		return;
	}

	sCommand = sCommand.tolower();
	foreach (idx, command in g_aChatCommands)
	{
		if (sCommand == command.GetCommand())
		{
			g_aChatCommands.remove(idx);
			printf("[RemoveChatCommand] Chat command '%s' has been removed", sCommand);
			return;
		}
	}

	printf("[RemoveChatCommand] Chat command '%s' is not registered", sCommand);
}

/* Registration of callback functions by pressing a button */

/** Register callback function for a specified button
* Signature: CButtonListener RegisterButtonListener(int button, string callFunction, int presstype, int team)
*/

function RegisterButtonListener(iButton = null, sFunction = null, iType = eButtonType.Pressed, iTeam = eTeam.Everyone)
{
	if (typeof iButton == "integer" && typeof sFunction == "string" && typeof iTeam == "integer" && typeof iType == "integer")
	{
		if (eButtonType.Pressed < iType && iType > eButtonType.Hold || eTeam.Everyone < iTeam && iTeam > eTeam.Infected)
		{
			printl("[RegisterButtonListener] Invalid button type or team");
			return;
		}

		foreach (button in g_aButtonsListener)
		{
			if (button.GetButton() == iButton && button.GetFunction() == sFunction)
			{
				printf("[RegisterButtonListener] Button '%d' with callback function '%s' already registered", iButton, sFunction);
				return;
			}
		}

		printf("[RegisterButtonListener] Button '%d' with callback function '%s' has been registered", iButton, sFunction);
		g_aButtonsListener.push(CButtonListener(iButton, sFunction, iType, iTeam));

		return;
	}
	printl("[RegisterButtonListener] Wrong type of variable");
}

/** Remove registered button or bound callback function
* Signature: void RemoveButtonListener(int button, string callFunction)
*/

function RemoveButtonListener(iButton = null, sFunction = null)
{
	if (typeof iButton != "integer")
	{
		printl("[RemoveButtonListener] Wrong type of variable");
		return;
	}

	foreach (idx, button in g_aButtonsListener)
	{
		if (button.GetButton() == iButton)
		{
			if (sFunction != null && button.GetFunction() == sFunction)
			{
				printf("[RemoveButtonListener] Callback function '%s' for button '%d' has been removed", sFunction, iButton);
				g_aButtonsListener.remove(idx);
				return;
			}

			local shift = 0;
			local aButtons = [];

			for (local i = 0; i < g_aButtonsListener.len(); i++)
			{
				if (g_aButtonsListener[i].GetButton() == iButton)
					aButtons.push(i);
			}

			for (local j = 0; j < aButtons.len(); j++)
			{
				g_aButtonsListener.remove(aButtons[j] - shift);
				shift++;
			}

			printf("[RemoveButtonListener] Button '%d' has been removed", iButton);
			return;
		}
	}

	printf("[RemoveButtonListener] Button '%d' is not registered", iButton);
}

/** Register user command
* Signature: CUserCommand RegisterUserCommand(string command, function callFunction, bool bInputValue, bool bInputPlayerHandle)
*/

function RegisterUserCommand(sCommand = null, func = null, bInputValue = false, bInputPlayerHandle = true)
{
	if (typeof sCommand == "string" && typeof func == "function" && typeof bInputValue == "bool" && typeof bInputPlayerHandle == "bool")
	{
		sCommand = sCommand.tolower();
		foreach (usercmd in g_aUserCommands)
		{
			if (usercmd.GetCommand() == sCommand)
			{
				printf("[RegisterUserCommand] User command '%s' already registered", sCommand);
				return;
			}
		}

		printf("[RegisterUserCommand] User command '%s' has been registered", sCommand);
		g_aUserCommands.push(CUserCommand(sCommand, func, bInputValue, bInputPlayerHandle));

		return;
	}
	printl("[RegisterUserCommand] Wrong type of variable");
}

/** Remove user command
* Signature: void RemoveUserCommand(string command)
*/

function RemoveUserCommand(sCommand = null)
{
	if (typeof sCommand != "string")
	{
		printl("[RemoveUserCommand] Wrong type of variable");
		return;
	}

	sCommand = sCommand.tolower();
	foreach (idx, usercmd in g_aUserCommands)
	{
		if (usercmd.GetCommand() == sCommand)
		{
			printf("[RemoveUserCommand] User command '%s' has been removed", sCommand);
			g_aUserCommands.remove(idx);
			return;
		}
	}

	printf("[RemoveUserCommand] User command '%s' is not registered", sCommand);
}

/* Ready-made templates */

function OnTickCall()
{
	local idx = 0;
	local length = g_aTimers.len();

	for (local i = 0; i < g_aOnTickFunctions.len(); i++)
	{
		try {
			g_aOnTickFunctions[i].GetCallingFunction().acall(g_aOnTickFunctions[i].GetInputArguments());
		}
		catch (exception) {
			printl("[OnTickFunction Watchdog] " + exception);
			printl("[OnTickFunction Watchdog] An error has occurred, on tick function has been removed");
			g_aOnTickFunctions.remove(i);
			i--;
		}
	}

	while (idx < length)
	{
		if (g_aTimers[idx].GetCallTime() <= Time())
		{
			try {
				g_aTimers[idx].GetCallingFunction().acall(g_aTimers[idx].GetInputArguments());
			}
			catch (exception) {
				printl("[Timer Watchdog] " + exception);
				printl("[Timer Watchdog] An error has occurred, calling task has been removed");
			}

			g_aTimers.remove(idx);
			length--;
			continue;
		}
		idx++;
	}

	idx = 0;
	length = g_aConVars.len();

	while (idx < length)
	{
		local cvar = g_aConVars[idx];
		if (cvar.GetCurrentValue() != cvar.GetValue())
		{
			local min, max;
			local bProhibitChangeHook = false;
			local NewValue = cvar.GetValue();
			local CurrentValue = cvar.GetCurrentValue();

			try {
				switch (cvar.m_sType)
				{
				case "integer":
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
					break;

				case "float":
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
					break;
				}
			}
			catch (exception) {
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
		idx++;
	}
}

function LOU_OnRoundStart(tParams)
{
	foreach (func in g_Hooks.OnRoundStart)
		func();
	
	foreach (scriptPlugin in g_aScriptPlugins)
		scriptPlugin.Load();

	CreateTimer(0.01, function(){
		foreach (func in g_Hooks.OnRoundStartPost)
			func();
		
		foreach (scriptPlugin in g_aScriptPlugins)
			scriptPlugin.OnRoundStartPost();

		g_Hooks.OnRoundStartPost.clear();
	});

	g_Hooks.OnRoundStart.clear();
}

function LOU_OnRoundEnd(tParams)
{
	foreach (scriptPlugin in g_aScriptPlugins)
		scriptPlugin.OnRoundEnd();
	
	delete ::ifaces_initialized;
}

function LOU_OnPlayerSay(tParams)
{
	if (g_aChatCommands.len() > 0 && tParams["_player"])
	{
		local hPlayer = tParams["_player"];
		local sText = tParams.text.tolower();
		local sCommand = split(sText, " ")[0];
		local sValue, aArgs, Function, bInputHandle, bInputValue, aArgsTemp;

		foreach (command in g_aChatCommands)
		{
			if (sCommand == command.GetCommand())
			{
				AnalyzeCommand(command, sText, hPlayer, " ");
			}
		}
	}
}

function AnalyzeCommand(objCommand, sArgs, hPlayer, sSeparator)
{
	local sValue = null;
	local aArgs = [this];
	local Function = objCommand.GetCallingFunction();
	local bInputHandle = objCommand.GetInputPlayerHandle();
	local bInputValue = objCommand.GetInputValue();

	if (bInputValue)
	{
		local aArgsTemp = split(sArgs, sSeparator);
		foreach (idx, arg in aArgsTemp)
		{
			if (idx > 0)
			{
				if (!sValue) sValue = arg;
				else sValue += " " + arg;
			}
		}
		if (!sValue) sValue = CMD_EMPTY_ARGUMENT;
	}

	if (sValue != CMD_EMPTY_ARGUMENT && sValue != null) sValue = sValue.tolower();
	if (bInputHandle && !bInputValue) aArgs.extend([hPlayer]);
	else if (!bInputHandle && bInputValue) aArgs.extend([sValue]);
	else if (bInputHandle && bInputValue) aArgs.extend([hPlayer, sValue]);

	Function.acall(aArgs);
}

function ButtonsListener_Think()
{
	if (g_aButtonsListener.len() > 0)
	{
		local hPlayer;
		while (hPlayer = Entities.FindByClassname(hPlayer, "player"))
		{
			foreach (button in g_aButtonsListener)
			{
				local team = button.GetTeam();

				if (team == eTeam.Everyone)
					CheckButtons(hPlayer, button);
				else if (team == eTeam.Survivor && hPlayer.IsSurvivor())
					CheckButtons(hPlayer, button);
				else
					CheckButtons(hPlayer, button);
			}
		}
	}
}

function CheckButtons(hPlayer, button)
{
	local buttons;
	local button_type = button.GetType();
	local idx = hPlayer.GetEntityIndex();

	if (button_type == eButtonType.Pressed)
		buttons = NetProps.GetPropInt(hPlayer, "m_afButtonPressed");
	else if (button_type == eButtonType.Released)
		buttons = NetProps.GetPropInt(hPlayer, "m_afButtonReleased");
	else
		buttons = NetProps.GetPropInt(hPlayer, "m_nButtons");

	if (buttons & button.GetButton()) button.GetCallingFunction()(hPlayer);
}

function InjectAdditionalClassMethods_Think()
{
	local hPlayer;
	while (hPlayer = Entities.FindByClassname(hPlayer, "player"))
	{
		InjectAdditionalClassMethods();
		RemoveOnTickFunction("InjectAdditionalClassMethods_Think");

		printl("[InjectAdditionalClassMethods_Think] Successfully injected");

		foreach (func in g_Hooks.AdditionalClassMethodsInjected)
			func();

		foreach (scriptPlugin in g_aScriptPlugins)
			scriptPlugin.AdditionalClassMethodsInjected();
		
		g_Hooks.AdditionalClassMethodsInjected.clear();

		break;
	}
}

if (g_bOverrideGameHooks)
{

function UserConsoleCommand(hPlayer, sArgs)
{
	if (g_aUserCommands.len() > 0 && sArgs)
	{
		sArgs = sArgs.tolower();

		local aArgs = split(sArgs, ",");
		local sCommand = aArgs[0];
		local sValue, aArgs, Function, bInputHandle, bInputValue, aArgsTemp;

		foreach (command in g_aUserCommands)
		{
			if (sCommand == command.GetCommand())
			{
				AnalyzeCommand(command, sArgs, hPlayer, ",");
			}
		}
	}
}

}

RegisterLoopFunction("OnTickCall", 0.01);
RegisterOnTickFunction("ButtonsListener_Think");
RegisterOnTickFunction("InjectAdditionalClassMethods_Think");

HookEvent("player_say", LOU_OnPlayerSay);
HookEvent("round_start", LOU_OnRoundStart);
HookEvent("round_end", LOU_OnRoundEnd);

if (!g_sMapName)
{
	function GetQueryData(queryData)
	{
		if (queryData["concept"] == "GetQueryData")
			::g_sMapName = queryData["map"];

		return false;
	}

	if (!("QueryDataRules" in this))
	{
		QueryDataRules <- true;
		g_rr.rr_ProcessRules([
			{
				name = "QueryData"
				criteria = [["concept", "GetQueryData"], [GetQueryData]]
				responses = [{scenename = ""}]
				group_params = g_rr.RGroupParams({ permitrepeats = true, sequential = false, norepeat = false })
			}
		]);
	}

	if (Entities.FindByClassname(null, "func_orator"))
	{
		EntFire("func_orator", "SpeakResponseConcept", "GetQueryData");
	}
	else
	{
		local orator;
		if (orator = SpawnEntityFromTable("func_orator", { targetname = "dummy_orator", origin = Vector(0,0,0), angles = Vector(0,0,0) }))
		{
			DoEntFire("!self", "SpeakResponseConcept", "GetQueryData", 0.0, null, orator);
			DoEntFire("!self", "Kill", "", 0.0, null, orator);
		}
	}
}

/*===============================*\
 *         Math Functions        *
\*===============================*/

/** If the value is not a number
* Signature: bool Math.IsNaN(float value)
*/

function Math::IsNaN(value)
{
	return ["1.#INF", "-1.#INF", "1.#IND", "-1.#IND", "1.#SNAN", "1.#QNAN"].find(value.tostring()) != null;
}

/** If the value is between two values
* Signature: bool Math.Between(float value, float min, float max)
*/

function Math::Between(value, min, max)
{
	return max > min ? (value > min && value < max) : (value > max && value < min);
}

/** Get the sign of value
* Signature: int Math.Sign(float value)
*/

function Math::Sign(value)
{
	return value <=> 0;
}

/** Get the minimum value
* Signature: float Math.Min(float a, float b)
*/

function Math::Min(a, b)
{
	return a < b ? a : b;
}

/** Get the maximum value
* Signature: float Math.Max(float a, float, b)
*/

function Math::Max(a, b)
{
	return a > b ? a : b;
}

/** Get the clamped value
* Signature: float Math.Clamp(float value, float min, float max)
*/

function Math::Clamp(n, min, max)
{
	return n < min ? min : (n > max ? max : n);
}

/** Linear Interpolation
* Signature: float Math.Lerp(float start, float end, float percent)
*/

function Math::Lerp(a, b, t)
{
	if (a == b || t == 0) return a;
	if (t == 1) return b;
	return a + (b - a) * t;
}

/** Linear Interpolation #2
* Signature: float Math.FLerp(float x, float x_start, float x_end, float y_start, float y_end)
*/

function Math::FLerp(x, x_start, x_end, y_start, y_end)
{
	x_end = x_end.tofloat(); x_start = x_start.tofloat();
	return y_start + ((x - x_start) * (y_end - y_start) / (x_end - x_start));
}

/** Returns the normalized angle
* Signature: float Math.NormalizeAngle(float angle)
*/

function Math::NormalizeAngle(flAngle)
{
	while (flAngle < -180.0) flAngle += 360.0;
	while (flAngle > 180.0) flAngle -= 360.0;
	return flAngle;
}

/*===============================*\
 *   Additional Vector Methods   *
\*===============================*/

/** Overload of '/' operator
* Example: Vector(1, 2, 3) / 2
*/

function Vector::_div(value)
{
	return this.Scale(1.0 / value);
}

/** Returns true if a vector is zero
* Signature: Vector Vector.IsZero(float tolerance)
*/

function Vector::IsZero(flTolerance = 0.001)
{
	if (flTolerance < 0) flTolerance *= -1;
	return x >= -flTolerance && x <= flTolerance && y >= -flTolerance && y <= flTolerance && z >= -flTolerance && z <= flTolerance;
}

/** Returns a normalized vector
* Signature: Vector Vector.Normalize()
*/

function Vector::Normalize()
{
	return this.Scale(1.0 / (FLT_EPSILON + this.Length()));
}

/** Returns the projection of vector from direction
* Signature: Vector Vector.Project(Vector vector)
*/

function Vector::Project(vector)
{
	local vecNorm = vector.Normalize();
	return vecNorm.Scale(this.Dot(vecNorm));
}

/** Returns the rejection of vector from direction
* Signature: Vector Vector.Reject(Vector vector)
*/

function Vector::Reject(vector)
{
	local vecNorm = vector.Normalize();
	return this - vecNorm.Scale(this.Dot(vecNorm));
}

/** Returns the reflection of a vector off a surface that have the specified normal
* Signature: Vector VMath.Reflect(Vector vector_a, Vector vector_b, float factor, bool projectMethod)
*/

function VMath::Reflect(vector_a, vector_b, flFactor = 2.0, bProjectMethod = true)
{
	return bProjectMethod ? vector_a - (vector_a.Project(vector_b) * flFactor) : (vector_a.Reject(vector_b) * flFactor) - vector_a;
}

/** The scalar product of two vectors
* Signature: float VMath.Dot(Vector vector_a, Vector vector_b)
*/

function VMath::Dot(vector_a, vector_b)
{
	return (vector_a.x * vector_b.x) + (vector_a.y * vector_b.y) + (vector_a.z * vector_b.z);
}

/** The vector product of two vectors
* Signature: Vector VMath.Cross(Vector vector_a, Vector vector_b)
*/

function VMath::Cross(vector_a, vector_b)
{
	return Vector(vector_a.y * vector_b.z - vector_b.y * vector_a.z, vector_a.z * vector_b.x - vector_b.z * vector_a.x, vector_a.x * vector_b.y - vector_b.x * vector_a.y);
}

/** Returns the Forward Vector of angles
* Signature: Vector VMath.Forward(QAngle angles)
*/

function VMath::Forward(eAngles)
{
	local flPitch = eAngles.x * Math.Deg2Rad;
	local flYaw = eAngles.y * Math.Deg2Rad;
	return Vector(cos(flPitch) * cos(flYaw), cos(flPitch) * sin(flYaw), sin(-flPitch));
}

/** Returns the Forward 2D Vector of angles
* Signature: Vector VMath.Forward(QAngle angles)
*/

function VMath::Forward2D(eAngles)
{
	local flYaw = eAngles.y * Math.Deg2Rad;
	return Vector(cos(flYaw), sin(flYaw), 0);
}

/** Returns the Left Vector of angles
* Signature: Vector VMath.Left(QAngle angles)
*/

function VMath::Left(eAngles)
{
	local flPitch = eAngles.x * Math.Deg2Rad;
	local flYaw = eAngles.y * Math.Deg2Rad;
	local flRoll = eAngles.z * Math.Deg2Rad;

	local flSinRoll, flSinPitch, flSinYaw, flCosRoll, flCosPitch, flCosYaw;

	flSinRoll = sin(flRoll); flSinPitch = sin(flPitch); flSinYaw = sin(flYaw);
	flCosRoll = cos(flRoll); flCosPitch = cos(flPitch); flCosYaw = cos(flYaw);

	return Vector(-1 * flSinRoll * flSinPitch * flCosYaw + -1 * flCosRoll * -flSinYaw, -1 * flSinRoll * flSinPitch * flSinYaw + -1 * flCosRoll * flCosYaw, -1 * flSinRoll * flCosPitch);
}

/** Returns the Up Vector of angles
* Signature: Vector VMath.Up(QAngle angles)
*/

function VMath::Up(eAngles)
{
	local flPitch = eAngles.x * Math.Deg2Rad;
	local flYaw = eAngles.y * Math.Deg2Rad;
	local flRoll = eAngles.z * Math.Deg2Rad;

	local flSinRoll, flSinPitch, flSinYaw, flCosRoll, flCosPitch, flCosYaw;

	flSinRoll = sin(flRoll); flSinPitch = sin(flPitch); flSinYaw = sin(flYaw);
	flCosRoll = cos(flRoll); flCosPitch = cos(flPitch); flCosYaw = cos(flYaw);
	
	return Vector(flCosRoll * flSinPitch * flCosYaw + -flSinRoll * -flSinYaw, flCosRoll * flSinPitch * flSinYaw + -flSinRoll * flCosYaw, flCosRoll * flCosPitch);
}

/** Get the angle between two normalized vectors using the scalar product method (faster)
* Signature: float GetAngleBetweenVectors(Vector vector_a, Vector vector_b)
*/

function GetAngleBetweenVectors(vector_a, vector_b)
{
	return acos(vector_a.Dot(vector_b)) * Math.Rad2Deg;
}

/** Get the angle between two normalized vectors using the vector product method
* Signature: float GetAngleBetweenVectors(Vector vector_a, Vector vector_b)
*/

function GetAngleBetweenVectors2(vector_a, vector_b)
{
	return asin(vector_a.Cross(vector_b).Length()) * Math.Rad2Deg;
}

/** Convert the vector to matrix Nx1
* Signature: CMatrix VectorToMatrix(Vector vec)
*/

function VectorToMatrix(vec)
{
	if (vec instanceof Vector)
		return CMatrix([ [vec.x], [vec.y], [vec.z] ], 3, 1);

	if (vec instanceof Vector4D)
		return CMatrix([ [vec.x], [vec.y], [vec.z], [vec.w] ], 4, 1);

	if (vec instanceof Vector2D)
		return CMatrix([ [vec.x], [vec.y] ], 2, 1);
}

/** Returns euler angles of the vector
* Signature: QAngle VectorToQAngle(Vector vector)
*/

function VectorToQAngle(vector)
{
	if (vector.IsZero(0.0)) return QAngle(0, 0, 0);

	local flPitch = -(atan(vector.z / vector.Length2D()) * Math.Rad2Deg);
	local flYaw = atan(vector.y / vector.x) * Math.Rad2Deg;

	if (vector.x < 0) flYaw += 180;

	return QAngle(flPitch, Math.IsNaN(flYaw) ? 0 : flYaw, 0);
}

/** Returns euler angles of the normalized vector
* Signature: QAngle VectorToQAngle2(Vector direction)
*/

function VectorToQAngle2(vecDirection)
{
	local flPitch = asin(vecDirection.z);
	local flYaw = asin(vecDirection.y / cos(flPitch)) * Math.Rad2Deg;

	flPitch = -flPitch * Math.Rad2Deg;

	if (vecDirection.x < 0)
	{
		flYaw *= -1;
		flYaw -= 180;
	}

	return VMath.NormalizeQAngle(QAngle(flPitch, flYaw, 0));
}

/** Linear interpolation between two vectors
* Signature: Vector VectorLerp(Vector vector_a, Vector vector_b, float time)
*/

function VectorLerp(vector_a, vector_b, t)
{
	return vector_a + (vector_b - vector_a) * t;
}

/** If the vector is between two vectors
* Signature: bool VectorBetween(Vector vector_min, Vector vector_max, Vector vector)
*/

function VectorBetween(vector_min, vector_max, vector)
{
	return Math.Between(vector.x, vector_min.x, vector_max.x) && Math.Between(vector.y, vector_min.y, vector_max.y) && Math.Between(vector.z, vector_min.z, vector_max.z);
}

/*===============================*\
 *   Additional QAngle Methods   *
\*===============================*/

/** Returns the normalized angles of the player's pov
* Signature: QAngle QAngle.Normalize()
*/

function QAngle::Normalize()
{
	local eAngles = this;
	while (eAngles.x < -90.0) eAngles.x += 180.0;
	while (eAngles.x > 90.0) eAngles.x -= 180.0;
	while (eAngles.y < -180.0) eAngles.y += 360.0;
	while (eAngles.y > 180.0) eAngles.y -= 360.0;
	while (eAngles.z < -50.0) eAngles.z += 100.0;
	while (eAngles.z > 50.0) eAngles.z -= 100.0;
	return eAngles;
}

/** Interpolate euler angles via quaternions
* Signature: QAngle OrientationLerp(QAngle a1, QAngle a2, float time, bool bSlerp, bool shortWay)
*/

function OrientationLerp(a1, a2, t, bSlerp, bShortWay)
{
	if (a1 == a2 || t == 0) return a1;
	if (t == 1) return a2;
	return bSlerp ? QuaternionSlerp(a1.ToQuat(), a2.ToQuat(), t, bShortWay).ToQAngle() : QuaternionLerp(a1.ToQuat(), a2.ToQuat(), t, bShortWay).ToQAngle();
}

/** Rotate euler angles using quaternion
* Signature: QAngle RotateOrientationWithQuaternion(QAngle angles)
*/

function RotateOrientationWithQuaternion(eAngles)
{
	local qYaw = QuaternionRotation(Vector(0, 0, 1), Math.Deg2Rad * eAngles.y);
	local qPitch = QuaternionRotation(Vector(0, -1, 0), Math.Deg2Rad * eAngles.x);
	local qRoll = QuaternionRotation(Vector(1, 0, 0), Math.Deg2Rad * eAngles.z);

	eAngles = qYaw.Multiply(qPitch).Multiply(qRoll).Invert().ToQAngle();
	eAngles.y *= -1;
	
	return eAngles;
}

/*=================================*\
 *  Additional Quaternion Methods  *
\*=================================*/

/** Negating the imaginary part
* Signature: Quaternion Quaternion.Conjugate()
*/

function Quaternion::Conjugate()
{
	return Quaternion(-x, -y, -z, w);
}

/** Inverse a quaternion
* Signature: Quaternion Quaternion.Inverse()
*/

function Quaternion::Inverse()
{
	local q = this.Conjugate();
	local norm = x * x + y * y + z * z + w * w;
	return Quaternion(q.x / norm, q.y / norm, q.z / norm, q.w / norm);
}

/** Multiply a quaternion by another quaternion
* Signature: Quaternion Quaternion.Multiply(Quaternion q)
*/

function Quaternion::Multiply(q)
{
	return Quaternion(w * q.x  +  x * q.w  +  y * q.z  -  z * q.y, w * q.y  -  x * q.z  +  y * q.w  +  z * q.x,
					w * q.z  +  x * q.y  -  y * q.x  +  z * q.w, w * q.w  -  x * q.x  -  y * q.y  -  z * q.z);
}

/** Create a quaternion to rotate a normalized vector by a specific angle in radians
* Signature: Quaternion QuaternionRotation(Vector direction, float angle)
*/

function QuaternionRotation(vecDirection, flAngle)
{
	local flSinAngle = sin(flAngle / 2.0);
	return Quaternion(vecDirection.x * flSinAngle, vecDirection.y * flSinAngle, vecDirection.z * flSinAngle, cos(flAngle / 2.0));
}

/** Linear interpolation between two quaternions
* Signature: Quaternion Quaternionlerp(Quaternion q1, Quaternion q2, float time, bool shortWay)
*/

function QuaternionLerp(q1, q2, t, bShortWay)
{
	if (q1 == q2 || t == 0) return q1;
	if (t == 1) return q2;

	local t2 = 1.0 - t;

	if (bShortWay)
	{
		if (q1.Dot(q2) < 0)
		{
			q1.x = -q1.x;
			q1.y = -q1.y;
			q1.z = -q1.z;
			q1.w = -q1.w;
		}
	}
	
	return Quaternion(q1.x * t2 + q2.x * t, q1.y * t2 + q2.y * t, q1.z * t2 + q2.z * t, q1.w * t2 + q2.w * t);
}

/** Spherical linear interpolation between two quaternions
* Signature: Quaternion QuaternionSlerp(Quaternion q1, Quaternion q2, float time, bool shortWay)
*/

function QuaternionSlerp(q1, q2, t, bShortWay)
{
	if (q1 == q2 || t == 0) return q1;
	if (t == 1) return q2;

	local flCosAngle = q1.Dot(q2);

	if (bShortWay)
	{
		if (flCosAngle < 0)
		{
			q2.x = -q2.x;
			q2.y = -q2.y;
			q2.z = -q2.z;
			q2.w = -q2.w;
			flCosAngle *= -1;
		}
	}

	if (abs(flCosAngle) >= 1.0) return q1;

	local flAngle = acos(flCosAngle);
	local flSinAngle = sqrt(1.0 - flCosAngle * flCosAngle);

	if (fabs(flSinAngle) < 0.001) return Quaternion(q1.x * 0.5 + q2.x * 0.5, q1.y * 0.5 + q2.y * 0.5, q1.z * 0.5 + q2.z * 0.5, q1.w * 0.5 + q2.w * 0.5);

	local ratioA = sin((1 - t) * flAngle) / flSinAngle;
	local ratioB = sin(t * flAngle) / flSinAngle;

	return Quaternion(q1.x * ratioA + q2.x * ratioB, q1.y * ratioA + q2.y * ratioB, q1.z * ratioA + q2.z * ratioB, q1.w * ratioA + q2.w * ratioB);
}
