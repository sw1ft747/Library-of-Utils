// Matrix Module
// Author: Sw1ft >> http://steamcommunity.com/profiles/76561198397776991

/*===============================*\
 *           Classes             *
\*===============================*/

/** Class matrix3x4
* Signature: class matrix3x4(any args: { array of arrays (3x4) } or { CBaseEntity entity } or { Vector pos, QAngle angle (optional), float scale (optional) })
*/

class matrix3x4
{
	constructor(...)
	{
		matrix = // identity matrix by default
		[
			[1.0, 0.0, 0.0, 0.0],
			[0.0, 1.0, 0.0, 0.0],
			[0.0, 0.0, 1.0, 0.0]
		];

		if (vargv.len() > 0)
		{
			local sType = typeof vargv[0];

			if (sType == "array") // Array of arrays of values (3x4)
			{
				local aMatrix = vargv[0];

				if (aMatrix.len() != 3)
					throw "wrong matrix size, expected 3 rows";
				
				for (local i = 0; i < 3; ++i)
				{
					if (aMatrix[i].len() != 4)
						throw "wrong matrix size, expected 4 columns";
				}

				matrix = aMatrix;
			}
			else if (typeof vargv[0] == "matrix3x4") // matrix3x4
			{
				matrix = vargv[0].CloneMatrix();
			}
			else if (sType == "instance") // CBaseEntity
			{
				local hEntity = vargv[0];

				if ("GetClassname" in vargv[0])
					EntityLocalSpaceToWorldSpace(hEntity, vargv.len() >= 2 && vargv[1]);
				else
					throw "expected an entity instance";
			}
			else if (vargv[0] instanceof Vector) // Vector, QAngle (optional), float (scale; optional)
			{
				SetTranslation(vargv[0]);

				if (vargv.len() >= 2)
				{
					if (vargv[1] instanceof QAngle)
						SetRotation(vargv[1]);
					else
						throw "expected QAngle type as angles";

					if (vargv.len() >= 3)
					{
						if (typeof vargv[2] == "float" || typeof vargv[2] == "integer")
							Scale(vargv[2]);
						else
							throw "expected float type as scale";
					}
				}
			}
			else
			{
				throw "unrecognized type in constructor";
			}
		}
	}

	/** Get matrix member
	* Signature: array GetMatrix()
	*/

	function GetMatrix()
	{
		return this.matrix;
	}

	/** Get cloned matrix member
	* Signature: array CloneMatrix()
	*/

	function CloneMatrix()
	{
		local m = [];

		m.push(clone matrix[0]);
		m.push(clone matrix[1]);
		m.push(clone matrix[2]);

		return m;
	}

	/** Set identity matrix
	* Signature: matrix3x4 Identity()
	*/

	function Identity()
	{
		for (local i = 0; i < 3; ++i)
		{
			for (local j = 0; j < 4; ++j)
			{
				if (i == j)
					matrix[i][j] = 1.0;
				else
					matrix[i][j] = 0.0;
			}
		}

		return this;
	}

	/** Set rotation matrix (translation won't be changed)
	* Signature: matrix3x4 SetRotation(QAngle angles)
	*/

	function SetRotation(eAngles)
	{
		local flPitch = eAngles.x * VSLU.Math.Deg2Rad;
		local flYaw = eAngles.y * VSLU.Math.Deg2Rad;
		local flRoll = eAngles.z * VSLU.Math.Deg2Rad;

		local sy = sin(flYaw), cy = cos(flYaw);
		local sp = sin(flPitch), cp = cos(flPitch);
		local sr = sin(flRoll), cr = cos(flRoll);

		matrix[0][0] = cp * cy;
		matrix[1][0] = cp * sy;
		matrix[2][0] = -sp;
		matrix[0][1] = sr * sp * cy + cr * -sy;
		matrix[1][1] = sr * sp * sy + cr * cy;
		matrix[2][1] = sr * cp;
		matrix[0][2] = cr * sp * cy + -sr * -sy;
		matrix[1][2] = cr * sp * sy + -sr * cy;
		matrix[2][2] = cr * cp;

		return this;
	}

