getgenv().CrosshairSettings = {
    Color = Color3.fromRGB(255,255,255),
    RainbowColor = false,
    Opacity = 1,
    Length = 6, -- Length of each line
    Thickness = 2, -- Thickness of each line
    Offset = 3, -- Offset from the middle point
    Dot = true, -- not recommended
    FollowCursor = true, -- Crosshair follows the cursor
    HideMouseIcon = true, -- Hides the mouse icon, set to 0 to ignore
    HideGameCrosshair = false, -- Hides the current game's crosshair (if its supported)
    ToggleKey = Enum.KeyCode.RightAlt, -- Toggles crosshair visibility
} -- v1.2.1
loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/CustomCrosshair.lua", true))()
