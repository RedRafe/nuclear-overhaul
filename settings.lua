data:extend({
  {
    type = 'int-setting',
    name = 'update-interval',
    setting_type = 'runtime-global',
    default_value = 60,
    minimum_value = 1,
    maximum_value = 300
  },
  {
    type = 'int-setting',
    name = 'day-length',
    setting_type = 'runtime-global',
    default_value = 25000,
    minimum_value = 60,
    maximum_value = 150000
  }
})