	/** Set basis vectors (forward, left and up) in matrix columns. ToDo: convert to left-handed convention?
	* Signature: matrix3x4 SetBasisVectors(Vector forward, Vector left, Vector up)
	*/

	function SetBasisVectors(vecForward, vecLeft, vecUp)
	{
		SetColumn(vecForward, 0);
		SetColumn(vecLeft, 1);
		SetColumn(vecUp, 2);

		return this;
	}

	/** Set translation matrix (rotation won't be changed)
	* Signature: matrix3x4 SetTranslation(Vector point)
	*/

	function SetTranslation(vecPoint)
	{
		matrix[0][3] = vecPoint.x;
		matrix[1][3] = vecPoint.y;
		matrix[2][3] = vecPoint.z;

		return this;
	}

	/** Set scale matrix
	* Signature: matrix3x4 SetScale(float scale)
	*/

	function SetScale(flScale)
	{
		for (local i = 0; i < 3; ++i)
		{
			for (local j = 0; j < 4; ++j)
			{
				if (i == j)
					matrix[i][j] = flScale;
				else
					matrix[i][j] = 0.0;
			}
		}

		return this;
	}

	/** Scale rotation matrix
	* Signature: matrix3x4 Scale(float scale)
	*/

	function Scale(flScale)
	{
		for (local i = 0; i < 3; ++i)
		{
			for (local j = 0; j < 3; ++j)
			{
				matrix[i][j] *= flScale;
			}
		}

		return this;
	}

	/** Set transformation matrix from given point, rotation angles and scale
	* Signature: matrix3x4 SetTransformation(Vector point, QAngle angles, float scale)
	*/

	function SetTransformation(vecPoint, eAngles, flScale = 1.0)
	{
		SetRotation(eAngles);
		SetTranslation(vecPoint);

		if (flScale != 1.0)
			Scale(flScale);

		return this;
	}

	/** Get rotation angles from matrix
	* Signature: QAngle GetRotation()
	*/

	function GetRotation()
	{
		local angles = QAngle();

		//
		// Extract the basis vectors from the matrix. Since we only need the Z
		// component of the up vector, we don't get X and Y.
		//

		local forward = Vector( matrix[0][0], matrix[1][0], matrix[2][0] );
		local left = Vector( matrix[0][1], matrix[1][1], matrix[2][1] );
		local up = Vector( 0, 0, matrix[2][2] );

		local xyDist = forward.Length2D();
		
		// enough here to get angles?
		if ( xyDist > 0.001 )
		{
			// (yaw)	y = ATAN( forward.y, forward.x );		-- in our space, forward is the X axis
			angles.y = atan2( forward.y, forward.x ) * VSLU.Math.Rad2Deg;

			// (pitch)	x = ATAN( -forward.z, sqrt(forward.x*forward.x+forward.y*forward.y) );
			angles.x = atan2( -forward.z, xyDist ) * VSLU.Math.Rad2Deg;

			// (roll)	z = ATAN( left.z, up.z );
			angles.z = atan2( left.z, up.z ) * VSLU.Math.Rad2Deg;
		}
		else	// forward is mostly Z, gimbal lock-
		{
			// (yaw)	y = ATAN( -left.x, left.y );			-- forward is mostly z, so use right for yaw
			angles.y = atan2( -left.x, left.y ) * VSLU.Math.Rad2Deg;

			// (pitch)	x = ATAN( -forward.z, sqrt(forward.x*forward.x+forward.y*forward.y) );
			angles.x = atan2( -forward.z, xyDist ) * VSLU.Math.Rad2Deg;

			// Assume no roll in this case as one degree of freedom has been lost (i.e. yaw == roll)
			angles.z = 0.0;
		}

		return angles;
	}

