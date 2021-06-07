class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string :title           ,null: false
      t.datetime :date          ,null: false
      t.string :place           ,null: false
      t.integer :prefecture_id  ,null: false
      t.integer :cost           ,null: false
      t.integer :recruitment    ,null: false
      t.datetime :deadline      ,null: false
      

      t.timestamps
    end
  end
end
