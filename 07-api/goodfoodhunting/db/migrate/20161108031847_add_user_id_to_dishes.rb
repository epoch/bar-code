class AddUserIdToDishes < ActiveRecord::Migration[5.0]
  def change
    add_reference :dishes, :user, foreign_key: true
  end
end