	/** Get basis vectors from matrix columns. ToDo: convert to left-handed convention?
	* Signature: array SetBasisVectors()
	*/

	function GetBasisVectors()
	{
		return [ GetColumn(0), GetColumn(1), GetColumn(2) ]; // forward, left, up
	}

	/** Get translation point
	* Signature: Vector GetTranslation()
	*/

	function GetTranslation()
	{
		return Vector( matrix[0][3], matrix[1][3], matrix[2][3] );
	}

	/** Reset rotation matrix to identity matrix (translation won't be changed)
	* Signature: matrix3x4 ResettRotation()
	*/

	function ResetRotation()
	{
		for (local i = 0; i < 3; ++i)
		{
			for (local j = 0; j < 3; ++j)
			{
				if (i == j)
					matrix[i][j] = 1.0;
				else
					matrix[i][j] = 0.0;
			}
		}

		return this;
	}

	/** Reset translation matrix (rotation won't be changed)
	* Signature: matrix3x4 SetRotation(QAngle angles)
	*/

	function ResetTranslation()
	{
		matrix[0][3] = 0.0;
		matrix[1][3] = 0.0;
		matrix[2][3] = 0.0;

		return this;
	}

	/** Multiply two matrices, but apply only their rotation
	* Signature: matrix3x4 ConcatRotations(matrix3x4 matrix)
	*/

	function ConcatRotations(other)
	{
		if (other instanceof matrix3x4)
		{
			local result = matrix3x4();

			local other_matrix = other.GetMatrix();
			local out = result.GetMatrix();

			out[0][0] = matrix[0][0] * other_matrix[0][0] + matrix[0][1] * other_matrix[1][0] + matrix[0][2] * other_matrix[2][0];
			out[0][1] = matrix[0][0] * other_matrix[0][1] + matrix[0][1] * other_matrix[1][1] + matrix[0][2] * other_matrix[2][1];
			out[0][2] = matrix[0][0] * other_matrix[0][2] + matrix[0][1] * other_matrix[1][2] + matrix[0][2] * other_matrix[2][2];

			out[1][0] = matrix[1][0] * other_matrix[0][0] + matrix[1][1] * other_matrix[1][0] + matrix[1][2] * other_matrix[2][0];
			out[1][1] = matrix[1][0] * other_matrix[0][1] + matrix[1][1] * other_matrix[1][1] + matrix[1][2] * other_matrix[2][1];
			out[1][2] = matrix[1][0] * other_matrix[0][2] + matrix[1][1] * other_matrix[1][2] + matrix[1][2] * other_matrix[2][2];

			out[2][0] = matrix[2][0] * other_matrix[0][0] + matrix[2][1] * other_matrix[1][0] + matrix[2][2] * other_matrix[2][0];
			out[2][1] = matrix[2][0] * other_matrix[0][1] + matrix[2][1] * other_matrix[1][1] + matrix[2][2] * other_matrix[2][1];
			out[2][2] = matrix[2][0] * other_matrix[0][2] + matrix[2][1] * other_matrix[1][2] + matrix[2][2] * other_matrix[2][2];

			return result;
		}
		else
		{
			throw "expected matrix3x4";
		}
	}

	/** Multiply two matrices, apply rotation and translation
	* Signature: matrix3x4 ConcatTransforms(matrix3x4 matrix)
	*/

