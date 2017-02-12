class AddDetailurlToMaids < ActiveRecord::Migration
  def change
    add_column :maids, :detail_url, :string
  end
end
