class AddSiCardToPeople < ActiveRecord::Migration[4.2]
  def change
    add_column(:people, :sicard, :bigint)
  end

  def down
    remove_column(:people, :sicard)
  end
end
