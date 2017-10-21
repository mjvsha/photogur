class AddUserIdToPictures < ActiveRecord::Migration[5.0]
  def change
    # add_foreign_key :pictures, :users
    add_reference(:pictures, :users, foreign_key: true)
  end
end
