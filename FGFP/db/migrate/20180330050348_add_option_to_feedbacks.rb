class AddOptionToFeedbacks < ActiveRecord::Migration[5.1]
  def change
    add_column :feedbacks, :option, :string
  end
end
