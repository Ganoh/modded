getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "SPTS: Modded",
   LoadingTitle = "SPTS Modded script",
   LoadingSubtitle = "Khan",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = SPTSModded, 
      FileName = "SPTSModdedConfig"
   },
   Discord = {
      Enabled = false,
      Invite = "", 
      RememberJoins = true 
   },
   KeySystem = false, 
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"Hello"} 
   }
})
local Tab = Window:CreateTab("Autofarming Stuff", 4483362458) -- Title, Image
local Section = Tab:CreateSection("AFK Farming stuff")
getgenv().ms = true
local Toggle = Tab:CreateToggle({
   Name = "Auto MS:10No",
   CurrentValue = false,
   Callback = function(Value)
getgenv().ms = Value
local args = {
    [1] = {
        [1] = "+MS21"
    }
}
while getgenv().ms == true do
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
   end,
})
getgenv().jf = true
local Toggle = Tab:CreateToggle({
   Name = "Auto JF:10No",
   CurrentValue = false,
   Callback = function(Value)
   getgenv().jf = Value
local args = {
    [1] = {
        [1] = "+JF21"
    }
}
while getgenv().jf == true do
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
   end,
})
getgenv().pp = true
local Toggle = Tab:CreateToggle({
   Name = "Auto PP:7.7Td",
   CurrentValue = false,
   Callback = function(Value)
getgenv().pp = Value
local args = {
    [1] = {
        [1] = "+PP17"
    }
}
while getgenv().pp == true do
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
   end,
})
getgenv().bt = true
local Toggle = Tab:CreateToggle({
   Name = "Auto BT:2 Qid",
   CurrentValue = false,
   Callback = function(Value)
getgenv().bt = Value
local args = {
    [1] = {
        [1] = "+BT27"
    }
}
while getgenv().bt == true do
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
   end,
})
getgenv().fs = true
local Toggle = Tab:CreateToggle({
   Name = "Auto FS:3Qad",
   CurrentValue = false,
   Callback = function(Value)
getgenv().fs = Value
local args = {
    [1] = {
        [1] = "+FS19"
    }
}
while getgenv().fs == true do
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
   end,
})
local Section = Tab:CreateSection("Auto Respawn")
getgenv().respawn = true
local Button = Tab:CreateButton({
   Name = "Death Train ON",
   Callback = function()
_G.Disabled=false;while true do if _G.Disabled then break end;wait()local function a()if _G.Disabled then return end;local b=game.Players.LocalPlayer.Character:WaitForChild("Humanoid")local c=tonumber(string.format("%.0f",b.Health))local d=tonumber(string.format("%.0f",b.MaxHealth))*30/100;if c<=d then momentorespawn=true end;if c<=d then game:GetService("Players").LocalPlayer.Character:Remove()wait(0)game.ReplicatedStorage.RemoteEvent:FireServer({"Respawn"})wait(0)for e,f in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants())do if f:IsA("Accessory")then f:Destroy()end end end end;delay(0,a)local function g()if _G.Disabled then return end;if not momentorespawn then lastlocationx=game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x;lastlocationy=game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y;lastlocationz=game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z end;if momentorespawn and game.Players.LocalPlayer.Character.HumanoidRootPart then wait(0.5)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(lastlocationx,lastlocationy,lastlocationz)wait(0.01)momentorespawn=false end end;delay(0,g)
   end,
})
local Button = Tab:CreateButton({
   Name = "Death Train OFF",
   Callback = function()
   _G.Disabled=true;while true do if _G.Disabled then break end;wait()local function a()if _G.Disabled then return end;local b=game.Players.LocalPlayer.Character:WaitForChild("Humanoid")local c=tonumber(string.format("%.0f",b.Health))local d=tonumber(string.format("%.0f",b.MaxHealth))*30/100;if c<=d then momentorespawn=true end;if c<=d then game:GetService("Players").LocalPlayer.Character:Remove()wait(0)game.ReplicatedStorage.RemoteEvent:FireServer({"Respawn"})wait(0)for e,f in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants())do if f:IsA("Accessory")then f:Destroy()end end end end;delay(0,a)local function g()if _G.Disabled then return end;if not momentorespawn then lastlocationx=game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x;lastlocationy=game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y;lastlocationz=game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z end;if momentorespawn and game.Players.LocalPlayer.Character.HumanoidRootPart then wait(0.5)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(lastlocationx,lastlocationy,lastlocationz)wait(0.01)momentorespawn=false end end;delay(0,g)
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Auto Respawn 10s",
   CurrentValue = false,
   Callback = function(Value)
getgenv().respawn = Value
local args = {
    [1] = {
        [1] = "Respawn"
    }
}
while getgenv().respawn == true do
wait(10)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
   end,
})
getgenv().respawn = true
local Toggle = Tab:CreateToggle({
   Name = "Auto Respawn 30s",
   CurrentValue = false,
   Callback = function(Value)
getgenv().respawn = Value
local args = {
    [1] = {
        [1] = "Respawn"
    }
}
while getgenv().respawn == true do
wait(30)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
   end,
})
getgenv().respawn = true
local Toggle = Tab:CreateToggle({
   Name = "Auto Respawn 50s",
   CurrentValue = false,
   Callback = function(Value)
getgenv().respawn = Value
local args = {
    [1] = {
        [1] = "Respawn"
    }
}
while getgenv().respawn == true do
wait(50)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
   end,
})
getgenv().respawn = true
local Toggle = Tab:CreateToggle({
   Name = "Auto Respawn 100s",
   CurrentValue = false,
   Callback = function(Value)
getgenv().respawn = Value
local args = {
    [1] = {
        [1] = "Respawn"
    }
}
while getgenv().respawn == true do
wait(100)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
   end,
})
local Tab = Window:CreateTab("Auto Claim And Skills", 4483362458) -- Title, Image
local Section = Tab:CreateSection("TPM Reward")
getgenv().rw = true
local Toggle = Tab:CreateToggle({
   Name = "Auto Claim FS,BT,PP",
   CurrentValue = false,
   Callback = function(Value)
getgenv().rw = Value
local args = {
    [1] = game:GetService("Players").LocalPlayer
}
while getgenv().rw == true do
wait(10)
game:GetService("ReplicatedStorage"):WaitForChild("RecievePPReward"):FireServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("RecieveBTReward"):FireServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("RecieveFSReward"):FireServer(unpack(args))
end
   end,
})
local Section = Tab:CreateSection("Anti AFK")
getgenv().inv = true
local Button = Tab:CreateButton({
   Name = "Anti AFK",
   Callback = function()
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(10)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   end,
})
local Section = Tab:CreateSection("Skill")
getgenv().inv = true
local Toggle = Tab:CreateToggle({
   Name = "Invisible",
   CurrentValue = false,
   Callback = function(Value)
getgenv().inv = Value
local args = {
    [1] = {
        [1] = "Skill_Invisible",
        [2] = "Start"
    }
}
while getgenv().inv == true do
wait(1)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
   end,
})
local Section = Tab:CreateSection("GUI")
local Button = Tab:CreateButton({
   Name = "Destroying the Interface",
   Callback = function()
   Rayfield:Destroy()
   end,
})
