local uranium_landfill_item = {
  type = 'item',
  name = 'uranium-landfill',
  icon = '__base__/graphics/icons/landfill.png',
  icon_size = 64,
  icon_mipmaps = 4,
  subgroup = 'terrain',
  order = 'c[landfill]-a[uranium-landfill]',
  stack_size = 100,
  place_as_tile = {
    result = 'uranium-landfill',
    condition_size = 1,
    condition = {'ground-tile'}
  }
}

local uranium_landfill_recipe = {
  type = 'recipe',
  name = 'uranium-landfill',
  energy_required = 0.5,
  enabled = false,
  category = 'crafting',
  ingredients = {
    {'landfill', 10},
    {'uranium-235', 10}
  },
  result = 'uranium-landfill',
  result_count = 1
}

local uranium_landfill_tech = {
  type = 'technology',
  name = 'uranium-landfill',
  icon_size = 128,
  icon = '__base__/graphics/technology/landfill.png',
  prerequisites = {'landfill', 'logistic-science-pack', 'uranium-processing'},
  unit = {
    count = 200,
    ingredients = {
      {'automation-science-pack', 1},
      {'logistic-science-pack', 1},
      {'chemical-science-pack', 1},
      {'utility-science-pack', 1}
    },
    time = 30
  },
  effects = {
    {
      type = 'unlock-recipe',
      recipe = 'uranium-landfill'
    }
  },
  order = 'b-d'
}

local uranium_landfill_tile = util.table.deepcopy(data.raw['tile']['landfill'])

uranium_landfill_tile.name = 'uranium-landfill'
uranium_landfill_tile.tint = {r = 75, g = 227, b = 52}
uranium_landfill_tile.map_color = {r = 75, g = 227, b = 52}

data:extend {uranium_landfill_item, uranium_landfill_recipe, uranium_landfill_tech, uranium_landfill_tile}
