// Math Module
// Author: Sw1ft >> http://steamcommunity.com/profiles/76561198397776991

/*===============================*\
 *   Enumerations & Constants    *
\*===============================*/

const FLT_MAX = 1e+37
const FLT_EPSILON = 0.0000001192092896

/*===============================*\
 *           Tables              *
\*===============================*/

VSLU.Math <-
{
	Deg2Rad = PI / 180.0
	Rad2Deg = 180.0 / PI
};

VSLU.Collision <- {};

/*===============================*\
 *         Math Functions        *
\*===============================*/

/** If the value is not a number
* Signature: bool VSLU::Math::IsNaN(float value)
*/

function VSLU::Math::IsNaN(value)
{
	return ["1.#IND", "-1.#IND", "1.#INF", "-1.#INF", "1.#SNAN", "1.#QNAN"].find("" + value) != null;
}

/** If the value is between two values
* Signature: bool VSLU::Math::Between(float value, float min, float max)
*/

function VSLU::Math::Between(value, min, max)
{
	return max > min ? (value > min && value < max) : (value > max && value < min);
}

/** Get the sign of value
* Signature: int VSLU::Math::Sign(float value)
*/

function VSLU::Math::Sign(value)
{
	return value <=> 0;
}

/** Get the minimum value
* Signature: float VSLU::Math::Min(float a, float b)
*/

function VSLU::Math::Min(a, b)
{
	return a < b ? a : b;
}

/** Get the maximum value
* Signature: float VSLU::Math::Max(float a, float, b)
*/

function VSLU::Math::Max(a, b)
{
	return a > b ? a : b;
}

/** Get the clamped value
* Signature: float VSLU::Math::Clamp(float value, float min, float max)
*/

function VSLU::Math::Clamp(n, min, max)
{
	return n < min ? min : (n > max ? max : n);
}

/** Hermite basis function for smooth interpolation. Input value must be between 0 and 1 inclusive
* Signature: float VSLU::Math::SimpleSpline(float value)
*/

function VSLU::Math::SimpleSpline(value)
{
	local valueSquared = value * value;
	return 3 * valueSquared - 2 * valueSquared * value;
}

/** Linear Interpolation
* Signature: float VSLU::Math::Lerp(float start, float end, float percent)
*/

function VSLU::Math::Lerp(a, b, t)
{
	return a + (b - a) * t;
}

/** Linear Interpolation #2
* Signature: float VSLU::Math::FLerp(float x, float x_start, float x_end, float y_start, float y_end)
*/

function VSLU::Math::FLerp(x, x_start, x_end, y_start, y_end)
{
	x_end = x_end.tofloat(); x_start = x_start.tofloat();
	return y_start + ((x - x_start) * (y_end - y_start) / (x_end - x_start));
}

/** Returns the normalized angle
* Signature: float VSLU::Math::NormalizeAngle(float angle)
*/

