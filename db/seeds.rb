class Seed

  def self.begin
    seed = Seed.new
    seed.generate_state_parks
    seed.generate_national_parks
  end

  def generate_state_parks
    20.times do |i|
      park = Park.create!(
        name: Faker::Company.name,
        state: Faker::Team.state,
        acres: Faker::Number.between(1, 8323250),
        ownership: 'State'
      )
      puts "Park #{i}: #{park.name} is a '#{park.ownership}' park, and resides in '#{park.state}'."
    end
  end

  def generate_national_parks
    20.times do |i|
      park = Park.create!(
        name: Faker::Company.name,
        state: Faker::Team.state,
        acres: Faker::Number.between(1, 8323250),
        ownership: 'National'
      )
      puts "Park #{i}: #{park.name} is a '#{park.ownership}' park, and resides in '#{park.state}'."
    end
  end
end

Seed.begin
