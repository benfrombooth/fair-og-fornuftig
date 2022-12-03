class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :status_id
      t.integer :identification_id
      t.integer :residency_id
      t.string :first_name
      t.string :last_name
      t.date :arrival_year
      t.string :nationality
      t.string :email
      t.integer :industry_id
      t.integer :anonymity_id
      t.integer :municipality_id
      t.boolean :integration_survey
      t.boolean :integration_result
      t.string :permanent_residency_survey
      t.boolean :permanent_residency_result
      t.integer :volunteer_team_id
      t.string :phone
      t.string :personal_story

      t.timestamps
    end
  end
end
