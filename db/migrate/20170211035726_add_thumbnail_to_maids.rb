class AddThumbnailToMaids < ActiveRecord::Migration
  def change
    add_column :maids, :thumbnail, :string
  end
end
