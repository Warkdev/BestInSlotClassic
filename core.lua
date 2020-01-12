print("BestInSlotClassic v0.1beta");

app:RegisterEvent("ADDON_LOADED");
app:RegisterEvent("PLAYER_LOGIN");

app.events.PLAYER_LOGIN = function()
    print("Player is logged in");

end

app.events.ADDON_LOADED = function()
    print("Addon is loaded");

end