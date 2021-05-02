def spicy_food(spice_array, price_array)
  spicey_price = []
  boring_price = []
  spice_array.each_with_index do |spice, i|
    case spice
    when 'S'
      spicey_price << price_array[i].to_f
    when 'N'
      price = price_array[i] / 2.to_f
      spicey_price << price
      boring_price << price
    end
  end

  [spicey_price.sum, boring_price.sum]
end
