--Removing the skin property of the context menu.
hook.Add( "CanProperty", "block_skin_property", function( ply, property, ent )
	if ( !ply:IsSuperAdmin() && property == "skin" ) then return false end
end )