UserInputService = game:GetService("UserInputService")

local plr = game.Players.LocalPlayer

local originalwalkspeed = 16

print("You can now sprint!")

UserInputService.InputBegan:Connect(function(input,gameProccessedEvent)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		plr.Character.Humanoid.WalkSpeed = originalwalkspeed * 1.5
		end
	
end)

UserInputService.InputEnded:Connect(function(input,gameProccessedEvent) 
	if input.KeyCode == Enum.KeyCode.LeftShift then
		plr.Character.Humanoid.WalkSpeed = originalwalkspeed 
	end
end) 