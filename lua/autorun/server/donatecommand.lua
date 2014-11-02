function donateCommand( pl, text, teamonly )
 if text == "!donate" or text == "/donate" then 
 pl:SendLua([[gui.OpenURL("http://example.com/donate")]]) --Insert link to donation page in the quotes.
 return ""
 end
end
hook.Add( "PlayerSay", "Chat", donateCommand )