local NetwayLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/rellowman/iiioo989p/main/mei44')))()
local Window = NetwayLib:MakeWindow({Name = "Sticky Caves", HidePremium = false, SaveConfig = true, ConfigFolder = "NetwayHub"})

local infyield = loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))
local DupeTab = Window:MakeTab({
    Name = "Dupe Functions",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local MenuTab = Window:MakeTab({
    Name = "Menu",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
DupeTab:AddButton({
    Name = "Open Boxes around you",
    Callback = function()
              for _,Box in pairs(workspace.Grabable:GetChildren()) do
            if Box.Name == "MaterialBox" then
                if (Box.Box.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<30 then
                    if Box.Box:findFirstChild("Interact") then
                        Box.Box.Interact:FireServer()
                    end
                end
            end
        end
      end    
})
DupeTab:AddButton({
    Name = "Pickup items around you",
    Callback = function()
              for _,tool in pairs(workspace.Grabable:GetChildren()) do
            if tool.Name == "Tool" then
                if (tool.Part.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<30 then
                    if tool.Part:findFirstChild("Interact") then
                        tool.Part.Interact:FireServer()
                    end
                end
            end
        end
      end    
})    
MenuTab:AddButton({
    Name = "Load infinite yield",
    Callback = function()
            infyield()
    end
})
NetwayLib.Init()
