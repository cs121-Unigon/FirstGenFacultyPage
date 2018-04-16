class CreateProfs < ActiveRecord::Migration[5.1]
  def change
    create_table :profs do |t|
      t.string :name
      t.string :lastname
      t.string :pronouns
      t.string :email
      t.text :interests
      t.text :lifestory
      t.text :whymentor
      t.text :funfact
      t.string :office
      t.string :hometown
      t.belongs_to :department, foreign_key: true

      t.timestamps
    end
  end
end
