class AddNationalIdNumberToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :national_id_number, :integer
  end
end
