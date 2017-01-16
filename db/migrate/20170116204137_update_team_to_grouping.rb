class UpdateTeamToGrouping < ActiveRecord::Migration
  def change
    execute "UPDATE groups SET type = 'Group::Grouping', layer_group_id = parent_id WHERE type = 'Group::Team' and parent_id <> 1;"
    execute "UPDATE groups g SET g.layer_group_id = (select parent.layer_group_id from groups parent where parent.id = g.parent_id) where g.type = 'Group::Grouping';"
    execute "UPDATE groups g SET g.layer_group_id = (select parent.layer_group_id from groups parent where parent.id = g.parent_id) where g.type = 'Group::Grouping';"
    execute "UPDATE groups g SET g.layer_group_id = (select parent.layer_group_id from groups parent where parent.id = g.parent_id) where g.type = 'Group::Grouping';"
    execute "UPDATE groups g SET g.layer_group_id = (select parent.layer_group_id from groups parent where parent.id = g.parent_id) where g.type = 'Group::Grouping';"
  end
  
  def down
    execute "UPDATE groups SET type = 'Group::Team', layer_group_id = id WHERE type = 'Group::Grouping';"
  end
end
