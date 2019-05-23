clothing = %w[tshirt hat dress shoes umbrella tie socks pants belt shirt]

puts "Destroying DB"
Activity.destroy_all
Poste.destroy_all
Operator.destroy_all
Product.destroy_all
Item.destroy_all

puts "Creating Poste"
Poste.categories.keys.each { |cat| Poste.create!(category: cat) }

puts "Creating Operators"
Operator.create!([
  { first_name: "Hubert", last_name: "Bonisseur De La Bath" },
  { first_name: "Noël", last_name: "Flantier" },
  { first_name: "Jack", last_name: "Jefferson" },
  { first_name: "Von", last_name: "Zimmel" },
  { first_name: "Larmina", last_name: "Betouche" }
])

puts "Creating Activities with products and items"
20.times do
  product = Product.create!(
    name: Faker::Job.unique.field
  )
  if product.persisted?
    rand(2..5).times do
      item = Item.create!(
        name: clothing.sample,
        product_id: product.id
      )
      activity = Activity.new(
        start_time: DateTime.current,
        end_time: 10.minutes.from_now(Time.now)
      )
      activity.item     = item
      activity.product  = product
      activity.operator = Operator.all.sample
      activity.poste    = Poste.all.sample
      activity.save!
    end
  end
end

puts "Number of postes: #{Poste.all.count}"
puts "Number of operators: #{Operator.all.count}"
puts "Number of items: #{Item.all.count}"
puts "Number of products: #{Product.all.count}"
puts "Number of activities: #{Activity.all.count}"
