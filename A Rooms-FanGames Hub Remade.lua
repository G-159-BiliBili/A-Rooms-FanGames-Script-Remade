-- UI
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local l = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/dxhooknotify/src.lua", true))()
local MessageBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/NotificationGUI/main/source.lua"))()

--ShitAnimLoading
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local animation = Instance.new("Animation")
local folder = Instance.new("Folder")
folder.Name = "Animation"
folder.Parent = Workspace
animation.Name = "PlayerAnimation"
animation.AnimationId = "rbxassetid://104556609120727"
animation.Parent = folder

-- Window
local Window = Rayfield:CreateWindow({
   Name = "A Rooms-FanGames Hub Remade",
   Icon = "file-code-2", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by RM_LFG",
   Theme = "Amethyst" -- Check https://docs.sirius.menu/rayfield/configuration/themes
})

--Tabs
--Variables
local OWS = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
local OJP = game.Players.LocalPlayer.Character.Humanoid.JumpPower
local OMH = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
local OH = game.Players.LocalPlayer.Character.Humanoid.Health
local OHH = game.Players.LocalPlayer.Character.Humanoid.HipHeight
local OFOV = workspace.CurrentCamera.FieldOfView
local OG = game.Workspace.Gravity
local arg2

-- Main Function
local Main = Window:CreateTab("Main", 11433532654)
local Input = Main:CreateInput({
   Name = "WalkSpeed",
   CurrentValue = tostring(game.Players.LocalPlayer.Character.Humanoid.WalkSpeed),
   PlaceholderText = "Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Speed",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Text
   end,
})
local Button = Main:CreateButton({
   Name = "Reset WalkSpeed",
   Callback = function()
   -- The function that takes place when the button is pressed
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = OWS
   end,
})
local Input = Main:CreateInput({
   Name = "JumpPower",
   CurrentValue = tostring(game.Players.LocalPlayer.Character.Humanoid.JumpPower),
   PlaceholderText = "Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Jump",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = Text
   end,
})
local Button = Main:CreateButton({
   Name = "Reset JumpPower",
   Callback = function()
   -- The function that takes place when the button is pressed
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = OJP
   end,
})
local Input = Main:CreateInput({
   Name = "MaxHealth",
   CurrentValue = tostring(game.Players.LocalPlayer.Character.Humanoid.MaxHealth),
   PlaceholderText = "Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "MaxHealth",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
       game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Text
   end,
})
local Button = Main:CreateButton({
   Name = "Reset MaxHealth",
   Callback = function()
   -- The function that takes place when the button is pressed
       game.Players.LocalPlayer.Character.Humanoid.MaxHealth = OMH
   end,
})
local Input = Main:CreateInput({
   Name = "Health",
   CurrentValue = tostring(game.Players.LocalPlayer.Character.Humanoid.Health),
   PlaceholderText = "Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Health",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
       game.Players.LocalPlayer.Character.Humanoid.Health = Text
   end,
})
local Button = Main:CreateButton({
   Name = "Reset Health",
   Callback = function()
   -- The function that takes place when the button is pressed
       game.Players.LocalPlayer.Character.Humanoid.Health = OH
   end,
})
local Input = Main:CreateInput({
   Name = "HipHeight",
   CurrentValue = tostring(game.Players.LocalPlayer.Character.Humanoid.HipHeight),
   PlaceholderText = "Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "HipHeight",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = Text
   end,
})
local Button = Main:CreateButton({
   Name = "Reset HipHeight",
   Callback = function()
   -- The function that takes place when the button is pressed
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = OHH
   end,
})
local Input = Main:CreateInput({
   Name = "FOV",
   CurrentValue = tostring(workspace.CurrentCamera.FieldOfView),
   PlaceholderText = "Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "FieldOfView",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
       workspace.CurrentCamera.FieldOfView = Text
   end,
})
local Button = Main:CreateButton({
   Name = "Reset FOV",
   Callback = function()
   -- The function that takes place when the button is pressed
       workspace.CurrentCamera.FieldOfView = OFOV
   end,
})
local Input = Main:CreateInput({
   Name = "Gravity",
   CurrentValue = tostring(game.Workspace.Gravity),
   PlaceholderText = "Placeholder",
   RemoveTextAfterFocusLost = false,
   Flag = "Gravity",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
       game.Workspace.Gravity = Text
   end,
})
local Button = Main:CreateButton({
   Name = "Reset Gravity",
   Callback = function()
   -- The function that takes place when the button is pressed
       game.Workspace.Gravity = OG
   end,
})
local Button = Main:CreateButton({
   Name = "Full Health",
   Callback = function()
   -- The function that takes place when the button is pressed
       game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
   end,
})
local Button = Main:CreateButton({
   Name = "Die",
   Callback = function()
   -- The function that takes place when the button is pressed
       game.Players.LocalPlayer.Character.Humanoid.Health = 0
   end,
})

