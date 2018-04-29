class AddLifestoryToProfs < ActiveRecord::Migration[5.1]
  def change
    add_column :profs, :lifestory, :string
  end
end
