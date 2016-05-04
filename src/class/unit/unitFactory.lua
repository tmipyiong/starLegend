cc.exports.unitFactory = class("unitFactory")

unitFactory.__index = unitFactory


function unitFactory:ctor()

	print("unitFactory creating")
end

function unitFactory:createUnit(unitType)
	if(unitType == "marine") then do
		return unitMarine:create() end
	end
end

function unitFactory:create()
	local uFactory = unitFactory.new()
	return uFactory
end
