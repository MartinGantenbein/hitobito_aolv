class AddIbanToPeople < ActiveRecord::Migration[4.2]
  def change
    add_column(:people, :iban, :string)
  end

  def down
    remove_column(:people, :iban)
  end
end
