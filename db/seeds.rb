# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'DisasterDeclarationsSummaries.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Declaration.new
  t.disaster_number = row['disasterNumber']
  t.ih_declared = row['ihProgramDeclared']
  t.ia_declared = row['iaProgramDeclared']
  t.pa_declared = row['paProgramDeclared']
  t.hm_declared = row['hmProgramDeclared']
  t.state = row['state']
  t.declaration_date = row['declarationDate']
  t.fiscal_year = row['fyDeclared']
  t.disaster_type = row['disasterType']
  t.incident_type = row['incidentType']
  t.title = row['title']
  t.incident_begin_date = row['incidentBeginDate']
  t.incident_end_date = row['incidentEndDate']
  t.disaster_close_out_date = ['disasterCloseOutDate']
  t.county_area = ['declaredCountyArea']
  t.place_code = ['placeCode']
  t.hash_string = ['hash']
  t.last_refresh = ['lastRefresh']
  t.save
  puts "Declaration #{t.id}, #{t.state}, #{t.fiscal_year}, #{t.incident_type} has been saved"
end

puts "There are now #{Declaration.count} rows in the declarations table"