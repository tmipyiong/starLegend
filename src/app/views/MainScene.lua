local MainScene = class("MainScene", cc.load("mvc").ViewBase)


MainScene.test = 0
MainScene.posX =100
MainScene.posY = 100
MainScene.helloPng = 0

function MainScene:a(dt)
        self.posX = self.posX + 10*dt
        self.helloPng:move(self.posX, self.posY)
        print(self.posX)
end



function MainScene:onCreate()
    -- add background image

    self.helloPng = display.newSprite("HelloWorld.png",self.posX, self.posY)
    self:addChild(self.helloPng)

    local d = cc.Sprite:create("HelloWorld.png")
   
    local factory = unitFactory:create()


   local j = unitLayer:create()
    self:addChild(j)




   local c = cc.Sprite:create("HelloWorld.png")
   c:move(500,500)
   j:addChild(c)
   

   local m = factory:createUnit("marine")

   print(m.animationList.idle)
  -- i:addChild(cc.Sprite:create("HelloWorld.png")
 



    -- add HelloWorld label
    cc.Label:createWithSystemFont("Hello World", "Arial", 40)
        :move(display.cx, display.cy + 200)
        :addTo(self)

    local function a(dt)
        self.posX = self.posX + 10*dt
        self.helloPng:move(self.posX, self.posY)
        print(self.posX)

    end

    --local scheduler = CCDirector:getInstance():getScheduler()  
    --self:scheduleUpdateWithPriorityLua(a,0)
end

return MainScene