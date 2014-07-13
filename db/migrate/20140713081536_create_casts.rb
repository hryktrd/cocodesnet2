class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.references :shop_info, index: true
      t.references :play_kind, index: true
      t.string :name
      t.integer :age
      t.integer :tall
      t.integer :bust
      t.string :cup
      t.integer :waist
      t.integer :hip
      t.binary :photo
      t.datetime :free_after
      t.string :price

      t.timestamps
    end
  end
end
