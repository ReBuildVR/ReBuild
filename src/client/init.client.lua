-- Client

local selectionpart = Instance.new("Part",workspace)
selectionpart.Size = Vector3.new(5,5,5)
selectionpart.Transparency = 0.5
selectionpart.CanCollide = false
selectionpart.Anchored = true
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local rs = game:GetService("RunService")

mouse.Move:Connect(function()
	local raycastresult = workspace:Raycast(mouse.Hit.Position + Vector3.new(0,150,0),Vector3.new(0,-250,0))
	if raycastresult ~= nil then -- if there is nothing under the selection part
		if raycastresult.Instance.Name == "GridPart" then -- checks if its a grid part
			selectionpart.Position = raycastresult.Instance.Position + Vector3.new(0,selectionpart.Size.Y/2,0)
		end
	end
end)


