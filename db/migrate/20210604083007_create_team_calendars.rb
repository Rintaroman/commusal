class CreateTeamCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :team_calendars do |t|
      t.references :team, foreign_key: true
      t.references :calendar, foreign_key: true
      t.timestamps
    end
  end
end
