--[[
    Author: @TactBacon
    Module: ModelProvider.lua
    Created: 12/19/2022
--]]

--=| Services |=--


--=| Main Task Declaration |=--

local ModelProvider = {}


--=| Dependencies |=--


--=| Constants |=--


--=| Global Variables |=--


--=| Objects |=--


--=| Private Functions |=--


--=| Public Functions |=--

function ModelProvider:GetModel(modelName)
    local model = game:GetService("ReplicatedStorage"):WaitForChild("Models"):WaitForChild(modelName)
    return model
end


--=| End |=--

return ModelProvider
