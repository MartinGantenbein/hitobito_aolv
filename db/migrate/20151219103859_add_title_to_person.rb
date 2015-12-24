class AddTitleToPerson < ActiveRecord::Migration
  def change
    add_column(:people, :title, :string)
  end

  def down
    remove_column(:people, :title)
  end
end
