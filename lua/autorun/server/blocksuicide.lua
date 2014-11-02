local function BlockSuicide(ply)

    ply:ChatPrint("This command has been disabled due to non-rp like uses.")
    return false
end
hook.Add( "CanPlayerSuicide", "BlockSuicide", BlockSuicide )