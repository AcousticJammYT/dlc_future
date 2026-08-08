-- Instead of Item, create a HealItem, a convenient class for consumable healing items
local item, super = Class(HealItem, "dhwater")

function item:init()
    super.init(self)

    -- Display name
    self.name = "DH Water"

    -- Item type (item, key, weapon, armor)
    self.type = "item"
    -- Item icon (for equipment)
    self.icon = nil

    -- Battle description
    self.effect = "Leftover\nRations"
    -- Menu description
    self.description = "A bottle of dehydrated water. Good healing with minor poison. +800 HP"

    -- Amount healed (HealItem variable)
    self.heal_amount = 1000

    -- Default shop price (sell price is halved)
    self.price = 200
    -- Whether the item can be sold
    self.can_sell = true

    -- Consumable target mode (ally, party, enemy, enemies, or none)
    self.target = "ally"
    -- Where this item can be used (world, battle, all, or none)
    self.usable_in = "all"
    -- Item this item will get turned into when consumed
    self.result_item = nil
    -- Will this item be instantly consumed in battles?
    self.instant = false

    -- Equip bonuses (for weapons and armor)
    self.bonuses = {}
    -- Bonus name and icon (displayed in equip menu)
    self.bonus_name = nil
    self.bonus_icon = nil

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {}

    -- Character reactions (key = party member id)
    self.reactions = {
		jamm = "I'm sorry, dehydrated water???",
		fmarcy = {
			fmarcy = "This stuff's always good.",
			jamm = "???"
		}
    }
end

function item:onBattleUse(user, target)
    local amount = self:getBattleHealAmountModified(target.chara.id, user.chara, target.chara)
    target:heal(amount)
	
	target:inflictStatus("poison", 5)
end

return item
