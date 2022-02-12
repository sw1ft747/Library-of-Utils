// Math Module
// Author: Sw1ft >> http://steamcommunity.com/profiles/76561198397776991

/*===============================*\
 *   Enumerations & Constants    *
\*===============================*/

const FLT_EPSILON = 0.0000001192092896;

/*===============================*\
 *           Tables              *
\*===============================*/

Math <-
{
	Deg2Rad = PI / 180.0
	Rad2Deg = 180.0 / PI
};

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

/** Hermite basis function for smooth interpolation. Input value must be between 0 and 1 inclusive
* Signature: float Math.SimpleSpline(float value)
*/

function Math::SimpleSpline(value)
{
	local valueSquared = value * value;
	return 3 * valueSquared - 2 * valueSquared * value;
}

/** Linear Interpolation
* Signature: float Math.Lerp(float start, float end, float percent)
*/

function Math::Lerp(a, b, t)
{
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

/** Returns true if a vector is zero
* Signature: bool Vector.IsZero(float tolerance)
*/

function Vector::IsZero(flTolerance = 0.001)
{
	return x >= -flTolerance && x <= flTolerance && y >= -flTolerance && y <= flTolerance && z >= -flTolerance && z <= flTolerance;
}

/** Returns true if a vector is unit
* Signature: bool Vector.IsUnit()
*/

function Vector::IsUnit()
{
	return this.LengthSqr() <= 1.01; // weird, yeah?
}

/** Returns a normalized vector
* Signature: Vector Vector.Normalize()
*/

function Vector::Normalize()
{
	return this.Scale(1.0 / (this.Length() + FLT_EPSILON));
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
* Signature: Vector VectorReflect(Vector rayDirection, Vector normal, float factor, bool projectMethod)
*/

function VectorReflect(vecRayDir, vecSurfaceNormal, flFactor = 2.0 /*, bProjectMethod = true*/)
{
	// return bProjectMethod ? vecRayDir - (vecRayDir.Project(vecSurfaceNormal) * flFactor) : (vecRayDir.Reject(vecSurfaceNormal) * flFactor) - vecRayDir;

	return vecRayDir - (vecRayDir.Project(vecSurfaceNormal) * flFactor);
}

/** The scalar product of two vectors
* Signature: float DotProduct(Vector vector_a, Vector vector_b)
*/

function DotProduct(vector_a, vector_b)
{
	return (vector_a.x * vector_b.x) + (vector_a.y * vector_b.y) + (vector_a.z * vector_b.z);
}

/** The vector product of two vectors
* Signature: Vector CrossProduct(Vector vector_a, Vector vector_b)
*/

function CrossProduct(vector_a, vector_b)
{
	return Vector(vector_a.y * vector_b.z - vector_b.y * vector_a.z, vector_a.z * vector_b.x - vector_b.z * vector_a.x, vector_a.x * vector_b.y - vector_b.x * vector_a.y);
}

/** Returns the Forward Vector of angles
* Signature: Vector QAngleToForwardVector(QAngle angles)
*/

function QAngleToForwardVector(vecAngles)
{
	local flPitch = vecAngles.x * Math.Deg2Rad;
	local flYaw = vecAngles.y * Math.Deg2Rad;

	return Vector(cos(flPitch) * cos(flYaw), cos(flPitch) * sin(flYaw), sin(-flPitch));
}

/** Returns the Forward 2D Vector of angles
* Signature: Vector QAngleToForwardVector2D(QAngle angles)
*/

function QAngleToForwardVector2D(vecAngles)
{
	local flYaw = vecAngles.y * Math.Deg2Rad;
	return Vector(cos(flYaw), sin(flYaw), 0);
}

/** Returns the Left Vector of angles
* Signature: Vector QAngleToLeftVector(QAngle angles)
*/

function QAngleToLeftVector(vecAngles)
{
	local flPitch = vecAngles.x * Math.Deg2Rad;
	local flYaw = vecAngles.y * Math.Deg2Rad;
	local flRoll = vecAngles.z * Math.Deg2Rad;

	local flSinRoll, flSinPitch, flSinYaw, flCosRoll, flCosPitch, flCosYaw;

	flSinRoll = sin(flRoll); flSinPitch = sin(flPitch); flSinYaw = sin(flYaw);
	flCosRoll = cos(flRoll); flCosPitch = cos(flPitch); flCosYaw = cos(flYaw);

	return Vector(-1 * flSinRoll * flSinPitch * flCosYaw + -1 * flCosRoll * -flSinYaw, -1 * flSinRoll * flSinPitch * flSinYaw + -1 * flCosRoll * flCosYaw, -1 * flSinRoll * flCosPitch);
}

/** Returns the Up Vector of angles
* Signature: Vector QAngleToUpVector(QAngle angles)
*/

function QAngleToUpVector(vecAngles)
{
	local flPitch = vecAngles.x * Math.Deg2Rad;
	local flYaw = vecAngles.y * Math.Deg2Rad;
	local flRoll = vecAngles.z * Math.Deg2Rad;

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
	Assert(vector_a.IsUnit());
	Assert(vector_b.IsUnit());

	return acos(vector_a.Dot(vector_b)) * Math.Rad2Deg;
}

/** Get the angle between two normalized vectors using the vector product method
* Signature: float GetAngleBetweenVectors(Vector vector_a, Vector vector_b)
*/

function GetAngleBetweenVectors2(vector_a, vector_b)
{
	Assert(vector_a.IsUnit());
	Assert(vector_b.IsUnit());

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
	if (vector.IsZero(0.0))
		return QAngle(0, 0, 0);

	local flPitch = -(atan(vector.z / vector.Length2D()) * Math.Rad2Deg);
	local flYaw = atan(vector.y / vector.x) * Math.Rad2Deg;

	if (vector.x < 0)
		flYaw += 180;

	return QAngle(flPitch, Math.IsNaN(flYaw) ? 0 : flYaw, 0);
}

/** Returns euler angles of the normalized vector
* Signature: QAngle VectorToQAngle2(Vector direction)
*/

function VectorToQAngle2(vecDirection)
{
	Assert(vecDirection.IsUnit());

	local flPitch = asin(vecDirection.z);
	local flYaw = asin(vecDirection.y / cos(flPitch)) * Math.Rad2Deg;

	flPitch = -flPitch * Math.Rad2Deg;

	if (vecDirection.x < 0.0)
	{
		flYaw *= -1.0;
		flYaw -= 180.0;
	}

	return QAngle(flPitch, flYaw, 0.0);
}

/** Linear interpolation between two angles
* Signature: QAngle AnglesLerp(QAngle from, QAngle to, float time)
*/

function AnglesLerp(from, to, t)
{
	return QAngle(from.x + (to.x - from.x) * t, Math.NormalizeAngle(from.y + Math.NormalizeAngle(to.y - from.y) * t), from.z + (to.z - from.z) * t);
}

/** Linear interpolation between two vectors
* Signature: Vector VectorLerp(Vector from, Vector to, float time)
*/

function VectorLerp(from, to, t)
{
	return from + (to - from) * t;
}

/** Spherical linear interpolation between two normalized vectors
* Signature: Vector VectorSlerp(Vector start, Vector end, float time)
*/

function VectorSlerp(vecStart, vecEnd, dt)
{
	Assert(vecStart.IsUnit());
	Assert(vecEnd.IsUnit());

	local flProjection = vecStart.Dot(vecEnd);
	flProjection = Math.Clamp(flProjection, -1.0, 1.0);

	local flTheta = acos(flProjection) * dt;
	local vecRelative = (vecEnd - vecStart * flProjection).Normalize();

	return vecStart * cos(flTheta) + vecRelative * sin(flTheta);
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
	local vecAngles = this;

	while (vecAngles.x < -90.0) vecAngles.x += 180.0;
	while (vecAngles.x > 90.0) vecAngles.x -= 180.0;

	while (vecAngles.y < -180.0) vecAngles.y += 360.0;
	while (vecAngles.y > 180.0) vecAngles.y -= 360.0;

	while (vecAngles.z < -50.0) vecAngles.z += 100.0;
	while (vecAngles.z > 50.0) vecAngles.z -= 100.0;

	return vecAngles;
}

/** Compares two orientations with given precision
* Signature: bool OrientationsEqual(QAngle a1, QAngle a2, float precision)
*/

function OrientationsEqual(a1, a2, flPrecision = 0.00001)
{
	return a1.ToQuat().Dot( a2.ToQuat() ) >= 1.0 - flPrecision;
}

/** Interpolate euler angles via quaternions
* Signature: QAngle OrientationLerp(QAngle a1, QAngle a2, float time, bool bSlerp, bool shortWay)
*/

function OrientationLerp(a1, a2, t, bSlerp, bShortWay)
{
	// if (a1 == a2 || t == 0)
		// return a1;

	// if (t == 1)
	// 	return a2;

	return bSlerp ? QuaternionSlerp(a1.ToQuat(), a2.ToQuat(), t, bShortWay).ToQAngle() : QuaternionLerp(a1.ToQuat(), a2.ToQuat(), t, bShortWay).ToQAngle();
}

/** Rotate euler angles using quaternion
* Signature: QAngle RotateOrientationWithQuaternion(QAngle angles)
*/

function RotateOrientationWithQuaternion(vecAngles)
{
	local qYaw = QuaternionRotation(Vector(0, 0, 1), Math.Deg2Rad * vecAngles.y);
	local qPitch = QuaternionRotation(Vector(0, -1, 0), Math.Deg2Rad * vecAngles.x);
	local qRoll = QuaternionRotation(Vector(1, 0, 0), Math.Deg2Rad * vecAngles.z);

	vecAngles = qYaw.Multiply(qPitch).Multiply(qRoll).Invert().ToQAngle();
	vecAngles.y *= -1;
	
	return vecAngles;
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
	return Quaternion(w * q.x  +  x * q.w  +  y * q.z  -  z * q.y,
					w * q.y  -  x * q.z  +  y * q.w  +  z * q.x,
					w * q.z  +  x * q.y  -  y * q.x  +  z * q.w,
					w * q.w  -  x * q.x  -  y * q.y  -  z * q.z);
}

/** Create a quaternion to rotate a normalized vector by a specific angle in radians
* Signature: Quaternion QuaternionRotation(Vector direction, float angle)
*/

function QuaternionRotation(vecDirection, flAngle)
{
	Assert(vecDirection.IsUnit());

	local flSinAngle = sin(flAngle / 2.0);
	return Quaternion(vecDirection.x * flSinAngle, vecDirection.y * flSinAngle, vecDirection.z * flSinAngle, cos(flAngle / 2.0));
}

/** Linear interpolation between two quaternions
* Signature: Quaternion Quaternionlerp(Quaternion q1, Quaternion q2, float time, bool shortWay)
*/

function QuaternionLerp(q1, q2, t, bShortWay)
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
* Signature: Quaternion QuaternionSlerp(Quaternion q1, Quaternion q2, float time, bool shortWay)
*/

function QuaternionSlerp(q1, q2, t, bShortWay)
{
	// if (q1 == q2 || t == 0)
	// 	return q1;

	// if (t == 1)
	// 	return q2;

	local flCosAngle = q1.Dot(q2);

	if (bShortWay && flCosAngle < 0)
	{
		q2.x = -q2.x;
		q2.y = -q2.y;
		q2.z = -q2.z;
		q2.w = -q2.w;
		flCosAngle *= -1;
	}

	if (abs(flCosAngle) >= 1.0)
		return q1;

	local flAngle = acos(flCosAngle);
	local flSinAngle = sqrt(1.0 - flCosAngle * flCosAngle);

	if (fabs(flSinAngle) < 0.001)
		return Quaternion(q1.x * 0.5 + q2.x * 0.5, q1.y * 0.5 + q2.y * 0.5, q1.z * 0.5 + q2.z * 0.5, q1.w * 0.5 + q2.w * 0.5);

	local ratioA = sin((1 - t) * flAngle) / flSinAngle;
	local ratioB = sin(t * flAngle) / flSinAngle;

	return Quaternion(q1.x * ratioA + q2.x * ratioB, q1.y * ratioA + q2.y * ratioB, q1.z * ratioA + q2.z * ratioB, q1.w * ratioA + q2.w * ratioB);
}