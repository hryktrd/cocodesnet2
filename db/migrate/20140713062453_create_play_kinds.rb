class CreatePlayKinds < ActiveRecord::Migration
  def change
    create_table :play_kinds do |t|
      t.string :kind

      t.timestamps
    end
  end
end
