class AddUsersToMaids < ActiveRecord::Migration
  def change
    change_table :messages do |t|
      t.references :maid, index: true, foreign_key: true
    end
  end
end
