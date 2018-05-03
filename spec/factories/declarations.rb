FactoryBot.define do
  factory :declaration do
    disaster_number { Faker::Number.between(1, 4363) }
    ih_declared true
    ia_declared true
    pa_declared true
    hm_declared true
    state { Faker::Address.state_abbr }
    declaration_date { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    fiscal_year { Faker::Number.between(1950, 2018) }
    disaster_type { ["DR","FS","EM"].sample }
    incident_type { ["Tornado","Flood","Hurricane","Volcano","Other"].sample }
    title { Faker::Lorem.word }
    incident_begin_date { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    incident_end_date { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    disaster_close_out_date { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    county_area nil
    place_code nil
    hash_string { Faker::Lorem.word }
    last_refresh { Faker::Lorem.word }
  end
end