	function ConcatTransforms(other)
	{
		if (other instanceof matrix3x4)
		{
			local result = matrix3x4();

			local other_matrix = other.GetMatrix();
			local out = result.GetMatrix();

			out[0][0] = matrix[0][0] * other_matrix[0][0] + matrix[0][1] * other_matrix[1][0] + matrix[0][2] * other_matrix[2][0];
			out[0][1] = matrix[0][0] * other_matrix[0][1] + matrix[0][1] * other_matrix[1][1] + matrix[0][2] * other_matrix[2][1];
			out[0][2] = matrix[0][0] * other_matrix[0][2] + matrix[0][1] * other_matrix[1][2] + matrix[0][2] * other_matrix[2][2];
			out[0][3] = matrix[0][0] * other_matrix[0][3] + matrix[0][1] * other_matrix[1][3] + matrix[0][2] * other_matrix[2][3] + matrix[0][3];

			out[1][0] = matrix[1][0] * other_matrix[0][0] + matrix[1][1] * other_matrix[1][0] + matrix[1][2] * other_matrix[2][0];
			out[1][1] = matrix[1][0] * other_matrix[0][1] + matrix[1][1] * other_matrix[1][1] + matrix[1][2] * other_matrix[2][1];
			out[1][2] = matrix[1][0] * other_matrix[0][2] + matrix[1][1] * other_matrix[1][2] + matrix[1][2] * other_matrix[2][2];
			out[1][3] = matrix[1][0] * other_matrix[0][3] + matrix[1][1] * other_matrix[1][3] + matrix[1][2] * other_matrix[2][3] + matrix[1][3];

			out[2][0] = matrix[2][0] * other_matrix[0][0] + matrix[2][1] * other_matrix[1][0] + matrix[2][2] * other_matrix[2][0];
			out[2][1] = matrix[2][0] * other_matrix[0][1] + matrix[2][1] * other_matrix[1][1] + matrix[2][2] * other_matrix[2][1];
			out[2][2] = matrix[2][0] * other_matrix[0][2] + matrix[2][1] * other_matrix[1][2] + matrix[2][2] * other_matrix[2][2];
			out[2][3] = matrix[2][0] * other_matrix[0][3] + matrix[2][1] * other_matrix[1][3] + matrix[2][2] * other_matrix[2][3] + matrix[2][3];

			return result;
		}
		else
		{
			throw "expected matrix3x4";
		}
	}

	/** Multiplication method
	* Signature: matrix3x4/Vector Multiply(matrix3x4/Vector other)
	*/

	function Multiply(other)
	{
		if (other instanceof matrix3x4)
		{
			return ConcatTransforms(other);
		}
		else if (other instanceof Vector)
		{
			return Transform(other);
		}
		else if (typeof other == "float" || typeof other == "integer")
		{
			return Scale(other.tofloat());
		}
		else
		{
			throw "unrecognized type to multiply";
		}
	}

	/** Get the matrix column
	* Signature: Vector GetColumn(int column)
	*/

	function GetColumn(column)
	{
		return Vector( matrix[0][column], matrix[1][column], matrix[2][column] );
	}

	/** Set the matrix column
	* Signature: void SetColumn(Vector column, int column)
	*/

	function SetColumn(vecColumn, column)
	{
		matrix[0][column] = vecColumn.x;
		matrix[1][column] = vecColumn.y;
		matrix[2][column] = vecColumn.z;
	}

	/** Transpose the matrix (not actual inverse)
	* Signature: matrix3x4 Invert()
	*/

	function Invert()
	{
		local m = matrix3x4();
		local out = m.GetMatrix();
		
		// Transpose the matrix
		out[0][0] = matrix[0][0];
		out[0][1] = matrix[1][0];
		out[0][2] = matrix[2][0];

		out[1][0] = matrix[0][1];
		out[1][1] = matrix[1][1];
		out[1][2] = matrix[2][1];

		out[2][0] = matrix[0][2];
		out[2][1] = matrix[1][2];
		out[2][2] = matrix[2][2];

		// Fix up the translation to be in the other space
		local tmp = Vector(matrix[0][3], matrix[1][3], matrix[2][3]);

		out[0][3] = -tmp.Dot( Vector(out[0][0], out[0][1], out[0][2]) );
		out[1][3] = -tmp.Dot( Vector(out[1][0], out[1][1], out[1][2]) );
		out[2][3] = -tmp.Dot( Vector(out[2][0], out[2][1], out[2][2]) );

		return m;
	}

