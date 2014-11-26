function FirstSpawn( ply )
    PrintMessage( HUD_PRINTTALK,"Player " .. ply:Nick() .. "(" .. ply:SteamID() .. ") has joined the game." )
end
hook.Add( "PlayerInitialSpawn", "playerInitialSpawn", FirstSpawn )
 
local function PlayerDisconnected(objPl)
        local strSteam = objPl:SteamID()
 
        if Players and Players[strSteam] then
                Players[strSteam] = nil
        end
       
        for k, v in pairs(player.GetAll()) do
                if(v:IsPlayer()) then
                        v:ChatPrint("Player disconnect info: " .. objPl:Nick() .. " - " .. strSteam .. "")
                end
               
                if(v:IsUserGroup("council")) then
                        v:ChatPrint("Player's IP (Council Only): " .. objPl:IPAddress() .. "")
                end
        end
        print("Player disconnect info: " .. objPl:Nick() .. " - " .. strSteam .. " - " .. objPl:IPAddress() .. "")
end
hook.Add("PlayerDisconnected", "PlayerDisconnected", PlayerDisconnected)
