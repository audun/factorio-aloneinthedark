local d = require("defines")

local function setup()
   local surface = game.surfaces['nauvis']
   if(settings.startup[d.enable_setting].value) then
      surface.min_brightness = 0
      if(settings.startup[d.always_night_setting].value) then
         surface.daytime = 0.5 -- midnight
         surface.freeze_daytime = settings.startup[d.always_night_setting]
      else
         surface.freeze_daytime = false
      end
   else
      surface.min_brightness = global.initial_min_brightness
      surface.freeze_daytime = false
   end
end

local function init()
   global.initial_min_brightness = game.surfaces['nauvis'].min_brightness
   setup()
end

script.on_init(init)
script.on_configuration_changed(setup)