	/** Rotate and translate given point
	* Signature: Vector Transform(Vector point)
	*/

	function Transform(vecPoint)
	{
		local x = vecPoint.Dot( Vector(matrix[0][0], matrix[0][1], matrix[0][2]) ) + matrix[0][3];
		local y = vecPoint.Dot( Vector(matrix[1][0], matrix[1][1], matrix[1][2]) ) + matrix[1][3];
		local z = vecPoint.Dot( Vector(matrix[2][0], matrix[2][1], matrix[2][2]) ) + matrix[2][3];

		return Vector(x, y, z);
	}

	/** Rotate and translate given point by the transpose matrix, don't use in case you already inverted the matrix
	* Signature: Vector ITransform(Vector point)
	*/

	function ITransform(vecPoint)
	{
		vecPoint.x -= matrix[0][3];
		vecPoint.y -= matrix[1][3];
		vecPoint.z -= matrix[2][3];

		local x = vecPoint.x * matrix[0][0] + vecPoint.y * matrix[1][0] + vecPoint.z * matrix[2][0];
		local y = vecPoint.x * matrix[0][1] + vecPoint.y * matrix[1][1] + vecPoint.z * matrix[2][1];
		local z = vecPoint.x * matrix[0][2] + vecPoint.y * matrix[1][2] + vecPoint.z * matrix[2][2];

		return Vector(x, y, z);
	}

	/** Rotate given point
	* Signature: Vector Rotate(Vector point)
	*/

	function Rotate(vecPoint)
	{
		local x = vecPoint.Dot( Vector(matrix[0][0], matrix[0][1], matrix[0][2]) );
		local y = vecPoint.Dot( Vector(matrix[1][0], matrix[1][1], matrix[1][2]) );
		local z = vecPoint.Dot( Vector(matrix[2][0], matrix[2][1], matrix[2][2]) );

		return Vector(x, y, z);
	}

	/** Rotate given point by the transpose matrix
	* Signature: Vector IRotate(Vector point)
	*/

	function IRotate(vecPoint)
	{
		local x = vecPoint.x * matrix[0][0] + vecPoint.y * matrix[1][0] + vecPoint.z * matrix[2][0];
		local y = vecPoint.x * matrix[0][1] + vecPoint.y * matrix[1][1] + vecPoint.z * matrix[2][1];
		local z = vecPoint.x * matrix[0][2] + vecPoint.y * matrix[1][2] + vecPoint.z * matrix[2][2];

		return Vector(x, y, z);
	}

	/** Translate given point
	* Signature: Vector Translate(Vector point)
	*/

	function Translate(vecPoint)
	{
		return Vector( vecPoint.x + matrix[0][3], vecPoint.y + matrix[1][3], vecPoint.z + matrix[2][3] );
	}

	/** Translate given point by invert of the matrix
	* Signature: Vector ITranslate(Vector point)
	*/

	function ITranslate(vecPoint)
	{
		return Vector( vecPoint.x - matrix[0][3], vecPoint.y - matrix[1][3], vecPoint.z - matrix[2][3] );
	}

	/** Set matrix transformation from entity's local space to world space
	* Signature: matrix3x4 EntityLocalSpaceToWorldSpace(handle entity, bool adjustModelScale)
	*/

	function EntityLocalSpaceToWorldSpace(hEntity, bAdjustModelScale = true)
	{
		if ( hEntity && hEntity.IsValid() )
		{
			bAdjustModelScale = bAdjustModelScale && NetProps.GetPropFloat(hEntity, "m_flModelScale") >= 0.0;

			return SetTransformation(hEntity.GetOrigin(),
									hEntity.IsPlayer() ? hEntity.EyeAngles() : hEntity.GetAngles(),
									bAdjustModelScale ? NetProps.GetPropFloat(hEntity, "m_flModelScale") : 1.0);
		}
		else
		{
			throw "invalid entity";
		}
	}

