class AddCategoryToMaids < ActiveRecord::Migration
  def change
    add_column :maids, :category, :string
  end
end
