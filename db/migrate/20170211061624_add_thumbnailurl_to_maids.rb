class AddThumbnailurlToMaids < ActiveRecord::Migration
  def change
    add_column :maids, :thumbnail_url, :string
    add_column :maids, :detail_url, :string
  end
end
