class AddWhymentorToProfs < ActiveRecord::Migration[5.1]
  def change
    add_column :profs, :whymentor, :string
  end
end
