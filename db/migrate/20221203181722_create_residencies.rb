class CreateResidencies < ActiveRecord::Migration[6.0]
  def change
    create_table :residencies do |t|
      t.string :residency_type
      t.string :residency_status

      t.timestamps
    end
  end
end
