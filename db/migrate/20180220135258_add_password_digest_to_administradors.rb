class AddPasswordDigestToAdministradors < ActiveRecord::Migration[5.1]
  def change
    add_column :administradors, :password_digest, :string
  end
end
