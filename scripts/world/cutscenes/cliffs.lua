return {
    sign1 = function(cutscene, event)
        if not Mod:incoherent(cutscene) then
			cutscene:text("* You have reached the point of no return.")
			cutscene:text("* Pray to any gods you may have.")
		end
    end,
	
    walk1 = function(cutscene, event)
        Game:setFlag("walk1_active", true)
		Game.world:getEvent(13):walkToSpeed("fmarcy_walkto", 8)
    end,
	
    walk2 = function(cutscene, event)
        Game:setFlag("walk2_active", true)
		Game.world:getEvent(7):walkToSpeed("fnoelle_walkto", 8)
    end,
	
    bg_convo = function(cutscene, event)
		local texts = {}
        local function genText(text, x, y, actor, scale, main, wait_time)
            scale = scale or 1
            wait_time = wait_time or 0.2

            local text_o = Game.world:spawnObject(DialogueText(text, x, y, 300, 500))
            text_o.skippable = false
            text_o:setScale(scale)
            text_o.parallax_x = 0
            text_o.parallax_y = 0
			text_o.alpha = 0
			text_o:setLayer(9999)
			text_o:addFX(OutlineFX(COLORS.black, {
				thickness = 2,
				amount = 4
			}))
            table.insert(texts, text_o)

            cutscene:wait(wait_time)
			Game.world.timer:tween(1, text_o, { x = x + 15, alpha = 1 }, "linear", function()
				Game.world.timer:after(2.5, function()
					
					Game.world.timer:tween(1, text_o, {alpha = 0 }, "linear", function()
					end)
				end)
			end)

            return text_o
        end
		
        Game:setFlag("bg_convo", true)
		cutscene:enableMovement()
		
		genText("So, you saw them too, right?", 50, 50, "fmarcy")	-- Marcy
		cutscene:wait(5)
		genText("The outsiders? Y-yeah, I saw them...", 300, 50, "fnoelle")	-- Noelle
		cutscene:wait(5)
		genText("But they seem... familiar, somehow.", 300, 50, "fnoelle")	-- Noelle
		cutscene:wait(5)
		genText("Agreed. So what do we do?", 50, 50, "fmarcy")	-- Marcy
		cutscene:wait(5)
		
		if Game:getFlag("future_variable") == "ceroba_dw" then
			genText("Can't we just leave them be?", 175, 50)	-- Kanako
			cutscene:wait(5)
			genText("Negative. Remember what happened last time.", 50, 50, "fmarcy")	-- Marcy
			cutscene:wait(5)
		end
		genText("Maybe we could wait to see what happens?", 300, 50)	-- Noelle
		cutscene:wait(5)
		genText("We don't know if they're malicious.", 300, 50, "fnoelle")	-- Noelle
		cutscene:wait(5)
		genText("...Probably for the best to do that.", 50, 50, "fmarcy")	-- Marcy
		cutscene:wait(5)
    end,
	
    monster	= function(cutscene, event)
		local texts = {}
        local function genText(text, x, y, actor, scale, main, wait_time)
            scale = scale or 1
            wait_time = wait_time or 0.2

            local text_o = Game.world:spawnObject(DialogueText(text, x, y, 300, 500))
            text_o.skippable = false
            text_o:setScale(scale)
            text_o.parallax_x = 0
            text_o.parallax_y = 0
			text_o.alpha = 0
			text_o:setLayer(9999)
			text_o:addFX(OutlineFX(COLORS.black, {
				thickness = 2,
				amount = 4
			}))
            table.insert(texts, text_o)

            -- cutscene:wait(wait_time)
			Game.world.timer:tween(1, text_o, { x = x + 15, alpha = 1 }, "linear", function()
				Game.world.timer:after(2.5, function()
					
					Game.world.timer:tween(1, text_o, {alpha = 0 }, "linear", function()
					end)
				end)
			end)

            return text_o
        end
		
        local jamm = cutscene:getCharacter("jamm")
		local susie = cutscene:getCharacter("susie")
		local variant = cutscene:getCharacter(Game:getFlag("future_variable"))
		
		cutscene:detachFollowers()
		cutscene:detachCamera()
		
		cutscene:panTo(680, 960, 1)
		cutscene:walkTo(susie, "susie_walkto", 1)
        cutscene:walkTo(jamm, "jamm_walkto", 1)
        cutscene:wait(cutscene:walkTo(variant, "variant_walkto", 1))
		
		cutscene:showNametag("Jamm")
		cutscene:text("* Guys,[wait:5] I'm getting a very bad feeling about this place.", "nervous", "jamm")
		cutscene:look(susie, "down")
		cutscene:showNametag("Susie")
		cutscene:text("* Me too.[wait:10] Like,[wait:5] god damn it,[wait:5] Jamm,[wait:5] where the hell are we!?", "annoyed", "susie")
		cutscene:look(jamm, "up")
		cutscene:showNametag("Jamm")
		cutscene:text("* It's not my fault![wait:10]\n* That rift sucked me in too!", "determined", "jamm")
		cutscene:showNametag("Susie")
		cutscene:text("* You were the one who touched it in the first place!", "angry", "susie")
		cutscene:showNametag("Jamm")
		cutscene:text("* Oh,[wait:5] don't act like you wouldn't have--", "furious", "jamm", {auto=true, skip=false})
		cutscene:look(susie, "left")
		cutscene:look(jamm, "left")
		if Game:getFlag("future_variable") == "ceroba_dw" then
			cutscene:showNametag("Ceroba")
			cutscene:text("* Is this really worth fighting over right now?", "default", "ceroba")
		end
		cutscene:showNametag("Susie")
		cutscene:text("* ...Yeah.[wait:5] You're right, " .. Game.party[3].name .. ".", "shy_down", "susie")
		cutscene:showNametag("Jamm")
		cutscene:text("* Yeah,[wait:5] sorry.[wait:10] I'm just...[wait:10] really stressed right now.", "shaded_frown", "jamm")
		cutscene:text("* Let's just keep going,[wait:5] alright?", "neutral", "jamm")
		cutscene:text("* If there was a way here,[wait:5] there should be a way home too.", "side_smile", "jamm")
		cutscene:look(susie, "down")
		cutscene:look(jamm, "up")
		cutscene:showNametag("Susie")
		cutscene:text("* ...Hey,[wait:5] yeah![wait:10] You're right![wait:10] There has to be one!", "surprise_smile", "susie")
		cutscene:hideNametag()
		cutscene:look(susie, "right")
		cutscene:look(jamm, "right")
        for i = 0,5 do
            cutscene:playSound("impact", (1 - (i/10)) ^ (4) )
            cutscene:wait(0.2)
        end
		cutscene:wait(1)
		if Game:getFlag("future_variable") == "ceroba_dw" then
			cutscene:showNametag("Ceroba")
			cutscene:text("* ...What was that?", "nervous", "ceroba")
		end
		cutscene:hideNametag()
		local alpha = cutscene:spawnNPC("slitherer", 1050, 960)
        for i = 0,4 do
			if i == 2 then
				susie:setSprite("shock_right")
				cutscene:shakeCharacter(susie, 2)
				Assets.playSound("sussurprise")
				cutscene:walkToSpeed(jamm, jamm.x - 40, jamm.y, 4, "right", true)
			end
            cutscene:wait(cutscene:slideTo(alpha, alpha.x - 30, alpha.y, 1, "in-out-cubic"))
        end
		cutscene:showNametag("Susie")
		cutscene:text("* The hell is THAT thing!?", "surprise_frown", "susie")
		cutscene:showNametag("Jamm")
		cutscene:text("* I don't know,[wait:5] but I don't think we can reason with it.", "determined", "jamm")
		cutscene:setAnimation(jamm, "battle/idle")
		cutscene:text("* Let's show it hell,[wait:5] guys!", "sling_ready", "jamm")
		cutscene:hideNametag()
		cutscene:setAnimation(susie, "battle/attack")
		Assets.playSound("laz_c")
		cutscene:wait(0.6)
		cutscene:setAnimation(susie, "battle/idle")
		cutscene:setAnimation(variant, "battle/idle")
		cutscene:showNametag("Susie")
		cutscene:text("* That,[wait:5] I can get behind!", "teeth_smile", "susie")
		cutscene:hideNametag()
		cutscene:startEncounter("slitherer_intro", true, alpha)
		cutscene:wait(0.2)
		Assets.playSound("hurt")
		susie:setSprite("battle/idle_serious_1")
		cutscene:shakeCharacter(susie, 2)
		cutscene:wait(0.2)
		jamm:setSprite("landed_2")
		cutscene:shakeCharacter(jamm, 1)
		Assets.playSound("noise")
		genText("Are they already down...?", 50, 50, "fmarcy")	-- Marcy
		cutscene:wait(0.3)
		variant:setSprite("battle/defeat")
		cutscene:shakeCharacter(variant, 1)
		Assets.playSound("noise")
		cutscene:wait(0.2)
		susie:setSprite("battle/defeat")
		cutscene:shakeCharacter(susie, 1)
		Assets.playSound("noise")
		cutscene:wait(0.7)
		cutscene:showNametag("Susie")
		cutscene:text("* What did we just fight...?", "surprise_frown", "susie")
		cutscene:showNametag("Jamm")
		cutscene:text("* I know,[wait:5] right!?[wait:10]\n* Talk about a welcome party...", "nervous", "jamm")
		genText("They're not very strong, are they?", 300, 50, "fnoelle")	-- Noelle
		cutscene:showNametag("Susie")
		cutscene:text("* ...", "shy_down", "susie")
		cutscene:hideNametag()
		genText("Wait, don't interfere w--", 50, 50, "fmarcy")	-- Marcy
		cutscene:wait(0.8)
		cutscene:healEffect(susie)
		cutscene:healEffect(jamm)
		cutscene:healEffect(variant)
		cutscene:wait(1)
		cutscene:resetSprite(variant)
		Assets.playSound("noise")
		cutscene:wait(0.5)
		cutscene:resetSprite(jamm)
		Assets.playSound("noise")
		cutscene:wait(0.5)
		cutscene:resetSprite(susie)
		Assets.playSound("noise")
		cutscene:wait(0.5)
		cutscene:showNametag("Susie")
		cutscene:text("* Uh...", "nervous", "susie")
		genText("Why did you do that!?", 50, 50, "fmarcy")	-- Marcy
		cutscene:look(jamm, "left")
		cutscene:look(susie, "left")
		cutscene:showNametag("Jamm")
		cutscene:text("* What just healed us...?", "nervous_left", "jamm")
		if Game:getFlag("future_variable") == "ceroba_dw" then
			cutscene:showNametag("Ceroba")
			cutscene:text("* I have no idea...", "nervous", "ceroba")
		end
		genText("We don't need them to die!", 300, 50, "fnoelle")	-- Noelle
		cutscene:look(jamm, "up")
		cutscene:showNametag("Jamm")
		cutscene:text("* ...I guess it's not that important,[wait:5] right?", "nervous_left", "jamm")
		cutscene:text("* Whatever it is helped us in the end.", "nervous_left", "jamm")
		genText("We're lucky the dumbfaced one bailed us out.", 50, 50, "fmarcy")	-- Marcy
		if Game:getFlag("future_variable") == "ceroba_dw" then
			cutscene:showNametag("Ceroba")
			cutscene:text("* I don't feel confident about this,[wait:5] Jamm...", "neutral", "ceroba")
			cutscene:text("* What if it's trying to lure us in?", "suspicious", "ceroba")
		end
		cutscene:showNametag("Susie")
		cutscene:text("* Well,[wait:5] so what if it feels wrong?", "smile", "susie")
		cutscene:setSprite(susie, "pose")
		cutscene:text("* If it attacks,[wait:5] we know what to do.", "closed_grin", "susie")
		genText("...How cocky.", 50, 50, "fmarcy")	-- Marcy
		cutscene:setSprite(jamm, "bt")
		cutscene:showNametag("Jamm")
		cutscene:text("* Yeah,[wait:5] we do!", "smug", "jamm")
		cutscene:hideNametag()
		cutscene:look(susie, "right")
		cutscene:resetSprites()
		cutscene:interpolateFollowers()
		cutscene:attachFollowersImmediate()
		cutscene:attachCamera(1)
		cutscene:showNametag("Jamm")
		cutscene:text("* You know...[wait:10] That's just a regular enemy,[wait:5] right?", "neutral", "jamm")
		cutscene:text("* If we absolutely HAD to fight...[wait:10] DarkSling would take effect.", "look_left", "jamm")
		genText("DarkSling...? That's familiar...", 50, 50, "fmarcy")	-- Marcy
		cutscene:showNametag("Susie")
		cutscene:text("* Maybe we should try to [color:yellow]avoid these enemies[color:white]...", "neutral", "susie")
		cutscene:hideNametag()
    end,
	
    sign2 = function(cutscene, event)
		cutscene:text("* Inside this chest contains [color:yellow]ARMOR[color:white].")
		cutscene:text("* It can help you withstand the daily horrors.")
		cutscene:text("* (Signed, The Resistance)")
		cutscene:showNametag("Jamm")
		cutscene:text("* Guys, I have a feeling we'll be needing this armor.", "nervous", "jamm")
		cutscene:text("* Maybe we should equip it on one of us?", "nervous_left", "jamm")
		cutscene:showNametag("Susie")
		cutscene:text("* Let's see...", "nervous", "susie")
		cutscene:hideNametag()
    end,
	
    chase_start	= function(cutscene, event)
		local texts = {}
        local function genText(text, x, y, actor, scale, main, wait_time)
            scale = scale or 1
            wait_time = wait_time or 0.2

            local text_o = Game.world:spawnObject(DialogueText(text, x, y, 300, 500))
            text_o.skippable = false
            text_o:setScale(scale)
            text_o.parallax_x = 0
            text_o.parallax_y = 0
			text_o.alpha = 0
			text_o:setLayer(9999)
			text_o:addFX(OutlineFX(COLORS.black, {
				thickness = 2,
				amount = 4
			}))
            table.insert(texts, text_o)

            -- cutscene:wait(wait_time)
			Game.world.timer:tween(1, text_o, { x = x + 15, alpha = 1 }, "linear", function()
				Game.world.timer:after(2.5, function()
					
					Game.world.timer:tween(1, text_o, {alpha = 0 }, "linear", function()
					end)
				end)
			end)

            return text_o
        end
		
		local function createParticle(x, y)
			local sprite = Sprite("effects/icespell/snowflake", x, y)
			sprite:setOrigin(0.5, 0.5)
			sprite:setScale(1.5)
			sprite.layer = WORLD_LAYERS["above_events"]
			Game.world:addChild(sprite)
			return sprite
		end
		
        local jamm = cutscene:getCharacter("jamm")
		local susie = cutscene:getCharacter("susie")
		local variant = cutscene:getCharacter(Game:getFlag("future_variable"))
		
		cutscene:detachFollowers()
		cutscene:detachCamera()
		
		cutscene:panTo(780, 500, 1)
		cutscene:walkTo(susie, "susie_walkto", 1)
        cutscene:walkTo(jamm, "jamm_walkto", 1)
        cutscene:wait(cutscene:walkTo(variant, "variant_walkto", 1))
		
		cutscene:showNametag("Susie")
		cutscene:text("* I think I might have some idea about where we are...", "neutral", "susie")
		cutscene:look(susie, "down")
		cutscene:look(jamm, "up")
		cutscene:showNametag("Jamm")
		cutscene:text("* ...Go on.", "neutral", "jamm")
		genText("...This is taking too long.", 50, 50, "fmarcy")	-- Marcy
		cutscene:showNametag("Susie")
		cutscene:text("* With the different language on the signs and the cliffs...", "neutral_side", "susie")
		cutscene:text("* We might be in some kind of a different universe.", "neutral", "susie")
		genText("I think we should take them prisoner.", 50, 50, "fmarcy")	-- Marcy
		cutscene:showNametag("Jamm")
		cutscene:text("* Like an AU or something?", "neutral", "jamm")
		cutscene:showNametag("Susie")
		cutscene:text("* The hell is an AU?", "neutral", "susie")
		if Game:getFlag("future_variable") == "ceroba_dw" then
			genText("And interrogate them at the base or something?", 175, 50)	-- Kanako
		end
		cutscene:showNametag("Jamm")
		cutscene:text("* It means \"Alternate Universe\".", "look_left", "jamm")
		cutscene:text("* It's an alternate version of a world,[wait:5] with some change.", "neutral", "jamm")
		cutscene:text("* Swapped roles,[wait:5] everyone is evil,[wait:5] extra people...", "neutral", "jamm")
		genText("Yeah, that's what I'm thinking now.", 50, 50, "fmarcy")	-- Marcy
		cutscene:text("* There might even be one where the Roaring is real.[react:1]", "side_smile", "jamm", {reactions={
			{"Or one where\nAnia is alive...", 352, 61, "worried", "jamm"}
		}})
		cutscene:showNametag("Susie")
		cutscene:text("* Dude,[wait:5] really???[wait:10]\n* I'd want to go to that one!", "surprise_smile", "susie")
		genText("...If you think it's best, then...", 300, 50, "fnoelle")	-- Noelle
		cutscene:text("* But,[wait:5] uh...[wait:10]\n* Something like that.", "nervous", "susie")
		cutscene:look(susie, "left")
		cutscene:look(jamm, "left")
		if Game:getFlag("future_variable") == "ceroba_dw" then
			cutscene:showNametag("Ceroba")
			cutscene:text("* ...It's the best we've got.", "default", "ceroba")
			cutscene:text("* So then how would we get home?", "default", "ceroba")
		end
		cutscene:setAnimation(susie, {"away_scratch", 1/3, true})
		cutscene:showNametag("Susie")
		cutscene:text("* Yeah,[wait:5] I'm still working on--", "nervous_side", "susie", {auto=true})
		cutscene:hideNametag()
		local particles = {}
		Game.world.music:stop()
		cutscene:wait(1/30)
		Assets.playSound("icespell")
        particles[1] = createParticle(755, 480)
        cutscene:wait(3/30)
		cutscene:setSprite(susie, "shock_left")
		cutscene:setSprite(jamm, "trip")
		jamm.flip_x = true
		if Game:getFlag("future_variable") == "ceroba_dw" then
			cutscene:setSprite(variant, "fall")
			variant.flip_x = true
		end
		cutscene:slideTo(susie, susie.x + 40, susie.y, 0.2)
		cutscene:slideTo(jamm, jamm.x + 40, jamm.y, 0.2)
		cutscene:slideTo(variant, variant.x - 40, variant.y, 0.2)
        particles[2] = createParticle(805, 480)
        cutscene:wait(3/30)
        particles[3] = createParticle(780, 520)
        cutscene:wait(3/30)
        Game.world:addChild(IceSpellBurst(780, 500))
        for _,particle in ipairs(particles) do
            for i = 0, 5 do
                local effect = IceSpellEffect(particle.x, particle.y)
                effect:setScale(0.75)
                effect.physics.direction = math.rad(60 * i)
                effect.physics.speed = 8
                effect.physics.friction = 0.2
                effect.layer = WORLD_LAYERS["above_events"] - 1
                Game.world:addChild(effect)
            end
        end
        cutscene:wait(1/30)
        for _,particle in ipairs(particles) do
            particle:remove()
        end
        cutscene:wait(1)
		cutscene:showNametag("Jamm")
		cutscene:text("* Wh-what was that!?", "speechless", "jamm")
		cutscene:hideNametag()
		cutscene:look(susie, "up")
		cutscene:resetSprite(susie)
		susie:alert()
		cutscene:wait(1)
		cutscene:setAnimation(susie, {"point_up", 1/3, true})
		Game.world.music:play("creepychase")
		cutscene:showNametag("Susie")
		cutscene:text("* HEY!", "angry", "susie")
		jamm.flip_x = false
		cutscene:look(jamm, "up")
		cutscene:resetSprite(jamm)
		variant.flip_x = false
		cutscene:look(variant, "up")
		cutscene:resetSprite(variant)
		cutscene:hideNametag()
		cutscene:panTo(780, 140, 1)
		cutscene:wait(1)
		cutscene:showNametag("???", {top=false})
		cutscene:text("* Shit,[wait:5] they spotted us!", nil, "fmarcy", {top=false})
		local fmarcy = cutscene:getCharacter("fmarcy")
		cutscene:walkToSpeed(fmarcy, 1160, fmarcy.y, 12)
		cutscene:text("* Hey,[wait:5] don't run off without me!", nil, "fmarcy", {top=false})
		cutscene:resetSprite(susie)
		cutscene:hideNametag()
		cutscene:panTo(780, 500, 1)
		cutscene:wait(1)
		cutscene:look(susie, "down")
		cutscene:showNametag("Jamm")
		cutscene:text("* C'mon, after them!", "determined", "jamm")
		jamm:walkToSpeed(1160, jamm.y, 12)
		variant:walkToSpeed(1160, variant.y, 12)
		cutscene:hideNametag()
    end,
	
    no_return_1	= function(cutscene, event)
		cutscene:showNametag("Susie")
		cutscene:text("* I can't go back now.", "nervous", "susie")
		cutscene:hideNametag()
		local susie = cutscene:getCharacter("susie")
		cutscene:wait(cutscene:walkToSpeed(susie, susie.x + 40, susie.y, 8))
    end,
	
	jamm_jump = function(cutscene)
		local jamm = cutscene:getCharacter("jamm")
		Assets.playSound("jump")
		Game:setFlag("future_jamm_jump", true)
		jamm:jumpTo(580, 380, 20, 0.5, "ball", "landed_2")
		Game.world.timer:after(0.5, function()
			jamm:shake(2)
		end)
		Game.world.timer:after(0.7, function()
			jamm:walkToSpeed(580, 600, 8)
		end)
	end
}
