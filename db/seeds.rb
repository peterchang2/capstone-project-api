# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

# csv_text = File.read(Rails.root.join('db', 'whiskey.csv'))
# csv = CSV.parse(csv_text, headers: true, :col_sep => ',', row_sep: :auto)
# csv.map(&:to_hash)[0..1509].each do |row|
#   whiskeys = {
#     name: row['Name'].to_s,
#     meta_critic: row['Meta Critic'].to_f,
#     cost: row['Cost'].to_s,
#     class: row['Class'].to_s,
#     country: row['Country'].to_s,
#     whiskey_type: row['Whiskey Type'].to_s
#   }
#
#   Whiskey.create!(whiskeys)
  # p whiskeys

# csv_text = File.read('whiskey.csv')
# csv = CSV.parse(csv_text, :headers => true)
# csv.each do |row|
#   Whiskey.create!(row.to_hash)

CSV.foreach('whiskey.csv', :headers => true) do |row|
  Whiskey.create!(row.to_hash)

end
