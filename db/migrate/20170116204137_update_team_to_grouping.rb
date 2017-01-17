class UpdateTeamToGrouping < ActiveRecord::Migration
  def change
    execute "UPDATE groups g SET g.type = 'Group::Grouping', layer_group_id = g.parent_id WHERE g.type = 'Group::Team' and g.id not in (19, 21);"
    execute "UPDATE groups g join groups parent on (g.parent_id = parent.id and g.type = parent.type) set g.layer_group_id = parent.layer_group_id where g.type = 'Group::Grouping';"
  end
  
  def down
    execute "UPDATE groups SET type = 'Group::Team', layer_group_id = id WHERE type = 'Group::Grouping';"
  end
end
