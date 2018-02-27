class AddAttachmentAvatarToProfs < ActiveRecord::Migration[4.2]
  def self.up
    change_table :profs do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :profs, :avatar
  end
end
