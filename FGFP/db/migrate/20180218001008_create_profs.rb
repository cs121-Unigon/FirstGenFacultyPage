class CreateProfs < ActiveRecord::Migration[5.1]
  def change
    create_table :profs do |t|
      t.string :name
      t.string :email
      t.text :interests
      t.string :office
      t.belongs_to :department, foreign_key: true

      t.timestamps
    end
  end
end
