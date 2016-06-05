class AddIbanToPeople < ActiveRecord::Migration
  def change
    add_column(:people, :iban, :string)
  end

  def down
    remove_column(:people, :iban)
  end
end