function VSLU::Math::NormalizeAngle(flAngle)
{
	while (flAngle < -180.0) flAngle += 360.0;
	while (flAngle >= 180.0) flAngle -= 360.0;

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

/** Returns Vector as 2D vector
* Signature: Vector2D Vector::AsVector2D()
*/

function Vector::AsVector2D()
{
	return Vector2D(x, y);
}

/** Returns true if a vector is zero
* Signature: bool Vector::IsZero(float tolerance)
*/

function Vector::IsZero(flTolerance = 0.001)
{
	return x >= -flTolerance && x <= flTolerance && y >= -flTolerance && y <= flTolerance && z >= -flTolerance && z <= flTolerance;
}

/** Returns true if a vector is unit
* Signature: bool Vector::IsUnit()
*/

function Vector::IsUnit()
{
	return this.LengthSqr() <= 1.001; // weird, yeah?
}

/** Returns a normalized vector
* Signature: Vector Vector::Normalize()
*/

function Vector::Normalize()
{
	return this.Scale(1.0 / (this.Length() + FLT_EPSILON));
}

/** Returns the projection of vector from direction
* Signature: Vector Vector::Project(Vector vector)
*/

function Vector::Project(vector)
{
	local vecNorm = vector.Normalize();
	return vecNorm.Scale(this.Dot(vecNorm));
}

/** Returns the rejection of vector from direction
* Signature: Vector Vector::Reject(Vector vector)
*/

function Vector::Reject(vector)
{
	local vecNorm = vector.Normalize();
	return this - vecNorm.Scale(this.Dot(vecNorm));
}

/*===============================*\
 *        Vector Functions       *
\*===============================*/

/** Returns the reflection of a vector off a surface that have the specified normal
* Signature: Vector VSLU::Math::VectorReflect(Vector rayDirection, Vector normal, float factor, bool projectMethod)
*/

function VSLU::Math::VectorReflect(vecRayDir, vecSurfaceNormal, flFactor = 2.0 /*, bProjectMethod = true*/)
{
	// return bProjectMethod ? vecRayDir - (vecRayDir.Project(vecSurfaceNormal) * flFactor) : (vecRayDir.Reject(vecSurfaceNormal) * flFactor) - vecRayDir;

	return vecRayDir - (vecSurfaceNormal.Scale(vecRayDir.Dot(vecSurfaceNormal)) * flFactor);
}

/** The scalar product of two vectors
* Signature: float VSLU::Math::DotProduct(Vector v1, Vector v2)
*/

function VSLU::Math::DotProduct(v1, v2)
{
	return v1.x * v2.x + v1.y * v2.y + v1.z * v2.z;
}

/** The vector product of two vectors
* Signature: Vector VSLU::Math::CrossProduct(Vector v1, Vector v2)
*/

function VSLU::Math::CrossProduct(v1, v2)
{
	return Vector(v1.y * v2.z - v2.y * v1.z, v1.z * v2.x - v2.z * v1.x, v1.x * v2.y - v2.x * v1.y);
}

/** Returns the Forward Vector of angles
* Signature: Vector VSLU::Math::QAngleToForwardVector(QAngle angles)
*/

function VSLU::Math::QAngleToForwardVector(vecAngles)
{
	local flPitch = vecAngles.x * VSLU.Math.Deg2Rad;
	local flYaw = vecAngles.y * VSLU.Math.Deg2Rad;

	return Vector(cos(flPitch) * cos(flYaw), cos(flPitch) * sin(flYaw), sin(-flPitch));
}

/** Returns the Forward 2D Vector of angles
* Signature: Vector VSLU::Math::QAngleToForwardVector2D(QAngle angles)
*/

function VSLU::Math::QAngleToForwardVector2D(vecAngles)
{
	local flYaw = vecAngles.y * VSLU.Math.Deg2Rad;
	return Vector(cos(flYaw), sin(flYaw), 0);
}

/** Returns the Left Vector of angles
* Signature: Vector VSLU::Math::QAngleToLeftVector(QAngle angles)
*/

function VSLU::Math::QAngleToLeftVector(vecAngles)
{
	local flPitch = vecAngles.x * VSLU.Math.Deg2Rad;
	local flYaw = vecAngles.y * VSLU.Math.Deg2Rad;
	local flRoll = vecAngles.z * VSLU.Math.Deg2Rad;

	local flSinRoll, flSinPitch, flSinYaw, flCosRoll, flCosPitch, flCosYaw;

	flSinRoll = sin(flRoll); flSinPitch = sin(flPitch); flSinYaw = sin(flYaw);
	flCosRoll = cos(flRoll); flCosPitch = cos(flPitch); flCosYaw = cos(flYaw);

	return Vector(-1 * flSinRoll * flSinPitch * flCosYaw + -1 * flCosRoll * -flSinYaw, -1 * flSinRoll * flSinPitch * flSinYaw + -1 * flCosRoll * flCosYaw, -1 * flSinRoll * flCosPitch);
}

/** Returns the Up Vector of angles
* Signature: Vector VSLU::Math::QAngleToUpVector(QAngle angles)
*/

function VSLU::Math::QAngleToUpVector(vecAngles)
{
	local flPitch = vecAngles.x * VSLU.Math.Deg2Rad;
	local flYaw = vecAngles.y * VSLU.Math.Deg2Rad;
	local flRoll = vecAngles.z * VSLU.Math.Deg2Rad;

	local flSinRoll, flSinPitch, flSinYaw, flCosRoll, flCosPitch, flCosYaw;

	flSinRoll = sin(flRoll); flSinPitch = sin(flPitch); flSinYaw = sin(flYaw);
	flCosRoll = cos(flRoll); flCosPitch = cos(flPitch); flCosYaw = cos(flYaw);
	
	return Vector(flCosRoll * flSinPitch * flCosYaw + -flSinRoll * -flSinYaw, flCosRoll * flSinPitch * flSinYaw + -flSinRoll * flCosYaw, flCosRoll * flCosPitch);
}

/** Get the angle between two normalized vectors using the scalar product method (faster)
* Signature: float VSLU::Math::GetAngleBetweenVectors(Vector v1, Vector v2)
*/

function VSLU::Math::GetAngleBetweenVectors(v1, v2)
{
	Assert( v1.IsUnit() );
	Assert( v2.IsUnit() );

	return acos(v1.Dot(v2)) * VSLU.Math.Rad2Deg;
}

/** Get the angle between two normalized vectors using the vector product method
* Signature: float VSLU::Math::GetAngleBetweenVectors2(Vector v1, Vector v2)
*/

function VSLU::Math::GetAngleBetweenVectors2(v1, v2)
{
	Assert( v1.IsUnit() );
	Assert( v2.IsUnit() );

	return asin(v1.Cross(v2).Length()) * VSLU.Math.Rad2Deg;
}

/** Returns euler angles of the vector
* Signature: QAngle VSLU::Math::VectorToQAngle(Vector vector)
*/

function VSLU::Math::VectorToQAngle(vector)
{
	if (vector.IsZero(0.0))
		return QAngle(0, 0, 0);

	local flPitch = -(atan(vector.z / vector.Length2D()) * VSLU.Math.Rad2Deg);
	local flYaw = atan(vector.y / vector.x) * VSLU.Math.Rad2Deg;

	if (vector.x < 0)
		flYaw += 180;

	return QAngle(flPitch, VSLU.Math.IsNaN(flYaw) ? 0 : flYaw, 0);
}

/** Returns euler angles of the normalized vector
* Signature: QAngle VSLU::Math::VectorToQAngle2(Vector direction)
*/

function VSLU::Math::VectorToQAngle2(vecDirection)
{
	Assert( vecDirection.IsUnit() );

	local flPitch = asin(vecDirection.z);
	local flYaw = asin(vecDirection.y / cos(flPitch)) * VSLU.Math.Rad2Deg;

	flPitch = -flPitch * VSLU.Math.Rad2Deg;

	if (vecDirection.x < 0.0)
	{
		flYaw *= -1.0;
		flYaw -= 180.0;
	}

	return QAngle(flPitch, flYaw, 0.0);
}

/** Linear interpolation between two angles
* Signature: QAngle VSLU::Math::AnglesLerp(QAngle from, QAngle to, float time)
*/

function VSLU::Math::AnglesLerp(from, to, t)
{
	return QAngle(from.x + (to.x - from.x) * t, VSLU.Math.NormalizeAngle(from.y + VSLU.Math.NormalizeAngle(to.y - from.y) * t), from.z + (to.z - from.z) * t);
}

/** Linear interpolation between two vectors
* Signature: Vector VSLU::Math::VectorLerp(Vector from, Vector to, float time)
*/

function VSLU::Math::VectorLerp(from, to, t)
{
	return from + (to - from) * t;
}

/** Spherical linear interpolation between two normalized vectors
* Signature: Vector VSLU::Math::VectorSlerp(Vector start, Vector end, float time)
*/

function VSLU::Math::VectorSlerp(vecStart, vecEnd, dt)
{
	Assert( vecStart.IsUnit() );
	Assert( vecEnd.IsUnit() );

	local flProjection = VSLU.Math.Clamp( vecStart.Dot(vecEnd), -1.0, 1.0 );

	local flTheta = acos(flProjection) * dt;
	local vecRelative = (vecEnd - vecStart * flProjection).Normalize();

	return vecStart * cos(flTheta) + vecRelative * sin(flTheta);
}

/** If the vector is between two vectors
* Signature: bool VSLU::Math::VectorBetween(Vector vector_min, Vector vector_max, Vector vector)
*/

function VSLU::Math::VectorBetween(vector_min, vector_max, vector)
{
	return VSLU.Math.Between(vector.x, vector_min.x, vector_max.x) && VSLU.Math.Between(vector.y, vector_min.y, vector_max.y) && VSLU.Math.Between(vector.z, vector_min.z, vector_max.z);
}

/** Returns tangent vector between two directions on a unit sphere
* Signature: Vector VSLU::Math::GetTangentLineOnSphere(Vector from, Vector to)
*/

function VSLU::Math::GetTangentLineOnSphere(from, to)
{
	return from.Cross(to).Cross(from);
}

/** Get corner points of a box
* Signature: array VSLU::Math::PointsFromBox(Vector mins, Vector maxs)
*/

function VSLU::Math::PointsFromBox(mins, maxs)
{
	local points = [];

	points.push( Vector(mins.x, mins.y, mins.z) );
	points.push( Vector(mins.x, mins.y, maxs.z) );
	points.push( Vector(mins.x, maxs.y, mins.z) );
	points.push( Vector(mins.x, maxs.y, maxs.z) );
	points.push( Vector(maxs.x, mins.y, mins.z) );
	points.push( Vector(maxs.x, mins.y, maxs.z) );
	points.push( Vector(maxs.x, maxs.y, mins.z) );
	points.push( Vector(maxs.x, maxs.y, maxs.z) );

	return points;
}

/*===============================*\
 *   Additional QAngle Methods   *
\*===============================*/

/** Returns the normalized angles of the player's pov
* Signature: QAngle QAngle::Normalize()
*/

function QAngle::Normalize()
{
	local vecAngles = this;

	while (vecAngles.x < -90.0) vecAngles.x += 180.0;
	while (vecAngles.x > 90.0) vecAngles.x -= 180.0;

	while (vecAngles.y < -180.0) vecAngles.y += 360.0;
	while (vecAngles.y > 180.0) vecAngles.y -= 360.0;

	while (vecAngles.z < -50.0) vecAngles.z += 100.0;
	while (vecAngles.z > 50.0) vecAngles.z -= 100.0;

	return vecAngles;
}

/** Returns QAngle as Vector
* Signature: Vector QAngle::AsVector()
*/

function QAngle::AsVector()
{
	return Vector(x, y, z);
}

/*===============================*\
 *        QAngle Functions       *
\*===============================*/

/** Compares two orientations with given precision
* Signature: bool VSLU::Math::OrientationsEqual(QAngle a1, QAngle a2, float precision)
*/

function VSLU::Math::OrientationsEqual(a1, a2, flPrecision = 0.00001)
{
	return a1.ToQuat().Dot( a2.ToQuat() ) >= 1.0 - flPrecision;
}

/** Compares two orientations with given precision angle
* Signature: bool VSLU::Math::OrientationsEqual2(QAngle a1, QAngle a2, float precisionAngle)
*/

function VSLU::Math::OrientationsEqual2(a1, a2, flPrecisionAngle = 0.1)
{
	return VSLU.Math.GetAngleBetweenVectors(a1.Forward(), a2.Forward()) <= flPrecisionAngle;
}

/** Interpolate euler angles via quaternions
* Signature: QAngle VSLU::Math::OrientationLerp(QAngle a1, QAngle a2, float time, bool bSlerp, bool shortWay)
*/

function VSLU::Math::OrientationLerp(a1, a2, t, bSlerp, bShortWay)
{
	// if (a1 == a2 || t == 0)
		// return a1;

	// if (t == 1)
	// 	return a2;

	return bSlerp ? VSLU.Math.QuaternionSlerp(a1.ToQuat(), a2.ToQuat(), t, bShortWay).ToQAngle() : VSLU.Math.QuaternionLerp(a1.ToQuat(), a2.ToQuat(), t, bShortWay).ToQAngle();
}

/** Rotate euler angles using quaternion
* Signature: QAngle VSLU::Math::RotateOrientationWithQuaternion(QAngle angles)
*/

function VSLU::Math::RotateOrientationWithQuaternion(vecAngles)
{
	local qYaw = VSLU.Math.QuaternionRotation(Vector(0, 0, 1), VSLU.Math.Deg2Rad * vecAngles.y);
	local qPitch = VSLU.Math.QuaternionRotation(Vector(0, -1, 0), VSLU.Math.Deg2Rad * vecAngles.x);
	local qRoll = VSLU.Math.QuaternionRotation(Vector(1, 0, 0), VSLU.Math.Deg2Rad * vecAngles.z);

	vecAngles = qYaw.Multiply(qPitch).Multiply(qRoll).Invert().ToQAngle();
	vecAngles.y *= -1;
	
	return vecAngles;
}

/*=================================*\
 *  Additional Quaternion Methods  *
\*=================================*/

/** Negating the imaginary part
* Signature: Quaternion Quaternion::Conjugate()
*/

function Quaternion::Conjugate()
{
	return Quaternion(-x, -y, -z, w);
}

/** Inverse a quaternion
* Signature: Quaternion Quaternion::Inverse()
*/

function Quaternion::Inverse()
{
	local q = this.Conjugate();
	local norm = x * x + y * y + z * z + w * w;

	return Quaternion(q.x / norm, q.y / norm, q.z / norm, q.w / norm);
}

/** Multiply a quaternion by another quaternion
* Signature: Quaternion Quaternion::Multiply(Quaternion q)
*/

function Quaternion::Multiply(q)
{
	return Quaternion(w * q.x  +  x * q.w  +  y * q.z  -  z * q.y,
					w * q.y  -  x * q.z  +  y * q.w  +  z * q.x,
					w * q.z  +  x * q.y  -  y * q.x  +  z * q.w,
					w * q.w  -  x * q.x  -  y * q.y  -  z * q.z);
}

/*=================================*\
 *       Quaternion Functions      *
\*=================================*/

/** Create a quaternion to rotate a normalized vector by a specific angle in radians
* Signature: Quaternion VSLU::Math::QuaternionRotation(Vector direction, float angle)
*/

function VSLU::Math::QuaternionRotation(vecDirection, flAngle)
{
	Assert( vecDirection.IsUnit() );

	local flSinAngle = sin(flAngle / 2.0);

	return Quaternion(vecDirection.x * flSinAngle, vecDirection.y * flSinAngle, vecDirection.z * flSinAngle, cos(flAngle / 2.0));
}

/** Linear interpolation between two quaternions
* Signature: Quaternion VSLU::Math::QuaternionLerp(Quaternion q1, Quaternion q2, float time, bool shortWay)
*/

function VSLU::Math::QuaternionLerp(q1, q2, t, bShortWay)
{
	// if (q1 == q2 || t == 0)
	// 	return q1;

	// if (t == 1)
	// 	return q2;

	local t2 = 1.0 - t;

	if (bShortWay && q1.Dot(q2) < 0)
	{
		q1.x = -q1.x;
		q1.y = -q1.y;
		q1.z = -q1.z;
		q1.w = -q1.w;
	}
	
	return Quaternion(q1.x * t2 + q2.x * t, q1.y * t2 + q2.y * t, q1.z * t2 + q2.z * t, q1.w * t2 + q2.w * t);
}

/** Spherical linear interpolation between two quaternions
* Signature: Quaternion VSLU::Math::QuaternionSlerp(Quaternion q1, Quaternion q2, float time, bool shortWay)
*/

function VSLU::Math::QuaternionSlerp(q1, q2, t, bShortWay)
{
	// if (q1 == q2 || t == 0)
	// 	return q1;

	// if (t == 1)
	// 	return q2;

	local flCosAngle = q1.Dot(q2);

	if ( bShortWay && flCosAngle < 0 )
	{
		q2.x = -q2.x;
		q2.y = -q2.y;
		q2.z = -q2.z;
		q2.w = -q2.w;

		flCosAngle *= -1;
	}

	if ( abs(flCosAngle) >= 1.0 )
		return q1;

	local flAngle = acos(flCosAngle);
	local flSinAngle = sqrt(1.0 - flCosAngle * flCosAngle);

	if ( fabs(flSinAngle) < 0.001 )
		return Quaternion(q1.x * 0.5 + q2.x * 0.5, q1.y * 0.5 + q2.y * 0.5, q1.z * 0.5 + q2.z * 0.5, q1.w * 0.5 + q2.w * 0.5);

	local ratioA = sin((1 - t) * flAngle) / flSinAngle;
	local ratioB = sin(t * flAngle) / flSinAngle;

	return Quaternion(q1.x * ratioA + q2.x * ratioB, q1.y * ratioA + q2.y * ratioB, q1.z * ratioA + q2.z * ratioB, q1.w * ratioA + q2.w * ratioB);
}

/*=================================*\
 *            Collisions           *
\*=================================*/

/** Checks if axis-aligned bounding box is intersecting another axis-aligned bounding box
* Signature: bool VSLU::Collision::IsAABBIntersectingAABB(Vector boxMins1, Vector boxMaxs1, Vector boxMins2, Vector boxMaxs2)
*/

function VSLU::Collision::IsAABBIntersectingAABB(vecBoxMins1, vecBoxMaxs1, vecBoxMins2, vecBoxMaxs2)
{
	return (vecBoxMins1.x <= vecBoxMaxs2.x && vecBoxMaxs1.x >= vecBoxMins2.x) &&
			(vecBoxMins1.y <= vecBoxMaxs2.y && vecBoxMaxs1.y >= vecBoxMins2.y) &&
			(vecBoxMins1.z <= vecBoxMaxs2.z && vecBoxMaxs1.z >= vecBoxMins2.z);
}

/** Checks if ray is intersecting axis-aligned bounding box
* Signature: bool VSLU::Collision::IsRayIntersectingBox(Vector boxMins, Vector boxMaxs, Vector rayPosition, Vector rayDirection, float intersectionIntervalMin, float intersectionIntervalMax)
*/

function VSLU::Collision::IsRayIntersectingAABB(vecBoxMins, vecBoxMaxs, vecRayOrigin, vecRayDir, flIntersectionIntervalMin, flIntersectionIntervalMax)
{
    local tmin, tmax, tymin, tymax, tzmin, tzmax;

	// local vecInvDir = Vector(1.0 / vecRayDir.x, 1.0 / vecRayDir.y, 1.0 / vecRayDir.z);

	// local raySignX = (vecInvDir.x < 0).tointeger();
	// local raySignY = (vecInvDir.y < 0).tointeger();
	// local raySignZ = (vecInvDir.z < 0).tointeger();

	// tmin = ((raySignX ? vecBoxMaxs.x : vecBoxMins.x) - vecRayOrigin.x) * vecInvDir.x;
	// tmax = ((1 - raySignX ? vecBoxMaxs.x : vecBoxMins.x) - vecRayOrigin.x) * vecInvDir.x;
	// tymin = ((raySignY ? vecBoxMaxs.y : vecBoxMins.y) - vecRayOrigin.y) * vecInvDir.y;
	// tymax = ((1 - raySignY ? vecBoxMaxs.y : vecBoxMins.y) - vecRayOrigin.y) * vecInvDir.y;

	if (vecRayDir.x >= 0)
	{
		tmin = (vecBoxMins.x - vecRayOrigin.x) / vecRayDir.x;
		tmax = (vecBoxMaxs.x - vecRayOrigin.x) / vecRayDir.x;
	}
	else
	{
		tmin = (vecBoxMaxs.x - vecRayOrigin.x) / vecRayDir.x;
		tmax = (vecBoxMins.x - vecRayOrigin.x) / vecRayDir.x;
	}

	if (vecRayDir.y >= 0)
	{
		tymin = (vecBoxMins.y - vecRayOrigin.y) / vecRayDir.y;
		tymax = (vecBoxMaxs.y - vecRayOrigin.y) / vecRayDir.y;
	}
	else
	{
		tymin = (vecBoxMaxs.y - vecRayOrigin.y) / vecRayDir.y;
		tymax = (vecBoxMins.y - vecRayOrigin.y) / vecRayDir.y;
	}

	if (tmin > tymax || tymin > tmax)
		return false;

	if (tymin > tmin)
		tmin = tymin;
	
	if (tymax < tmax)
		tmax = tymax;
	
	// tzmin = ((raySignZ ? vecBoxMaxs.z : vecBoxMins.z) - vecRayOrigin.z) * vecInvDir.z;
	// tzmax = ((1 - raySignZ ? vecBoxMaxs.z : vecBoxMins.z) - vecRayOrigin.z) * vecInvDir.z;

    if (vecRayDir.z >= 0)
    {
        tzmin = (vecBoxMins.z - vecRayOrigin.z) / vecRayDir.z;
        tzmax = (vecBoxMaxs.z - vecRayOrigin.z) / vecRayDir.z;
    }
    else
    {
        tzmin = (vecBoxMaxs.z - vecRayOrigin.z) / vecRayDir.z;
        tzmax = (vecBoxMins.z - vecRayOrigin.z) / vecRayDir.z;
    }

	if (tmin > tzmax || tzmin > tmax)
		return false;
	
	if (tzmin > tmin)
		tmin = tzmin;
	
	if (tzmax < tmax)
		tmax = tzmax;
	
	return tmin < flIntersectionIntervalMax && tmax > flIntersectionIntervalMin;
}

/** Checks if line is intersecting axis-aligned bounding box
* Signature: bool VSLU::Collision::IsLineIntersectingAABB(Vector p1, Vector p2, Vector boxMins, Vector boxMaxs)
*/

function VSLU::Collision::IsLineIntersectingAABB(p1, p2, vecBoxMins, vecBoxMaxs)
{
	local vecLineDir = (p2 - p1) * 0.5;
	local vecBoxMid = (vecBoxMaxs - vecBoxMins) * 0.5;
	local p3 = p1 + vecLineDir - (vecBoxMins + vecBoxMaxs) * 0.5;
	local vecAbsLineMid = Vector(fabs(vecLineDir.x), fabs(vecLineDir.y), fabs(vecLineDir.z));
	
	if ( fabs(p3.x) > vecBoxMid.x + vecAbsLineMid.x || fabs(p3.y) > vecBoxMid.y + vecAbsLineMid.y || fabs(p3.z) > vecBoxMid.z + vecAbsLineMid.z )
		return false;
	
	if ( fabs(vecLineDir.y * p3.z - vecLineDir.z * p3.y) > vecBoxMid.y * vecAbsLineMid.z + vecBoxMid.z * vecAbsLineMid.y )
		return false;
	
	if ( fabs(vecLineDir.z * p3.x - vecLineDir.x * p3.z) > vecBoxMid.z * vecAbsLineMid.x + vecBoxMid.x * vecAbsLineMid.z )
		return false;
	
	if ( fabs(vecLineDir.x * p3.y - vecLineDir.y * p3.x) > vecBoxMid.x * vecAbsLineMid.y + vecBoxMid.y * vecAbsLineMid.x )
		return false;
	
	return true;
}

/** Checks if oriented bounding box is intersecting another oriented bounding box
* Signature: bool VSLU::Collision::IsOBBIntersectingOBB(Vector origin1, QAngle angles1, Vector boxMins1, Vector boxMaxs1, Vector origin2, QAngle angles2, Vector boxMins2, Vector boxMaxs2)
*/

function VSLU::Collision::IsOBBIntersectingOBB(vecOrigin1, vecAngles1, vecMins1, vecMaxs1, vecOrigin2, vecAngles2, vecMins2, vecMaxs2)
{
    local function AreVerticesNotOverlapping(aVertices1, aVertices2, vecAxis)
    {
        local min1, max1, min2, max2, scalar;

        scalar = aVertices1[0].Dot(vecAxis);

        min1 = scalar;
        max1 = scalar;

        scalar = aVertices2[0].Dot(vecAxis);

        min2 = scalar;
        max2 = scalar;

        for (local i = 1; i < 8; ++i)
        {
            scalar = aVertices1[i].Dot(vecAxis);

            min1 = VSLU.Math.Min(min1, scalar);
            max1 = VSLU.Math.Max(max1, scalar);

            scalar = aVertices2[i].Dot(vecAxis);

            min2 = VSLU.Math.Min(min2, scalar);
            max2 = VSLU.Math.Max(max2, scalar);
        }

        return min1 > max2 || min2 > max1;
    }

    local box1ToWorld = matrix3x4(vecOrigin1, vecAngles1);
    local box2ToWorld = matrix3x4(vecOrigin2, vecAngles2);

    local aVertices1 = VSLU.Math.PointsFromBox(vecMins1, vecMaxs1);
    local aVertices2 = VSLU.Math.PointsFromBox(vecMins2, vecMaxs2);

    local axisX1 = box1ToWorld.VectorRotate( Vector(1, 0, 0) );
    local axisY1 = box1ToWorld.VectorRotate( Vector(0, 1, 0) );
    local axisZ1 = box1ToWorld.VectorRotate( Vector(0, 0, 1) );

    local axisX2 = box2ToWorld.VectorRotate( Vector(1, 0, 0) );
    local axisY2 = box2ToWorld.VectorRotate( Vector(0, 1, 0) );
    local axisZ2 = box2ToWorld.VectorRotate( Vector(0, 0, 1) );

    for (local i = 0; i < 8; ++i)
    {
        aVertices1[i] = box1ToWorld.VectorTransform( aVertices1[i] );
        aVertices2[i] = box2ToWorld.VectorTransform( aVertices2[i] );
    }

    if ( AreVerticesNotOverlapping(aVertices1, aVertices2, axisX1) || AreVerticesNotOverlapping(aVertices1, aVertices2, axisY1) || AreVerticesNotOverlapping(aVertices1, aVertices2, axisZ1) ||
        AreVerticesNotOverlapping(aVertices1, aVertices2, axisX2) || AreVerticesNotOverlapping(aVertices1, aVertices2, axisY2) || AreVerticesNotOverlapping(aVertices1, aVertices2, axisZ2) )
    {
        return false;
    }

    local vecCrossXX = axisX1.Cross( axisX2 );
    local vecCrossXY = axisX1.Cross( axisY2 );
    local vecCrossXZ = axisX1.Cross( axisZ2 );

    if ( AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossXX) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossXY) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossXZ) )
    {
        return false;
    }

    local vecCrossYX = axisY1.Cross( axisX2 );
    local vecCrossYY = axisY1.Cross( axisY2 );
    local vecCrossYZ = axisY1.Cross( axisZ2 );

    if ( AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossYX) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossYY) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossYZ) )
    {
        return false;
    }

    local vecCrossZX = axisZ1.Cross( axisX2 );
    local vecCrossZY = axisZ1.Cross( axisY2 );
    local vecCrossZZ = axisZ1.Cross( axisZ2 );

    if ( AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossZX) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossZY) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossZZ) )
    {
        return false;
    }

    return true;
}

