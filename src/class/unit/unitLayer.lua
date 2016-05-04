cc.exports.unitLayer = class("unitLayer", cc.Layer)
function unitLayer:ctor()
    print("unitLayer is creating")
end

unitLayer.__index = unitLayer
unitLayer.enemyList = {}
unitLayer.friendlyList = {}

function unitLayer:create()
    local layer = unitLayer.new()
    return layer
end
