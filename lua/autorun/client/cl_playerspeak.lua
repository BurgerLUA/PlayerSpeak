function PlayerSpeak(ply,text,teamonly,dead)

	if PSTable then
	
		local Explode = string.Explode("",string.lower(text),false)
		
		local Found = false
	
		for k,v in pairs(PSTable) do

			local Start,End = string.find(string.lower(text),k,1,false)

			if Start ~= nil and End ~= nil then
				if (Explode[Start - 1] == " " or Explode[Start - 1] == nil ) and (Explode[End + 1] == " " or Explode[End + 1] == nil)  then
					if Found == false then
						EmitSound(v,ply:GetPos(),ply:EntIndex(),2,1,80,0,100)
						Found = true
					end
				end
			end
			
		end

	else
		error("SHITS NOT LOADED")
	end
	
end

hook.Add("OnPlayerChat","PlayerSpeak: Player Say",PlayerSpeak)