-- INTERMINABLE ROOMS
local IR = Window:CreateTab("Interminable Rooms(RoomGENERATOR)", 12993508516) -- Title, Image
local Paragraph = IR:CreateParagraph({Title = "WARNING⚠", Content = "if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error"})
local Toggle = IR:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection = Workspace:WaitForChild("Entities").ChildAdded:Connect(function(entity)
                wait()
                local Face = entity:FindFirstChildWhichIsA("ImageLabel", true)
                if Face then
                    local FAce = Face.Image 
                    local FACe = string.gsub(FAce, "%D", "")
                    local FACE = tonumber(FACe)
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = FACE,
                    })
                else
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = "triangle-alert",
                    })
                end
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
generalChannel:DisplaySystemMessage(entity.Name .. " spawned!")
            end)
        else
            connection:Disconnect()
        end
    end,
})
local Toggle = IR:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection1 = Workspace:WaitForChild("Entities").ChildRemoved:Connect(function(entity)
                wait()
                local Face = entity:FindFirstChildWhichIsA("ImageLabel", true)
                if Face then
                    local FAce = Face.Image 
                    local FACe = string.gsub(FAce, "%D", "")
                    local FACE = tonumber(FACe)
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has deleted.",
                      Duration = 5,
                      Image = FACE,
                    })
                else
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has deleted.",
                      Duration = 5,
                      Image = "trash-2",
                    })
                end
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
                generalChannel:DisplaySystemMessage(entity.Name .. " deleted!")
            end)
        else
            connection1:Disconnect()
        end
    end,
})
local Toggle = IR:CreateToggle({
   Name = "EntityDetectorGUI",
   CurrentValue = false,
   Flag = "Toggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
       if Value then
           game.Players.LocalPlayer.PlayerGui.EntityDetectorGUI.Enabled = true
           game.Players.LocalPlayer.PlayerGui.EntityDetectorGUI.ResetOnSpawn = false
       else
           game.Players.LocalPlayer.PlayerGui.EntityDetectorGUI.Enabled = false
           game.Players.LocalPlayer.PlayerGui.EntityDetectorGUI.ResetOnSpawn = true
       end
   end,
})
local Button = IR:CreateButton({
   Name = "TP To The Current Room's Door",
   Callback = function()
   -- The function that takes place when the button is pressed
       game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.ReplicatedStorage.RoomGeneration.latestroom.Value.EndPart.CFrame * CFrame.new(0, 0, 5)
   end,
})


