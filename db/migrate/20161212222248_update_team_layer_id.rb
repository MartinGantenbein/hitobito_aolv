class UpdateTeamLayerId < ActiveRecord::Migration
  def change
    execute "UPDATE groups SET layer_group_id = id WHERE type = 'Group::Team';"
  end
  
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
