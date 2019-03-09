local d = require("defines")
data:extend({
      {
         type = "bool-setting",
         name = d.always_night_setting,
         setting_type = "startup",
         default_value = true,
      },
      {
         type = "bool-setting",
         name = d.enable_setting,
         setting_type = "startup",
         default_value = true,
      },
})

