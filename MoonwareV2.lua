task.spawn(function()
    local LocalPlayer = game.Players.LocalPlayer

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
    local WhitelistedUsers = {User1 = "imagod_033", User2 = "4SaD45", User3 = "iusealsploit", User4 = "umother2001vjd", User5 = "ncm_hack", User6 = "bananjoy_4"}
    local Owner = "AlSploitEzWins"
    
    local WandBubbleProtectionRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("WandBubbleProtection")local HannahPromptTriggerRemote = Client:Get("HannahPromptTrigger")
    local WandHealPlayerRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("WandHealPlayer")
    
    for i, v in next, WhitelistedUsers do
        if v.Name == LocalPlayer.Name or LocalPlayer.Name == Owner then
            task.spawn(function()
                task.spawn(function()
                    repeat
                        task.wait(0.1)

                        task.spawn(function()
                            WandBubbleProtectionRemote:InvokeServer({
                                ["targetPlayerUserId"] = LocalPlayer.UserId,
                                ["handItem"] = {
                                    ["itemSkin"] = "",
                                    ["itemType"] = "villain_protector_wand",
                                    ["amount"] = 9999,
                                    ["addedToBackpackTime"] = 0,
                                    ["tool"] = ReplicatedStorage.Items.villain_protector_wand,
                                },
                            })
                        end)

                        task.spawn(function()
                            WandHealPlayerRemote:InvokeServer({
                                ["targetPlayerUserId"] = LocalPlayer.UserId,
                                ["handItem"] = {
                                    ["itemSkin"] = "",
                                    ["itemType"] = "villain_protector_wand",
                                    ["amount"] = 9999,
                                    ["addedToBackpackTime"] = 0,
                                    ["tool"] = ReplicatedStorage.Items.villain_protector_wand,
                                },
                            })
                        end)
                    until not game
                end)
            end)
        end
    end    
end)
