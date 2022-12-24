local AnimNation = shared("AnimNation") ---@module AnimNation

return {
    -- #### Aim Down Sights Configuration
    Ads = {
        -- The speed at which the weapon will aim down sights in seconds.
        Speed = 0.135,

        -- The field of view of the player when aiming down sights.
        Fov = 60,
    },

    

    --[[
        #### Fire Mode Configuration

        To add a fire mode, insert a new table inside the FireModes table.
        
        The table should have the following format:
        ```lua
        ["Fire Mode Name"] = {
            ShotCount = 1,
            ShotBurst = 1,
            DelayBetweenShots = 0,
        },
        ```
        
        `ShotCount`: How many bullets are fired per shot.
        
        `ShotBurst`: How many bullets are fired per burst.
        
        `DelayBetweenShots`: The delay between each bullet fired.
    ]]
	FireModes = {
		["Semi"] = {
			ShotCount = 1,
            ShotBurst = 1,
			DelayBetweenShots = 0,
		},
		["Burst"] = {
			ShotCount = 1,
            ShotBurst = 3,
			DelayBetweenShots = 60 / 800,
		},
		["Full"] = {
			ShotCount = 1,
            ShotBurst = 1,
			DelayBetweenShots = 0,
		},
        ["Shotgun"] = {
            ShotCount = 8,
            ShotBurst = 1,
            DelayBetweenShots = 60 / 300,
        },
	},



    -- #### Speed Modifiers Configuration
    Speeds = {
        --This is a modifier applied to the `default movement speed` of the player.
        Movement = 0.97,

        -- This is a modifier applied to the `default jump height` of the player.
        Jump = 0.98,
    },



    -- #### Recoil Configuration
    Recoil = {
        --The amount of recoil applied to the weapon when firing.
        Amount = 0.5,

        -- The amount of time it takes to reset recoil after firing.
        Recovery = 0.5,

        -- The amount of spread added to the weapon when firing.
        Spread = Vector2.new(0.1, 0.1),
    },



    -- #### Callback Functions
    -- This function is called when the player fires the weapon.
    OnFire = function(self)
        if self.Model then
            local slideMotor: Motor6D = self:GetMotor6D("Slide")
            AnimNation.impulse(slideMotor, {t = 30, d = 0.7}, {C1 = CFrame.new(0, 0, 5)})
        end
    end,

    -- #### Callback Functions
    -- This function is called when the player reloads the weapon.
    OnReload = function(self)
        if self.Model then
            local slideMotor: Motor6D = self:GetMotor6D("Slide")
            AnimNation.impulse(slideMotor, {t = 30, d = 0.7}, {C1 = CFrame.new(0, 0, 5)})
        end
    end,

    -- #### Callback Functions
    -- This function is called when the player aims down sights.
    OnAdsEnter = function(self)
        if self.Model then
            local slideMotor: Motor6D = self:GetMotor6D("Slide")
            AnimNation.impulse(slideMotor, {t = 30, d = 0.7}, {C1 = CFrame.new(0, 0, 5)})
        end
    end,

    -- #### Callback Functions
    -- This function is called when the player exits aim down sights.
    OnAdsExit = function(self)
        if self.Model then
            local slideMotor: Motor6D = self:GetMotor6D("Slide")
            AnimNation.impulse(slideMotor, {t = 30, d = 0.7}, {C1 = CFrame.new(0, 0, 5)})
        end
    end,

    -- #### Callback Functions
    -- This function is called when the player equips the weapon.
    OnEquip = function(self)
        if self.Model then
            local slideMotor: Motor6D = self:GetMotor6D("Slide")
            AnimNation.impulse(slideMotor, {t = 30, d = 0.7}, {C1 = CFrame.new(0, 0, 5)})
        end
    end,

    -- #### Callback Functions
    -- This function is called when the player unequips the weapon.
    OnUnequip = function(self)
        if self.Model then
            local slideMotor: Motor6D = self:GetMotor6D("Slide")
            AnimNation.impulse(slideMotor, {t = 30, d = 0.7}, {C1 = CFrame.new(0, 0, 5)})
        end
    end,
}
