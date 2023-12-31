function Item.getType(self)
	return ItemType(self:getId())
end

function Item.isContainer(self)
	return false
end

function Item.isCreature(self)
	return false
end

function Item.isMonster(self)
	return false
end

function Item.isNpc(self)
	return false
end

function Item.isPlayer(self)
	return false
end

function Item.isTeleport(self)
	return false
end

function Item.isTile(self)
	return false
end

function Item.setDescription(self, description)
	if description ~= "" then
		self:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, description)
	else
		self:removeAttribute(ITEM_ATTRIBUTE_DESCRIPTION)
	end
end

function Item.setText(self, text)
	if text ~= "" then
		self:setAttribute(ITEM_ATTRIBUTE_TEXT, text)
	else
		self:removeAttribute(ITEM_ATTRIBUTE_TEXT)
	end
end

function Item.setName(self, name)
	if name ~= "" then
		self:setAttribute(ITEM_ATTRIBUTE_NAME, name)
	else
		self:removeAttribute(ITEM_ATTRIBUTE_NAME)
	end
end

function Item.setUniqueId(self, uniqueId)
	if type(uniqueId) ~= "number" or uniqueId < 0 or uniqueId > 65535 then
		return false
	end

	self:setAttribute(ITEM_ATTRIBUTE_UNIQUEID, uniqueId)
end

function Item.getDuration(self)
	return self:getAttribute(ITEM_ATTRIBUTE_DURATION)
end

function Item.setDurationAttr(self, duration)
	return self:setAttribute(ITEM_ATTRIBUTE_DURATION, duration)
end

function Item.stopDecay(self)
	return self:setAttribute(ITEM_ATTRIBUTE_DECAYSTATE, DECAYING_FALSE)
end
