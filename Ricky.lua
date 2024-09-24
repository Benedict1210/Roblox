local plr = game:GetService("Players").LocalPlayer

if plr.UserId == 498960671 or plr.UserId == 2216623349 then
	plr.Chatted:Connect(function(message)
		if string.match(message, "2022") then
			for i, obj in game:GetDescendants() do
				if obj:IsA("BasePart") or obj:IsA("MeshPart") then
					obj.Material = Enum.Material.Neon
					obj.Color = Color3.fromRGB(255,255,255)
					obj.MaterialVariant = ""
					
					local PL = Instance.new("PointLight")
					PL.Range = 100
					PL.Brightness = 100
					PL.Parent = obj
				elseif obj:IsA("Accessory") then
					obj:Destroy()
				end
			end
			
			game.Lighting.Brightness = 10000
			game.Lighting.Bloom.Intensity = 1
			game.Lighting.Bloom.Threshold = .1
			game.Lighting.Bloom.Size = 100
			script.ColorCorrection:Clone().Parent = game.Lighting
			
			script:Destroy()
		end
	end)
	
	for i, obj in game:GetDescendants() do
		if obj:IsA("BasePart") or obj:IsA("MeshPart") then -- changing texture to pre2022
			if obj.Material == Enum.Material.Brick then
				obj.MaterialVariant = "Brick_Pre2022"
			elseif obj.Material == Enum.Material.Cobblestone then
				obj.MaterialVariant = "Cobblestone_Pre2022"
			elseif obj.Material == Enum.Material.Concrete then
				obj.MaterialVariant = "Concrete_Pre2022"
			elseif obj.Material == Enum.Material.CorrodedMetal then
				obj.MaterialVariant = "CorrodedMetal_Pre2022"
			elseif obj.Material == Enum.Material.DiamondPlate then
				obj.MaterialVariant = "DiamondPlate_Pre2022"
			elseif obj.Material == Enum.Material.Fabric then
				obj.MaterialVariant = "Fabric_Pre2022"
			elseif obj.Material == Enum.Material.Foil then
				obj.MaterialVariant = "Foil_Pre2022"
			elseif obj.Material == Enum.Material.Granite then
				obj.MaterialVariant = "Granite_Pre2022"
			elseif obj.Material == Enum.Material.Grass then
				obj.MaterialVariant = "Grass_Pre2022"
			elseif obj.Material == Enum.Material.Ice then
				obj.MaterialVariant = "Ice_Pre2022"
			elseif obj.Material == Enum.Material.Marble then
				obj.MaterialVariant = "Marble_Pre2022"
			elseif obj.Material == Enum.Material.Metal then
				obj.MaterialVariant = "Metal_Pre2022"
			elseif obj.Material == Enum.Material.Pebble then
				obj.MaterialVariant = "Pebble_Pre2022"
			elseif obj.Material == Enum.Material.Sand then
				obj.MaterialVariant = "Sand_Pre2022"
			elseif obj.Material == Enum.Material.Slate then
				obj.MaterialVariant = "Slate_Pre2022"
			elseif obj.Material == Enum.Material.Wood then
				obj.MaterialVariant = "Wood_Pre2022"
			elseif obj.Material == Enum.Material.WoodPlanks then
				obj.MaterialVariant = "WoodPlanks_Pre2022"
			end
		end
	end
	
	warn("Hola Ricky, hope you like them textures lol")
else
	print("Ur not Ricky, why do you check /console?")
end
