class AddIndexToAdministradorsEmail < ActiveRecord::Migration[5.1]
  def change
  	    add_index :administradors, :email, unique: true
  end
end