	/** Set matrix transformation from world space to entity's local space
	* Signature: matrix3x4 WorldSpaceToEntityLocalSpace(handle entity, bool adjustModelScale, bool transformFromLocalSpace)
	*/

	function WorldSpaceToEntityLocalSpace(hEntity, bAdjustModelScale = true, bTransformFromLocalSpace = true)
	{
		if (bTransformFromLocalSpace)
		{
			if ( hEntity && hEntity.IsValid() )
			{
				bAdjustModelScale = bAdjustModelScale && NetProps.GetPropFloat(hEntity, "m_flModelScale") >= 0.0;

				SetTransformation(hEntity.GetOrigin(),
								hEntity.IsPlayer() ? hEntity.EyeAngles() : hEntity.GetAngles(),
								bAdjustModelScale ? NetProps.GetPropFloat(hEntity, "m_flModelScale") : 1.0);

				return Invert();
			}
			else
			{
				throw "invalid entity";
			}
		}
		else // if transformation from entity's local space already computed
		{
			return Invert();
		}
	}

	//==================================================
	// References to described methods
	//==================================================

	/** Set rotation matrix
	* Signature: matrix3x4 AngleMatrix(QAngle angles)
	*/

	function AngleMatrix(eAngles) { return SetRotation(eAngles); }

	/** Get rotation angles from matrix
	* Signature: QAngle MatrixAngles()
	*/

	function MatrixAngles() { return GetRotation(); }

	/** Set basis vectors (forward, left and up) in matrix columns
	* Signature: matrix3x4 VectorMatrix(Vector forward, Vector left, Vector up)
	*/

	function VectorMatrix(vecForward, vecLeft, vecUp) { return SetBasisVectors(vecForward, vecLeft, vecUp); }

	/** Get basis vectors from matrix columns
	* Signature: array MatrixVectors()
	*/

	function MatrixVectors() { return GetBasisVectors(); }

	/** Rotate and translate given point
	* Signature: Vector VectorTransform(Vector point)
	*/

	function VectorTransform(vecPoint) { return Transform(vecPoint); }

	/** Rotate and translate given point by the transpose matrix
	* Signature: Vector VectorITransform(Vector point)
	*/

	function VectorITransform(vecPoint) { return ITransform(vecPoint); }

	/** Rotate given point
	* Signature: Vector VectorRotate(Vector point)
	*/

	function VectorRotate(vecPoint) { return Rotate(vecPoint); }

	/** Rotate given point by the transpose matrix
	* Signature: Vector VectorIRotate(Vector point)
	*/

	function VectorIRotate(vecPoint) { return IRotate(vecPoint); }

	/** Translate given point
	* Signature: Vector VectorTranslate(Vector point)
	*/

	function VectorTranslate(vecPoint) { return Translate(vecPoint); }

	/** Translate given point by invert of the matrix
	* Signature: Vector VectorITranslate(Vector point)
	*/

	function VectorITranslate(vecPoint) { return ITranslate(vecPoint); }

	//==================================================
	// Override metamethods
	//==================================================

	function _mul(other) // override '*' operator
	{
		return Multiply(other);
	}

	function _cloned(original) // override cloning
	{
		matrix = original.CloneMatrix();
	}

	function _typeof() // called on typeof()
	{
		return "matrix3x4";
	}

	function _tostring() // override convertation to string
	{
		return matrix[0][0] + " " + matrix[0][1] + " " + matrix[0][2] + " " + matrix[0][3] + "\n" +
			matrix[1][0] + " " + matrix[1][1] + " " + matrix[1][2] + " " + matrix[1][3] + "\n" +
			matrix[2][0] + " " + matrix[2][1] + " " + matrix[2][2] + " " + matrix[2][3];
	}

	matrix = null;
}