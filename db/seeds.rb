# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
    email: 'admin@test',
    password: '123qwe'
)

Profession.create!(

 [

 {name: '営業'},
 {name: '電気・機械'},
 {name: '企画・管理'},
 {name: '組み込みソフトウェア'},
 {name: '事務・アシスタントアシスタント'},
 {name: '建設・建築・不動産・プラント・工場'},
 {name: '販売・サービス'},
 {name: '化学・素材・化粧品・トイレタリー'},
 {name: '食品・香料・飼料'},
 {name: '金融系専門職'},
 {name: '医療系専門職'},
 {name: '公務員・教員・農林水産関連職'},
 {name: 'クリエイター・クリエイティブ職'},
 {name: 'SE・インフラエンジニア・Webエンジニア'},
 ]

)

