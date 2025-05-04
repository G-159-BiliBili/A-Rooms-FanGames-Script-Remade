-- UI
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Window
local Window = Rayfield:CreateWindow({
   Name = "A Rooms-FanGames Script Remade",
   Icon = "file-code-2", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by RM_LFG",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "APSFRG"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
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
local Paragraph = Main:CreateParagraph({Title = "Tips:", Content = "You need to press Unable ResetOnSpawn before you pressing IY"})
local Paragraph = Main:CreateParagraph({Title = "Tips:", Content = "Use IY for god in Rooms-FanGames, but sometimes doesn't work."})
local Button = Main:CreateButton({
   Name = "Unable ResetOnSpawn",
   Callback = function()
   -- The function that takes place when the button is pressed
       for _, ui in ipairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
           if ui:IsA("GuiObject") and ui.ResetOnSpawn ~= nil then
               ui.ResetOnSpawn = false
       end
   end,
})
local Button = Main:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   -- The function that takes place when the button is pressed
       loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
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
            connection = Workspace:WaitForChild("Entities").ChildRemoved:Connect(function(entity)
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
            connection:Disconnect()
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

-- ROOMS:LOW DETAILED FAN IDEAS
local RLDFI = Window:CreateTab("Rooms:Low Detailed Fan Ideas(powenp99087)", 13796156377) -- Title, Image
local Paragraph = RLDFI:CreateParagraph({Title = "WARNING⚠", Content = "if you are not in this game then you can't use them.It will show Callback Error.Whatever you don't see it show the Callback Error"})
local Toggle = RLDFI:CreateToggle({
    Name = "Notify Entities Spawned",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value then
            connection = Workspace:WaitForChild("SpawnedEnitites").ChildAdded:Connect(function(entity)
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
local Toggle = RLDFI:CreateToggle({
    Name = "Notify Entities Deleted",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value then
            connection = Workspace:WaitForChild("SpawnedEnitites").ChildRemoved:Connect(function(entity)
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
            connection:Disconnect()
        end
    end,
})

--Troll💀
local Tab = Window:CreateTab("Troll", 9521252966) -- Title, Image
local PlayAnimatonButton = Tab:CreateButton({
    Name = "ShitAnim",
    Callback = function()
    

        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local ServerScriptService = game:GetService("ServerScriptService")
        local player = Players.LocalPlayer

        local remoteEvent = ReplicatedStorage:FindFirstChild("PlayAnimationEvent")
        if not remoteEvent then
            remoteEvent = Instance.new("RemoteEvent")
            remoteEvent.Name = "PlayAnimationEvent"
            remoteEvent.Parent = ReplicatedStorage
        end

    -- 创建服务端脚本（用于播放动画）
        if not ServerScriptService:FindFirstChild("PlayAnimationServerScript") then
            local serverScript = Instance.new("Script")
            serverScript.Name = "PlayAnimationServerScript"
            serverScript.Source = [[
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local remoteEvent = ReplicatedStorage:WaitForChild("PlayAnimationEvent")

            local ANIMATION_ID = "rbxassetid://104556609120727"

            remoteEvent.OnServerEvent:Connect(function(player)
                local character = player.Character
                if not character then return end

                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if not humanoid then return end

                local animator = humanoid:FindFirstChildOfClass("Animator")
                if not animator then
                    animator = Instance.new("Animator")
                    animator.Parent = humanoid
                end

                local animation = Instance.new("Animation")
                animation.AnimationId = ANIMATION_ID

                local track = animator:LoadAnimation(animation)
                track:Play()
            end)
            ]]
        serverScript.Parent = ServerScriptService
        end

        local remote = ReplicatedStorage:FindFirstChild("PlayAnimationEvent")
        if remote then
            remote:FireServer()
        end


    end,
 })

-- Settings
local Settings = Window:CreateTab("Settings", "bolt")
local Button = Settings:CreateButton({
   Name = "Destroy UI",
   Callback = function()
   -- The function that takes place when the button is pressed
       Rayfield:Destroy()
       Rayfield:Notify({
         Title = "UI",
         Content = "DIE💀",
         Duration = 3,
         Image = "shredder",
       })
   end,
})