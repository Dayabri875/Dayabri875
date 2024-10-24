# frozen_string_literal: true

professions = [
  'Carpinteiro',
  'Marceneiro',
  'Professor de matemática',
  'Assistente administrativo',
  'Analista de sistemas'
]

professions.each do |name|
  Profession.create!(name:)
end

50.times do |i|
  params = { name: Faker::Name.name, birthday: rand(10.years).seconds.ago, identity: Faker::CPF.pretty }
  canditate = Candidate.create!(params)
  canditate.professions << Profession.all.sample
  canditate.professions << Profession.all.sample if (i % 2).even?
  canditate.save!
end

first = Contest.create!(organ: 'SEDU', edital: '9/2016', code: '61828450843')
first.professions << Profession.first
first.professions << Profession.second
first.save!

second = Contest.create!(organ: 'SEJUS', edital: '15/2017', code: '71224451942')
second.professions << Profession.first
second.professions << Profession.second
second.professions << Profession.third
second.save!

third = Contest.create!(organ: 'SEJUS', edital: '17/2017', code: '95655123539')
third.professions << Profession.all.sample
third.save!
