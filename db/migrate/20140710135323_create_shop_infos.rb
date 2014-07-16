class CreateShopInfos < ActiveRecord::Migration
  def change
    create_table :shop_infos do |t|
      t.string :name
      t.string :address
      t.string :url
      t.decimal :lat
      t.decimal :lng
      t.binary :photo, limit: 3.megabyte
      t.string :phototype
      t.string :tel
      t.integer :min_price
      t.integer :max_price
      t.references :shop_category, index: true

      t.timestamps
    end
  end
end
