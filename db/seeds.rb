# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


%W[美容・健康 旅行・おでかけ スポーツ 自然・アウトドア ゲーム・思考 ものづくり 育てる 
食べる・飲む 音楽 鑑賞 資格・スキル 乗り物 芸術 その他].each { |a| Category.create(name: a) }