-- ROOMS:LOW DETAILED FAN IDEAS
local RLDFI = Window:CreateTab("Rooms:Low Detailed Fan Ideas(powenp99087)", 85167851080543) -- Title, Image
local Paragraph = RLDFI:CreateParagraph({Title = "WARNING⚠", Content = "if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error"})
local Toggle = RLDFI:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection2 = Workspace:WaitForChild("SpawnedEnitites").ChildAdded:Connect(function(entity)
                wait()
                local Face = entity:FindFirstChildWhichIsA("ImageLabel", true)
                if Face then
                    local FAce = Face.Image 
                    local FACe = string.gsub(FAce, "%D", "")
                    local FACE = tonumber(FACe)
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = FACE,
                    })
                else
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = "triangle-alert",
                    })
                end
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
generalChannel:DisplaySystemMessage(entity.Name .. " spawned!")
            end)
        else
            connection2:Disconnect()
        end
    end,
})
local Toggle = RLDFI:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection3 = Workspace:WaitForChild("SpawnedEnitites").ChildRemoved:Connect(function(entity)
                Rayfield:Notify({
                  Title = entity.Name,
                  Content = "Has deleted.",
                  Duration = 5,
                  Image = "trash",
                })
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
                generalChannel:DisplaySystemMessage(entity.Name .. " deleted!")
            end)
        else
            connection3:Disconnect()
        end
    end,
})
--Rooms:Low Detailed History
local RLDH = Window:CreateTab("Rooms:Low Detailed History(ghghggudd)", 4483362458) -- Title, Image
local Paragraph = RLDH:CreateParagraph({Title = "WARNING⚠", Content = "if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error"})
local Toggle = RLDH:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection4 = Workspace:WaitForChild("SpawnedEnitites").ChildAdded:Connect(function(entity)
                wait()
                local Face = entity:FindFirstChildWhichIsA("ImageLabel", true)
                if Face then
                    local FAce = Face.Image 
                    local FACe = string.gsub(FAce, "%D", "")
                    local FACE = tonumber(FACe)
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = FACE,
                    })
                else
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = "triangle-alert",
                    })
                end
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
generalChannel:DisplaySystemMessage(entity.Name .. " spawned!")
            end)
        else
            connection4:Disconnect()
        end
    end,
})
local Toggle = RLDH:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection5 = Workspace:WaitForChild("SpawnedEnitites").ChildRemoved:Connect(function(entity)
                Rayfield:Notify({
                  Title = entity.Name,
                  Content = "Has deleted.",
                  Duration = 5,
                  Image = "trash",
                })
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
                generalChannel:DisplaySystemMessage(entity.Name .. " deleted!")
            end)
        else
            connection5:Disconnect()
        end
    end,
})

--Rooms: Fixed Expanded
local RFE = Window:CreateTab("Rooms:Fixed Expanded(skitzzoyt3)", 92786151719688) -- Title, Image
local Paragraph = RFE:CreateParagraph({Title = "WARNING⚠", Content = "if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error"})
local Toggle = RFE:CreateToggle({
   Name = "Show Abandoned Checkpoint In-game(if you have the badge, you can use yourcheckpoints' skip.)",
   CurrentValue = false,
   Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
       if Value then
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay.Visible = true
       else
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay.Visible = false
       end
   end,
})
local Toggle = RFE:CreateToggle({
   Name = "Show Abandoned Checkpoints In-game(If you allow this to work, you will do not need any badge to use other checkpoint to skip, but when you don't allow this to run after allow it to run, the checkpoints will all despawn.)",
   CurrentValue = false,
   Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
       if Value then
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["50"].Visible = true
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["100"].Visible = true
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["150"].Visible = true
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["200"].Visible = true
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["300"].Visible = true
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["400"].Visible = true
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["500"].Visible = true
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["1000"].Visible = true
       else
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["50"].Visible = false
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["100"].Visible = false
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["150"].Visible = false
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["200"].Visible = false
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["300"].Visible = false
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["400"].Visible = false
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["500"].Visible = false
           game:GetService("Players").LocalPlayer.PlayerGui.checkpoint.replay["1000"].Visible = false
       end
   end,
})
local Toggle = RFE:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection6 = Workspace.ChildAdded:Connect(function(entity)
                if entitiy:IsA("Part") then
                    wait()
                    local Face = entity:FindFirstChildWhichIsA("ImageLabel", true)
                    if Face then
                        local FAce = Face.Image 
                        local FACe = string.gsub(FAce, "%D", "")
                        local FACE = tonumber(FACe)
                        Rayfield:Notify({
                          Title = entity.Name,
                          Content = "Has spawned.",
                          Duration = 5,
                          Image = FACE,
                        })
                    else
                        Rayfield:Notify({
                          Title = entity.Name,
                          Content = "Has spawned.",
                          Duration = 5,
                          Image = "triangle-alert",
                        })
                    end
                    local TextChatService = game:GetService("TextChatService")
                    local generalChannel = TextChatService.TextChannels.RBXGeneral
                    generalChannel:DisplaySystemMessage(entity.Name .. " spawned!")
                end
            end)
        else
            connection6:Disconnect()
        end
    end,
})
local Toggle = RFE:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection7 = Workspace.ChildRemoved:Connect(function(entity)
                if entitiy:IsA("Part") then
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has deleted.",
                      Duration = 5,
                      Image = "trash",
                    })
                    local TextChatService = game:GetService("TextChatService")
                    local generalChannel = TextChatService.TextChannels.RBXGeneral
                    generalChannel:DisplaySystemMessage(entity.Name .. " deleted!")
                end
            end)
        else
            connection7:Disconnect()
        end
    end,
})
local Toggle = RFE:CreateToggle({
   Name = "Inf Stamina",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
       if Value then
           local isChanging = false
           local numberValue = game:GetService("Players").LocalPlayer.PlayerGui.stamina:FindFirstChildWhichIsA("NumberValue", true)

           connection8 = numberValue.Changed:Connect(function(newValue)
             if isChanging then return end
             if newValue ~= 100 then
                 isChanging = true
                 numberValue.Value = 100
                 isChanging = false
             end
           end)
       else
           connection8:Disconnect()
       end
   end,
})

