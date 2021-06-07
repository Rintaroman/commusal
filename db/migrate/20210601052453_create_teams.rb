class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :teamname,          null: false
      t.integer :level_id,         null: false
      t.text :comment,             null: false
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
