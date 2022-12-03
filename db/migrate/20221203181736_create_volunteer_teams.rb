class CreateVolunteerTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteer_teams do |t|
      t.string :team_name
      t.integer :team_lead_id

      t.timestamps
    end
  end
end
