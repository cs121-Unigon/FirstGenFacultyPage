class AddUserToProf < ActiveRecord::Migration[5.1]
  def change
    add_reference :profs, :user, foreign_key: true
  end
end