-- Liminal Rooms [DISCONTINUED]
local LR = Window:CreateTab("Liminal Rooms[DISCONTINUED](DIESEL's Group Games)", 135909966594838) -- Title, Image
local Paragraph = LR:CreateParagraph({Title = "WARNING⚠", Content = "if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error"})
local Toggle = LR:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection9 = Workspace:WaitForChild("ActiveEnemies").ChildAdded:Connect(function(entity)
                wait()
                local Face = entity:FindFirstChildWhichIsA("ImageLabel", true)
                if Face then
                    local FAce = Face.Image 
                    local FACe = string.gsub(FAce, "%D", "")
                    local FACE = tonumber(FACe)
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = FACE,
                    })
                else
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = "triangle-alert",
                    })
                end
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
generalChannel:DisplaySystemMessage(entity.Name .. " spawned!")
            end)
        else
            connection9:Disconnect()
        end
    end,
})
local Toggle = LR:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection10 = Workspace:WaitForChild("ActiveEnemies").ChildRemoved:Connect(function(entity)
                Rayfield:Notify({
                  Title = entity.Name,
                  Content = "Has deleted.",
                  Duration = 5,
                  Image = "trash",
                })
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
                generalChannel:DisplaySystemMessage(entity.Name .. " deleted!")
            end)
        else
            connection10:Disconnect()
        end
    end,
})
local Toggle = LR:CreateToggle({
    Name = "Notify Minions Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection11 = Workspace:WaitForChild("ActiveMinions").ChildAdded:Connect(function(entity)
                wait()
                local Face = entity:FindFirstChildWhichIsA("ImageLabel", true)
                if Face then
                    local FAce = Face.Image 
                    local FACe = string.gsub(FAce, "%D", "")
                    local FACE = tonumber(FACe)
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = FACE,
                    })
                else
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = "triangle-alert",
                    })
                end
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
generalChannel:DisplaySystemMessage(entity.Name .. " spawned!")
            end)
        else
            connection11:Disconnect()
        end
    end,
})
local Toggle = LR:CreateToggle({
    Name = "Notify Minions Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection12 = Workspace:WaitForChild("ActiveMinions").ChildRemoved:Connect(function(entity)
                Rayfield:Notify({
                  Title = entity.Name,
                  Content = "Has deleted.",
                  Duration = 5,
                  Image = "trash",
                })
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
                generalChannel:DisplaySystemMessage(entity.Name .. " deleted!")
            end)
        else
            connection12:Disconnect()
        end
    end,
})
local Button = LR:CreateButton({
   Name = "Enabled Room Number",
   Callback = function()
   -- The function that takes place when the button is pressed
       loadstring(game:HttpGet(("https://pastebin.com/raw/8AkLMekw"),true))()
   end,
})
local Button = LR:CreateButton({
   Name = "Auto Open Doors Toggle UI",
   Callback = function()
   -- The function that takes place when the button is pressed
       loadstring(game:HttpGet(("https://pastebin.com/raw/UXq4mqA2"),true))(
   end,
})
local Button = LR:CreateButton({
    Name = "Teleport To Sector A",
    Callback = function()
    local TeleportService = game:GetService("TeleportService")
    local gameId = 13415267785
    local success, errorMessage = pcall(function()
    TeleportService:Teleport(gameId, game.Players.LocalPlayer)
    if success then
        print("Teleport to Game ID：" .. gameId) 
    else
        warn("Teleport failure：" .. errorMessage)
    end
    end)
    end,
 })
 local Button = LR:CreateButton({
    Name = "Teleport To Sector B",
    Callback = function()
    local TeleportService = game:GetService("TeleportService")
    local gameId = 13740983392
    local success, errorMessage = pcall(function()
    TeleportService:Teleport(gameId, game.Players.LocalPlayer)
    if success then
        print("Teleport to Game ID：" .. gameId) 
    else
        warn("Teleport failure：" .. errorMessage)
    end
    end)
    end,
 })
local Button = LR:CreateButton({
    Name = "Teleport To Sector C",
    Callback = function()
    local TeleportService = game:GetService("TeleportService")
    local gameId = 13850926454
    local success, errorMessage = pcall(function()
    TeleportService:Teleport(gameId, game.Players.LocalPlayer)
    if success then
        print("Teleport to Game ID：" .. gameId) 
    else
        warn("Teleport failure：" .. errorMessage)
    end
    end)
    end,
 })
local Button = LR:CreateButton({
    Name = "Teleport To Sector U",
    Callback = function()
    local TeleportService = game:GetService("TeleportService")
    local gameId = 13651436803
    local success, errorMessage = pcall(function()
    TeleportService:Teleport(gameId, game.Players.LocalPlayer)
    if success then
        print("Teleport to Game ID：" .. gameId) 
    else
        warn("Teleport failure：" .. errorMessage)
    end
    end)
    end,
})
local Button = LR:CreateButton({
   Name = "Teleport To The Basement",
   Callback = function()
   -- The function that takes place when the button is pressed
        local TeleportService = game:GetService("TeleportService")
        local gameId = 17526994637
        local success, errorMessage = pcall(function()
            TeleportService:Teleport(gameId, game.Players.LocalPlayer)
            if success then
                print("Teleport to Game ID：" .. gameId) 
            else
                warn("Teleport failure：" .. errorMessage)
            end
        end)
   end,
})

-- Liminal Rooms 2
local LR2 = Window:CreateTab("Liminal Rooms 2(DIESEL's Group Games)", 4483362458) -- Title, Image
local Paragraph = LR2:CreateParagraph({Title = "WARNING⚠", Content = "if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error"})
local Toggle = LR2:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection13 = Workspace:WaitForChild("Entity").ChildAdded:Connect(function(entity)
                wait()
                local Face = entity:FindFirstChildWhichIsA("ImageLabel", true)
                if Face then
                    local FAce = Face.Image 
                    local FACe = string.gsub(FAce, "%D", "")
                    local FACE = tonumber(FACe)
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = FACE,
                    })
                else
                    Rayfield:Notify({
                      Title = entity.Name,
                      Content = "Has spawned.",
                      Duration = 5,
                      Image = "triangle-alert",
                    })
                end
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
generalChannel:DisplaySystemMessage(entity.Name .. " spawned!")
            end)
        else
            connection13:Disconnect()
        end
    end,
})
local Toggle = LR2:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection14 = Workspace:WaitForChild("Entity").ChildRemoved:Connect(function(entity)
                Rayfield:Notify({
                  Title = entity.Name,
                  Content = "Has deleted.",
                  Duration = 5,
                  Image = "trash",
                })
                local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService.TextChannels.RBXGeneral
                generalChannel:DisplaySystemMessage(entity.Name .. " deleted!")
            end)
        else
            connection14:Disconnect()
        end
    end,
})
local Toggle = LR2:CreateToggle({
   Name = "Remote Door Opening",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
       if Value then
           connection15 = workspace.GeneratedRooms.ChildAdded:Connect(function(room)
               local ClickDetector = room:WaitForChild("DoorObject"):WaitForChild("Door"):WaitForChild("ClickDetector")
               fireclickdetector(ClickDetector)
           end)
       else
           connection15:Disconnect()
       end
   end,
})
local Button = LR2:CreateButton({
   Name = "Enabled Room Number",
   Callback = function()
   -- The function that takes place when the button is pressed
       loadstring(game:HttpGet(("https://pastebin.com/raw/8AkLMekw"),true))()
   end,
})

