class AddFunfactToProfs < ActiveRecord::Migration[5.1]
  def change
    add_column :profs, :funfact, :string
  end
end
