cc.exports.unitMarine = class("unitMarine",unit)

function unitMarine:ctor()
	print("marine creating")
	self:initAnimation("marineAnimation","marineRunAnimation","marineAttackAnimation")

end

function unitMarine:create()
	local marine = unitMarine.new()
	return marine
end
