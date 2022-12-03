class CreateIntegrationCriteria < ActiveRecord::Migration[6.0]
  def change
    create_table :integration_criteria do |t|
      t.boolean :deposit_requirement
      t.boolean :visit_requirement
      t.boolean :pr_requirement
      t.boolean :housing_requirement
      t.boolean :language_dane_requirement
      t.string :language_foreigner_requirement
      t.boolean :education_requirement
      t.boolean :work_dane_requirement
      t.boolean :work_foreigner_requirement
      t.integer :user_id

      t.timestamps
    end
  end
end
