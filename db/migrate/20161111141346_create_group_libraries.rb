class CreateGroupLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :group_libraries do |t|
      t.string :name

      t.timestamps
    end
  end
end