--Troll💀
local Troll = Window:CreateTab("Troll", 9521252966) -- Title, Image
local Section = Troll:CreateSection("Main")
local PlayAnimatonButton = Troll:CreateButton({
    Name = "ShitAnim",
    Callback = function()
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local animator = humanoid:FindFirstChildOfClass("Animator")

        if humanoid and animator then
            local animInstance = game.Workspace.Animation:FindFirstChild("PlayerAnimation")
            if animInstance then
                local animationTrack = animator:LoadAnimation(animInstance)
                animationTrack:Play()
            else
                warn("找不到 Animation 实例 'PlayerAnimation'")
            end
        else
            warn("找不到 Humanoid 或 Animator")
        end
    end,
 })
 local Button = Troll:CreateButton({
   Name = "Computer Virus",
   Callback = function()
   -- The function that takes place when the button is pressed
       MessageBox.Show({Position = UDim2.new(0.5,0,0.5,0), Text = "Window", Description = "Hi.            ", MessageBoxIcon = "Question", MessageBoxButtons = "YesNo", Result = function(res)
       if (res == "Yes") then
           MessageBox.Show({Position = UDim2.new(0.5,0,0.5,0), Text = "Window", Description = "Do you feel any suprised?", MessageBoxIcon = "Question", MessageBoxButtons = "YesNo", Result = function(res)
           if (res == "Yes") then
               MessageBox.Show({MessageBoxButtons = "OK", Description = "HAHA I am just kidding, it is just a troll.The UI is Roblox's, not your computer.", Text = "Window"})
           elseif (res == "No") then
               MessageBox.Show({MessageBoxButtons = "OK", Description = "Okay you win.", Text = "Window"})
           end
           end})
       elseif (res == "No") then
           MessageBox.Show({MessageBoxButtons = "OK", Description = "Oh okay you're not good,so i am going to get away,see ya.", Text = "Window"})
       end
       end})
   end,
})
local Button = Troll:CreateButton({
   Name = "Jumpscares Hub(Still By Myself)",
   Callback = function()
   -- The function that takes place when the button is pressed
       loadstring(game:HttpGet("https://pastebin.com/raw/ZjDZXJF8"))()
   end,
})

