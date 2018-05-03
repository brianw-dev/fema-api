class CreateDeclarations < ActiveRecord::Migration[5.1]
  def change
    create_table :declarations do |t|
      t.integer :disaster_number
      t.boolean :ih_declared
      t.boolean :ia_declared
      t.boolean :pa_declared
      t.boolean :hm_declared
      t.string :state
      t.datetime :declaration_date
      t.integer :fiscal_year
      t.string :disaster_type
      t.string :incident_type
      t.string :title
      t.datetime :incident_begin_date
      t.datetime :incident_end_date
      t.datetime :disaster_close_out_date
      t.string :county_area
      t.integer :place_code
      t.string :hash_string
      t.string :last_refresh

      t.timestamps
    end
  end
end
