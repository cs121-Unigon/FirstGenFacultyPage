class AddPronounsToProfs < ActiveRecord::Migration[5.1]
  def change
    add_column :profs, :pronouns, :string
  end
end
