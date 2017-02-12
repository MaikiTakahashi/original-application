class AddDetailsToMaids < ActiveRecord::Migration
  def change
    add_column :maids, :email, :string
    add_column :maids, :password_digest, :string
  end
end
