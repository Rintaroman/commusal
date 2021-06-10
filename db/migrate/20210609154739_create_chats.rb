class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.text :message         ,null: false
      t.references :team      ,foreign_key: true
      t.references :calendar  ,foreign_key: true
      t.timestamps
    end
  end
end
