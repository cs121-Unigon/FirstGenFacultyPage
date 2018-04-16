class AddHometownToProfs < ActiveRecord::Migration[5.1]
  def change
    add_column :profs, :hometown, :string
  end
end
