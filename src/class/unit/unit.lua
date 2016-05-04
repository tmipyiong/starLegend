cc.exports.unit = class("unit", cc.Node)

function unit:ctor()
    print("unit creating")
    self:initAnimation("idleAnimation","runAnimation","attackAnimation")
end

unit.health = 0
unit.animationList = 
{
	idle = "",
	run = "",
	attack = ""
}
unit.posX = 0
unit.posY = 0
unit.__index = unit

function unit:initAnimation(idleAnimation, runAnimation, attackAnimation)
	self.animationList.idle = idleAnimation
	self.animationList.run = runAnimation
	self.animationList.attack = attackAnimation
end


function unit:create()
    local layer = unit.new()
    return layer
end


