class StructuredAddress < ActiveRecord::Migration[6.1]
  def change
    execute "UPDATE people
                SET street =  case when SUBSTRING_INDEX(address, ' ', -1) = address
                                   then trim(address)
                                   else trim(SUBSTRING(address, 1, LENGTH(address) - LENGTH(SUBSTRING_INDEX(address, ' ', -1)) - 1))
                                    end,
                housenumber = case when SUBSTRING_INDEX(address, ' ', -1) = address
                                   then null
                                   else trim(SUBSTRING_INDEX(address, ' ', -1))
                                    end;"
  end
  
  def down
    execute "UPDATE people SET street = null, housenumber = null;"
  end
end
