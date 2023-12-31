local thirdSealFlame = MoveEvent()

function thirdSealFlame.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getStorageValue(Storage.Quest.U7_2.TheQueenOfTheBanshees.ThirdSeal) >= 1 or Game.getStorageValue("switchNum") ~= 6 then
		player:teleportTo(fromPosition)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end

	for i = 1, #thirdSealTable.coalBasinPosition do
		local positions = thirdSealTable.coalBasinPosition[i]
		Position(positions):transformItem(2113, 2114)
	end

	for i = 1, #thirdSealTable.switchPosition do
		local positions = thirdSealTable.switchPosition[i]
		Position(positions):transformItem(2772, 2773)
	end

	player:setStorageValue(Storage.Quest.U7_2.TheQueenOfTheBanshees.ThirdSeal, 1)
	player:setStorageValue(Storage.Quest.U7_2.TheQueenOfTheBanshees.ThirdSealDoor, 1)
	Game.setStorageValue("switchNum", 1)
	player:teleportTo({ x = 32271, y = 31857, z = 15 })
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

thirdSealFlame:uid(35015)
thirdSealFlame:type("stepin")
thirdSealFlame:register()
