class CreateJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :joins do |t|
      t.references :team        ,foreign_key: true
      t.references :calendar    ,foreign_key: true
      t.timestamps
    end
  end
end
