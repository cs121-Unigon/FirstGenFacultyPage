class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.datetime :date
      t.text :comment

      t.timestamps
    end
  end
end