local Section = Troll:CreateSection("Rooms:Low Detailed")
local Input = Troll:CreateInput({
   Name = "Notice Text",
   CurrentValue = "",
   PlaceholderText = "TEXT",
   RemoveTextAfterFocusLost = false,
   Flag = "Input",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
       local clone = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.TEXT.Parent:Clone()
       print("Clone")
       clone.TEXT:Destroy()
       print("Destroy")
       clone.Parent = game.Players.LocalPlayer.PlayerGui
       print("PlayerGui")
       game.TweenService:Create(clone.Text, TweenInfo.new(1), {
	     TextTransparency = 0;
       }):Play()
       print("Tween play")
       local var8 = Text
       for i = 1, #var8 do
	       clone.Text.Text = string.sub(var8, 1, i)
	       task.wait(arg2 or 0.04)
	       game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.TEXT.txtsound:Play()
       end
       task.wait(1.5)
       game.TweenService:Create(clone.Text, TweenInfo.new(0.7), {
	     TextTransparency = 1;
       }):Play()
       task.wait(0.5)
       end,
       })
local Input = Troll:CreateInput({
   Name = "Notice Wait(time between every two letters)",
   CurrentValue = "",
   PlaceholderText = "WaitTime",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(int)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
       arg2 = tonumber(int)
   end,
})

-- Credits
local Credits = Window:CreateTab("Credits", "info")
local Paragraph = Credits:CreateParagraph({Title = "@SiriusSoftwareLtd(Github)", Content = "The Ui Library Rayfield.The All Basic Codes"})
local Paragraph = Credits:CreateParagraph({Title = "@RM_LFG(My account for testing this Hub)", Content = "The Creater.Most Of Codes."})
local Paragraph = Credits:CreateParagraph({Title = "@hodcat_CN", Content = "Some Codes.A Friend of Mine.Most Of Tabs' Icon"})

-- Settings
local Settings = Window:CreateTab("Settings", "bolt")
local Button = Settings:CreateButton({
   Name = "Destroy UI",
   Callback = function()
   -- The function that takes place when the button is pressed
       Rayfield:Destroy()
       l:Notify("UI DEAD","☠️☠️💀💀",5)
   end,
})