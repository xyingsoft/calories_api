# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


if Food.count == 0
  path = File.join(File.dirname(__FILE__), "./seeds/foods.json")
  records = JSON.parse(File.read(path))
  records.each do |record|
    record[:id] = nil
    food = Food.create!(record)
  end

  puts "Foods are seeded"
end
