local brimstart = RegisterMod("brimstart", 1)

brimstart.COLLECTIBLE_brimstone = Isaac.GetItemIdByName("Brimstone")

function brimstart:onUpdate()
	if Game():GetFrameCount() == 1 then
		Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, brimstart.COLLECTIBLE_brimstone,Vector(320,280), Vector(0,0), nil)
	end
end 

brimstart:AddCallback(ModCallbacks.MC_POST_UPDATE,brimstart.onUpdate)