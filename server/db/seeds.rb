clothing = %w[tshirt hat dress shoes umbrella tie socks pants belt shirt]

Item.destroy_all
Product.destroy_all
Operator.destroy_all
Poste.destroy_all
Activity.destroy_all

Poste.categories.keys.each { |cat| Poste.create!(category: cat) }

5.times do
  product = Product.create(
    name: Faker::Job.unique.field
    )
  if product.persisted?
    rand(2..5).times do
      Item.create(
        name: clothing.sample
        )
    end
  end
end


Operator.create!([
  { first_name: "Hubert", last_name: "Bonisseur De La Bath" },
  { first_name: "Noël", last_name: "Flantier" },
  { first_name: "Jack", last_name: "Jefferson" },
  { first_name: "Von", last_name: "Zimmel" },
  { first_name: "Larmina", last_name: "Betouche" }
])

20.times do


end
