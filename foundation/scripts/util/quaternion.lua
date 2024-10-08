﻿-- chunkname: @foundation/scripts/util/quaternion.lua

Quaternion.yaw = function (q)
	local x, y, z, w = Quaternion.to_elements(q)

	return math.atan2(2 * (x * y + w * z), w * w + x * x - y * y - z * z)
end

Quaternion.pitch = function (q)
	local x, y, z, w = Quaternion.to_elements(q)

	return math.atan2(2 * (y * z + w * x), w * w - x * x - y * y + z * z)
end

Quaternion.roll = function (q)
	local x, y, z, w = Quaternion.to_elements(q)

	return math.asin(-2 * (x * z - w * y))
end

Quaternion.flat_no_roll = function (q)
	return Quaternion.axis_angle(Vector3.up(), Quaternion.yaw(q))
end
