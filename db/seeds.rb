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

csv_text = File.read(Rails.root.join('db', 'whiskey.csv'))

csv = CSV.parse(csv_text, headers: true, :col_sep => ',', row_sep: :auto)

csv.map(&:to_hash)[0..1509].each do |row|
  Whiskey.create(
    name: row['Name'],
    meta_critic: row['Meta_Critic'].to_f,
    cost: row['Cost'],
    whiskey_class: row['Whiskey_Class'],
    country: row['Country'],
    whiskey_type: row['Whiskey_Type']
  )
end
