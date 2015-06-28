class AddAvatarToFoods < ActiveRecord::Migration
  def up
    add_attachment :foods, :avatar
  end

  def down
    remove_attachment :foods, :avatar
  end
end
