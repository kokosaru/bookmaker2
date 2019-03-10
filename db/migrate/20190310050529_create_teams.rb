class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
    	t.integer :match_id
    	t.integer :team_number
    	t.integer :pick_count, default: 0
    	t.string  :team_name
    	t.string  :team_image_id
      t.timestamps
    end
  end
end
