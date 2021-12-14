// Matrix Classes
// Author: Sw1ft >> http://steamcommunity.com/profiles/76561198397776991

/*===============================*\
 *           Classes             *
\*===============================*/

/** Class matrix3x4
* Signature: class matrix3x4(any args: { array of arrays 3x4 } or { CBaseEntity } or { Vector, QAngle (optional), float (optional) })
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

			if (sType == "array") // One array of arrays of values 3x4
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
			else if (vargv[0] instanceof matrix3x4) // matrix3x4
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
		local flPitch = eAngles.x * PI / 180.0;
		local flYaw = eAngles.y * PI / 180.0;
		local flRoll = eAngles.z * PI / 180.0;

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

		local forward = Vector();
		local left = Vector();
		local up = Vector();

		//
		// Extract the basis vectors from the matrix. Since we only need the Z
		// component of the up vector, we don't get X and Y.
		//

		forward.x = matrix[0][0];
		forward.y = matrix[1][0];
		forward.z = matrix[2][0];
		
		left.x = matrix[0][1];
		left.y = matrix[1][1];
		left.z = matrix[2][1];

		up.z = matrix[2][2];

		local xyDist = sqrt( forward.x * forward.x + forward.y * forward.y );
		
		// enough here to get angles?
		if ( xyDist > 0.001 )
		{
			// (yaw)	y = ATAN( forward.y, forward.x );		-- in our space, forward is the X axis
			angles.y = atan2( forward.y, forward.x ) * 180.0 / PI;

			// (pitch)	x = ATAN( -forward.z, sqrt(forward.x*forward.x+forward.y*forward.y) );
			angles.x = atan2( -forward.z, xyDist ) * 180.0 / PI;

			// (roll)	z = ATAN( left.z, up.z );
			angles.z = atan2( left.z, up.z ) * 180.0 / PI;
		}
		else	// forward is mostly Z, gimbal lock-
		{
			// (yaw)	y = ATAN( -left.x, left.y );			-- forward is mostly z, so use right for yaw
			angles.y = atan2( -left.x, left.y ) * 180.0 / PI;

			// (pitch)	x = ATAN( -forward.z, sqrt(forward.x*forward.x+forward.y*forward.y) );
			angles.x = atan2( -forward.z, xyDist ) * 180.0 / PI;

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
		if (hEntity && hEntity.IsValid())
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
			if (hEntity && hEntity.IsValid())
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

	// ==================================================
	// References to described methods
	// ==================================================

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

	// ==================================================
	// Override metamethods
	// ==================================================

	function _mul(other) // override '*' operator
	{
		return Multiply(other);
	}

	function _cloned(original) // override cloning
	{
		matrix = original.CloneMatrix();
	}

	function _tyoeof() // called on typeof()
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

/** Class Matrix (junk)
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
				for (local i = 0; i < length; ++i)
				{
					if (iWidestColumn < matrix[i].len())
						iWidestColumn = matrix[i].len();
				}

				for (local j = 0; j < length; ++j)
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

				for (local n = 0; n < m_iRows; ++n)
				{
					aMatrixOutput.push([]);

					for (local m = 0; m < columns; ++m)
						aMatrixOutput[n].push(0.0);
				}

				for (local i = 0; i < m_iRows; ++i)
				{
					for (local j = 0; j < columns; ++j)
					{
						for (local k = 0; k < m_iColumns; ++k)
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

				for (local i = 0; i < m_iRows; ++i)
				{
					aMatrixOutput.push(GetRowArray(i));

					for (local j = 0; j < m_iColumns; ++j)
						aMatrixOutput[i][j] += aMatrix[i][j];
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

		for (local i = 0; i < m_iRows; ++i)
		{
			aMatrix.push(GetRowArray(i));

			for (local j = 0; j < m_iColumns; ++j)
				aMatrix[i][j] *= value;
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

		for (local i = 0; i < m_iColumns; ++i)
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

		for (local i = 0; i < m_iRows; ++i)
		{
			aMatrixOutput.push([]);

			for (local j = 0; j < m_iColumns; ++j)
				aMatrixOutput[i].push(GetMinor(i, j).Determinant() * ((i + j + 2) % 2 ? -1.0 : 1.0));
		}

		local matrix = CMatrix(aMatrixOutput, m_iRows, m_iColumns).Transpose();
		return matrix.Division(Determinant());
	}

	function Transpose()
	{
		local aTransposeMatrix = [];

		for (local i = 0; i < m_iColumns; ++i)
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

		for (local i = 0; i < m_iRows; ++i)
		{
			if (i == iRow)
				continue;

			aMinor.push(GetRowArray(i));

			for (local j = 0; j < m_iColumns; ++j)
			{
				if (j == iColumn)
				{
					aMinor[idx].remove(j);
					break;
				}
			}

			++idx;
		}

		return CMatrix(aMinor, m_iRows - 1, m_iColumns - 1);
	}

	function GetColumnArray(iColumn)
	{
		local aColumn = [];

		for (local i = 0; i < m_iRows; ++i)
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