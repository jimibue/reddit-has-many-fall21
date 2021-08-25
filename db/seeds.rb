require "faker"
Sub.destroy_all
Topic.destroy_all

10.times do
  x = Faker::Verb.simple_present
  y = Faker::Verb.ing_form
  z = Faker::Verb.base
  s = Sub.create(name: "#{x} #{y} #{z}")
  4.times do
    s.topics.create(name: Faker::Verb.simple_present, body: Faker::Quote.famous_last_words)
  end
end
puts "seeded #{Sub.all.size} Subs"
puts "first sub name: #{Sub.first.name}"
puts "seeded #{Topic.all.size} Topics"
puts "first topic name: #{Sub.first.topics.first.name}"