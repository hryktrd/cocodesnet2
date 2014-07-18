# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ShopCategory.create(:category => 'ソープ')
ShopCategory.create(:category => 'ヘルス')
ShopCategory.create(:category => 'デリヘル')
ShopCategory.create(:category => 'イメクラ')

#ShopInfo.create(:address => '大阪府大阪市', :url => 'http://cocoshop.jp', :lat => 34.722665, :lon => 135.41869, :tel => 06-111-1111, :min_price => 10000, :max_price => 13000, :shop_category => 1)

PlayKind.create(:kind => 'フェラ')
PlayKind.create(:kind => '素股')
PlayKind.create(:kind => '手コキ')
