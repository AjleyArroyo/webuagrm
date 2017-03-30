class AddAttachmentAvatarToEstablecimientos < ActiveRecord::Migration
  def self.up
    change_table :establecimientos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :establecimientos, :avatar
  end
end
