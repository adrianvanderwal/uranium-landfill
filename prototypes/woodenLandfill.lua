local wooden_landfill_item = {
  type = 'item',
  name = 'wooden-landfill',
  icon = '__base__/graphics/icons/landfill.png',
  icon_size = 64,
  icon_mipmaps = 4,
  subgroup = 'terrain',
  order = 'c[landfill]-a[wooden-landfill]',
  stack_size = 100,
  place_as_tile = {
    result = 'wooden-landfill',
    condition_size = 1,
    condition = {'ground-tile'}
  }
}

local wooden_landfill_recipe = {
  type = 'recipe',
  name = 'wooden-landfill',
  energy_required = 0.5,
  enabled = false,
  category = 'crafting',
  ingredients = {
    'wood',
    20
  },
  result = 'wooden-landfill',
  result_count = 1
}

local wooden_landfill_tech = {
  type = 'technology',
  name = 'wooden-landfill',
  icon_size = 128,
  icon = '__base__/graphics/technology/landfill.png',
  prerequisites = {'landfill', 'logistic-science-pack'},
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
      recipe = 'wooden-landfill'
    }
  },
  order = 'b-d'
}

local wooden_landfill_tile = util.table.deepcopy(data.raw['tile']['landfill'])

wooden_landfill_tile.name = 'wooden-landfill'
wooden_landfill_tile.tint = {r = 235, g = 225, b = 52}
wooden_landfill_tile.map_color = {r = 235, g = 225, b = 52}

data:extend {wooden_landfill_item, wooden_landfill_recipe, wooden_landfill_tech, wooden_landfill_tile}
