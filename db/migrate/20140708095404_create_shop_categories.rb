class CreateShopCategories < ActiveRecord::Migration
  def change
    create_table :shop_categories do |t|
      t.string :category

      t.timestamps
    end
  end
end
