class AddSolvDbIdToPerson < ActiveRecord::Migration[4.2]
  def change
    add_column(:people, :solv_db_id, :string)
  end

  def down
    remove_column(:people, :solv_db_id)
  end
end
