--!strict
-- [[ N3 HUB - UNIVERSAL LOADER ]]
local genv = getgenv and getgenv() or _G
if genv.N3_LOADED and (tick() - genv.N3_LOADED) <= 3 then
    return
end
genv.N3_LOADED = tick()

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local success, err = pcall(function()
    loadstring(game:HttpGet("https://flowauth.net/v1/loaders/3d076138d1e2d024d3911c45f8227b1b.lua"))()
end)

if not success then
    warn("[N3 HUB] Failed to load script: " .. tostring(err))
end
