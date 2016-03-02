# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)






item_data.each_pair do |category_name, items|

  info = category_data[category_name]
  current_category = Category.create!({
    name: info[:name],
    img_url: info[:photo_url],

  })

  items.each do |item|
    Item.create!({
      t.string :name
      t.text :description
      t.string :image_url
      t.string :buy_url
    })
  end
end
