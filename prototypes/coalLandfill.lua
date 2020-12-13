local coal_landfill_item = {
  type = 'item',
  name = 'coal-landfill',
  icon = '__base__/graphics/icons/landfill.png',
  icon_size = 64,
  icon_mipmaps = 4,
  subgroup = 'terrain',
  order = 'c[landfill]-a[coal-landfill]',
  stack_size = 100,
  place_as_tile = {
    result = 'coal-landfill',
    condition_size = 1,
    condition = {'ground-tile'}
  }
}

local coal_landfill_recipe = {
  type = 'recipe',
  name = 'coal-landfill',
  energy_required = 0.5,
  enabled = false,
  category = 'crafting',
  ingredients = {
    {'coal', 20},
    {'stone', 5}
  },
  result = 'coal-landfill',
  result_count = 1
}

local coal_landfill_tech = {
  type = 'technology',
  name = 'coal-landfill',
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
      recipe = 'coal-landfill'
    }
  },
  order = 'b-d'
}

local coal_landfill_tile = util.table.deepcopy(data.raw['tile']['landfill'])

coal_landfill_tile.name = 'coal-landfill'
coal_landfill_tile.tint = {r = 0, g = 0, b = 0}
coal_landfill_tile.map_color = {r = 0, g = 0, b = 0}

data:extend {coal_landfill_item, coal_landfill_recipe, coal_landfill_tech, coal_landfill_tile}