/** Checks if oriented bounding box is intersecting axis-aligned bounding box
* Signature: bool VSLU::Collision::IsOBBIntersectingAABB(Vector origin1, QAngle angles1, Vector boxMins1, Vector boxMaxs1, Vector origin2, Vector boxMins2, Vector boxMaxs2)
*/

function VSLU::Collision::IsOBBIntersectingAABB(vecOrigin1, vecAngles1, vecMins1, vecMaxs1, vecOrigin2, vecMins2, vecMaxs2)
{
    local function AreVerticesNotOverlapping(aVertices1, aVertices2, vecAxis)
    {
        local min1, max1, min2, max2, scalar;

        scalar = aVertices1[0].Dot(vecAxis);

        min1 = scalar;
        max1 = scalar;

        scalar = aVertices2[0].Dot(vecAxis);

        min2 = scalar;
        max2 = scalar;

        for (local i = 1; i < 8; ++i)
        {
            scalar = aVertices1[i].Dot(vecAxis);

            min1 = VSLU.Math.Min(min1, scalar);
            max1 = VSLU.Math.Max(max1, scalar);

            scalar = aVertices2[i].Dot(vecAxis);

            min2 = VSLU.Math.Min(min2, scalar);
            max2 = VSLU.Math.Max(max2, scalar);
        }

        return min1 > max2 || min2 > max1;
    }

    local box1ToWorld = matrix3x4(vecOrigin1, vecAngles1);

    local aVertices1 = VSLU.Math.PointsFromBox(vecMins1, vecMaxs1);
    local aVertices2 = VSLU.Math.PointsFromBox(vecMins2, vecMaxs2);

    local axisX1 = box1ToWorld.VectorRotate( Vector(1, 0, 0) );
    local axisY1 = box1ToWorld.VectorRotate( Vector(0, 1, 0) );
    local axisZ1 = box1ToWorld.VectorRotate( Vector(0, 0, 1) );

    local axisX2 = Vector(1, 0, 0);
    local axisY2 = Vector(0, 1, 0);
    local axisZ2 = Vector(0, 0, 1);

    for (local i = 0; i < 8; ++i)
    {
        aVertices1[i] = box1ToWorld.VectorTransform( aVertices1[i] );
        aVertices2[i] += vecOrigin2;
    }

    if ( AreVerticesNotOverlapping(aVertices1, aVertices2, axisX1) || AreVerticesNotOverlapping(aVertices1, aVertices2, axisY1) || AreVerticesNotOverlapping(aVertices1, aVertices2, axisZ1) ||
        AreVerticesNotOverlapping(aVertices1, aVertices2, axisX2) || AreVerticesNotOverlapping(aVertices1, aVertices2, axisY2) || AreVerticesNotOverlapping(aVertices1, aVertices2, axisZ2) )
    {
        return false;
    }

    local vecCrossXX = axisX1.Cross( axisX2 );
    local vecCrossXY = axisX1.Cross( axisY2 );
    local vecCrossXZ = axisX1.Cross( axisZ2 );

    if ( AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossXX) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossXY) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossXZ) )
    {
        return false;
    }

    local vecCrossYX = axisY1.Cross( axisX2 );
    local vecCrossYY = axisY1.Cross( axisY2 );
    local vecCrossYZ = axisY1.Cross( axisZ2 );

    if ( AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossYX) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossYY) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossYZ) )
    {
        return false;
    }

    local vecCrossZX = axisZ1.Cross( axisX2 );
    local vecCrossZY = axisZ1.Cross( axisY2 );
    local vecCrossZZ = axisZ1.Cross( axisZ2 );

    if ( AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossZX) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossZY) || AreVerticesNotOverlapping(aVertices1, aVertices2, vecCrossZZ) )
    {
        return false;
    }

    return true;
}