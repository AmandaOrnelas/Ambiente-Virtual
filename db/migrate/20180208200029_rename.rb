class Rename < ActiveRecord::Migration[5.1]
  def change
  	rename_column :administradors, :senha, :password
  end
end
