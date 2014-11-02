function CheckULX(ply)
	local UG = ply:GetNWString("usergroup")
	UG = string.lower(UG)
	
	local AvailableGroups = {}
		AvailableGroups["superadmin"] = true -- KEEP THESE LOWERCASE
		AvailableGroups["admin"] = true 
		AvailableGroups["council"] = true 
		AvailableGroups["senioradmin"] = true 
		AvailableGroups["titanium"] = true 
		AvailableGroups["gold"] = true 
		AvailableGroups["silver"] = true 
		AvailableGroups["bronze"] = true 
	
	if AvailableGroups[UG] then
		return true
	else
		return false
	end
end

if SERVER then -- Physgun Check
	hook.Add("PlayerSpawn","Physgun Remove",function(ply)
		timer.Simple(0.2,function() -- for safe
			if ply and ply:IsValid() and !CheckULX(ply) then
				ply:StripWeapon("weapon_physgun")
			end
		end)
	end)
end