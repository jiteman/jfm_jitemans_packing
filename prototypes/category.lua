data:extend(
{
  {
    type = "recipe-category",
    name = name_prefix .. "-recipes"
  },
  {
    type = "recipe-category",
    name = name_prefix .. "-items"
  },
  {
    type = "item-subgroup",
    name = name_prefix .. "-items",
    group = "production",
    order = "s-u"
  },
  {
    type = "recipe-category",
    name = name_prefix .. "-packing"
  },
  {
    type = "recipe-category",
    name = name_prefix .. "-unpacking"
  },
  {
    type = "item-subgroup",
    name = name_prefix .. "-packing",
    group = "intermediate-products",
    order = "s-u"
  },
  {
    type = "item-subgroup",
    name = name_prefix .. "-unpacking",
    group = "intermediate-products",
    order = "s-u"
  },
}
)

