class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.references :user
      t.json :score_config, null: false

      t.timestamps
    end
  end
end
