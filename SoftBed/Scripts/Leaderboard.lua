
for l, e in pairs(
    {
        (function()
            for a, b in pairs(game.CoreGui:GetChildren()) do
                if b.Name == "LeaderBoardUi" then
                    b:Destroy()
                    return
                end
            end
            function Create(c, d, e)
                local f = Instance.new("TextLabel")
                f.Position = UDim2.new(0, 20, 0, 15 + d * 20)
                f.Parent = game.CoreGui:FindFirstChild("LeaderBoardUi").Frame
                f.Font = e
                for a, b in pairs(c) do
                    f[a] = b
                end
                return f
            end
            function corner(g, h)
                local corner = Instance.new("UICorner", h)
                corner["CornerRadius"] = UDim.new(g, 0)
            end
            local i = Instance.new("ScreenGui", game.CoreGui)
            i.ResetOnSpawn = false
            i.Name = "LeaderBoardUi"
            i.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            local j = Instance.new("Frame", i)
            j.Position = UDim2.new(1, -175, 0.6, -180)
            j.BackgroundColor3 = Color3.new(0, 0, 0)
            j.Transparency = 0.3
            j.BorderSizePixel = 0
            j.Size = UDim2.new(0, 180, 0, 190)
            local k = Instance.new("TextLabel", j)
            k.Text = "Bedwars"
            k.TextColor3 = Color3.fromRGB(255, 223, 0)
            k.Font = Enum.Font.LuckiestGuy
            k.TextSize = 16
            k.Position = UDim2.new(0, 90, 0, 15)
            local l =
                Create(
                {
                    Name = "Level",
                    Text = "\n\n\n\n          Level:\n                                               ⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛\n\n                                       Progress:12k/17k\n\n                           " ..
                        game.Players.LocalPlayer.Name .. " (You) ",
                    TextColor3 = Color3.fromRGB(207, 207, 207),
                    TextSize = 12
                },
                1,
                Enum.Font.LuckiestGuy
            )
            local m =
                Create(
                {
                    Name = "game",
                    Text = "\n\n                                 Health:" ..
                        game.Players.LocalPlayer.Character.Humanoid.Health ..
                            "/100\n\n                Speed:" .. game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
                    TextSize = 12,
                    TextColor3 = Color3.fromRGB(207, 207, 207)
                },
                5,
                Enum.Font.LuckiestGuy
            )
            local n =
                Create(
                {Name = "Server", Text = "      EZ.GG", TextColor3 = Color3.fromRGB(100, 200, 255), TextSize = 10},
                8,
                Enum.Font.ArialBold
            )
            corner(0.05, j)
            while game.CoreGui.LeaderBoardUi ~= nil do
                m.Text =
                    "\n\n                                 Health:" ..
                    math.ceil(game.Players.LocalPlayer.Character.Humanoid.Health) ..
                        "/100\n\n                Speed:" .. game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
                wait()
            end
        end)()
    }
) do
    return e
end
