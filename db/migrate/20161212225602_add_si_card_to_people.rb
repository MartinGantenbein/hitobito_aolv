class AddSiCardToPeople < ActiveRecord::Migration
  def change
    add_column(:people, :sicard, :integer, :limit => 12)
  end

  def down
    remove_column(:people, :sicard)
  end
end
