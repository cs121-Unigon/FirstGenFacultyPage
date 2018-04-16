class AddLastnameToProfs < ActiveRecord::Migration[5.1]
  def change
    add_column :profs, :lastname, :string
  end
end
