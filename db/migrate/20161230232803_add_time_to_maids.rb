class AddTimeToMaids < ActiveRecord::Migration
  def change
    add_column :maids, :time, :string
    add_column :maids, :place, :string
  end
end
