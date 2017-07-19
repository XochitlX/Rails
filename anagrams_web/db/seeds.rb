# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def canonical_maker(word)
  word.downcase.chars.sort.join
end

File.open("words").each do |line|
  line.each_line do |word|
    canonical = canonical_maker(word.chomp)
    Word.create!(word: word.chomp, canonical: canonical)
  end
end
