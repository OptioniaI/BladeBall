local Storage = game:GetService("ReplicatedStorage");
local Players = game:GetService("Players");

local Player = Players.LocalPlayer
local Remotes = Storage.Remotes
local QuadEvent = Remotes.XtraJumped

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

getgenv().WW3 = {
    Spam = 4000
}

local Library = Mercury:Create{
    Name = "World War 3",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

local MainTab = Library:Tab{
    Name = "Main",
    Icon = "rbxassetid://8569322835"
}

MainTab:Textbox{
	Name = "Spam Value",
	Callback = function(Value)
        getgenv().WW3.Spam = tonumber(Value)
    end
}

MainTab:Button{
    Name = "Lag Server",
    Description = "Lag the servers of Blade Ball!",
    Callback = function()
        for Iter = 1, getgenv().WW3.Spam do
            game:GetService("ReplicatedStorage").Remotes.XtraJumped:FireServer()
        end
    end
}

MainTab:Button{
    Name = "Deafen People",
    Description = "Hurt other players ears!",
    Callback = function()
        for Iter = 1, getgenv().WW3.Spam do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.XtraJumped:FireServer()
        end
    end
}
