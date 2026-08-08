local item, super = Class(Item, "tensionstab")

function item:init()
    super.init(self)

    -- Display name
    self.name = "TensionStab"

    -- Item type (item, key, weapon, armor)
    self.type = "item"
    -- Item icon (for equipment)
    self.icon = nil

    -- Battle description
    self.effect = "Risky\nTension"
    -- Menu description
    self.description = "A syringe full of an orange, bubbling liquid, labeled \"TENSE\". +80% TP, -40% HP."

    -- Default shop price (sell price is halved)
    self.price = 200
    -- Whether the item can be sold
    self.can_sell = true

    -- Consumable target mode (ally, party, enemy, enemies, or none)
    self.target = "party"
    -- Where this item can be used (world, battle, all, or none)
    self.usable_in = "battle"
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
end

function item:onBattleUse(user, target)
	Game:giveTension(80)
	user:hurt(math.ceil(user.chara.stats["health"]*0.4), true, nil, {future_proof = true})
end

return item
