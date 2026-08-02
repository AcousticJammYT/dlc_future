local actor, super = Class(Actor, "fnoelle")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Future Noelle"

    -- Width and height for this actor, used to determine its center
    self.width = 25
    self.height = 50

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = {5, 44, 14, 8}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = {0, 1, 1}

    -- Path to this actor's sprites (defaults to "")
    self.path = "party/future_noelle/dark"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "walk"

    -- Sound to play when this actor speaks (optional)
    self.voice = "noelle" -- Temporary
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = "face/fnoelle"
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = {-19, -3}

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false

    -- Table of sprite animations
    self.animations = {
        ["enemy/idle"]        = {"battle_enemy/idle", 1 / 6, true},
        ["hurt"]              = {"battle_enemy/hurt", 1, true},
        ["defeat"]            = {"battle_enemy/defeat", 1, true},
        ["enemy/transition"]  = {"battle_enemy/intro", 1 / 15, false},
        ["enemy/spell_ready"] = {"battle_enemy/spellready", 1, true},
        ["enemy/spell"]       = {"battle_enemy/spell", 1 / 15, false, next = "enemy/idle"},
    }

    -- Table of sprite offsets (indexed by sprite name)
    self.offsets = {
        -- Movement offsets
        ["walk/left"] = {0, 0},
        ["walk/right"] = {0, 0},
        ["walk/up"] = {0, 0},
        ["walk/down"] = {0, 0},

        ["battle_enemy/intro"] = {-1, -5},
        ["battle_enemy/spell"] = {-6, 2},
        ["battle_enemy/spellready"] = {0, 2},
        ["battle_enemy/defeat"] = {0, 2},
    }

    -- self.menu_anim = "bs_win"		-- TODO
end

return actor