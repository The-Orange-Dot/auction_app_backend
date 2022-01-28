
puts "Seeding..."

# User.create(
#   id: 0,
#   firstName: "default", 
#   lastName: "default",
#   username: "default_User",
#   password: Faker::Internet.password(min_length: 8),
#   dateOfBirth: Faker::Date.birthday(min_age: 18, max_age: 65),
#   email: Faker::Internet.email,
#   picture: "https://www.peachridgeglass.com/wp-content/uploads/2013/07/MoxieAd1.jpg",
#   points: rand(1000...20000),
#   address: Faker::Address.full_address
# )

20.times do
  User.create(
    firstName: Faker::Name.first_name, 
    lastName: Faker::Name.last_name,
    dob: Faker::Date.between(from: '1970-09-23', to: '2004-09-25'),
    username: "#{Faker::Superhero.prefix}-#{Faker::Food.dish.split[0]}",
    password: Faker::Internet.password(min_length: 8),
    dateOfBirth: Faker::Date.birthday(min_age: 18, max_age: 65),
    email: Faker::Internet.email,
    picture: "https://www.peachridgeglass.com/wp-content/uploads/2013/07/MoxieAd1.jpg",
    points: rand(1000...20000),
    address: Faker::Address.full_address,
    buyer_rating: rand(3...5.00).round(2),
    seller_rating: rand(3...5.00).round(2),
    tickets_bought: rand(0...50),
    verified: rand(0..1)
  )
end

Product.create(
  category: "food/drink",
  name: "The HAKUSHU - Single Malt Japanese Whiskey: Spanish Oak",
  descriptionPreview: "※未開栓。※未開栓ですが、古酒扱いとなる為、味・風味の変化、液面低下、コルク栓",
  description: "※未開栓。※未開栓ですが、古酒扱いとなる為、味・風味の変化、液面低下、コルク栓・ボトル等のダメージ等に関しては保証出来かねます ※こちらの商品は当店の酒類販売業免許の関係上、お届け先が東京都内限定の販売となります。",
  images: "../images/1-1.png",
  price: 20000,
  ticketsRemaining: 8,
  tickets: 10,
  keywords: "sake, alcohol, drinks, hakushu",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  category: "electronics",
  name: "Canon EOS 6D EF24-70mm F4L メモリー付き",
  descriptionPreview: "中古ですが、商品頻度が低い商品です。シャッター数正確に分かりません",
  description: "中古ですが、商品頻度が低い商品です。シャッター数正確に分かりませんが、以前調べた時、20000枚台、多くても、30000台記憶があります。レンズも綺麗な状態です。箱、取扱説明書、充電器、バッテリー３つあります。メモリーおまけします。 すぐにご使用いただけます。よろしくお願い申し上げます。",
  images: "../images/2-1.png",
  price: 103500,
  ticketsRemaining: 3,
  tickets: 20,
  keywords: "dslr, camera, digital, electronics",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  category: "clothing",
  name: "Louis Vuitton　新作 希少品　未使用",
  descriptionPreview: "ルイヴィトン - 11月6日新作 - 大人気　希少品",
  description: "ルイヴィトン - 11月6日新作 - 大人気　希少品　１日で完売正規店舗続出　在庫品薄　サイズ　Ｍ～Ｌ　先行予約品　同柄スカート別出品しております　ご覧下さい",
  images: "../images/3-1.png",
  price: 650000,
  ticketsRemaining: 48,
  tickets: 50,
  keywords: "coat, fashion, jacket, luis",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  category: "electronics",
  name: "Apple Iphone12 Pro Max 256ＧＢ パシフィックブルー",
  descriptionPreview: "SIMロック：アップルストアで購入（国内版 SIMフリー）",
  description: "■ カメラ保護：スワロフスキー/保護カバー　２個をお付けいたします ■ 購入後（開封後）業者にて全面nanoのコーティング施工　画面に水滴を落としても流れます ■ 表：（画面）ガラス貼り使用してました。　剥がしてお送りいたします ■ 裏：フイルム貼り (写真では貼ったままです)静電気式/簡単に剥がせます ■ 国内未発売/手帳ケース（未使用）",
  images: "../images/4-1.png",
  price: 105000,
  ticketsRemaining: 5,
  tickets: 20,
  keywords: "iphone, smartphone, phone, sim free",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  category: "sports",
  name: "Gloves signed by Manny Pacquiao and Floyed Mayweather",
  descriptionPreview: "Collectors-item must have",
  description: "The gloves were signed on the day of the manny/floyed fight. They're 12oz gloves without any scuffs marks or blemish.",
  images: "https://thememorabiliateam.com/wp-content/uploads/2018/02/mayweather-pacquiao-signed-boxing-gloves-01.jpg",
  price: 100000,
  ticketsRemaining: 22,
  tickets: 25,
  keywords: "iphone, smartphone, phone, sim free",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  category: "clothing",
  name: "NIKE AIR JORDAN 11 ADAPT 超目玉商品！ 27.5cm",
  descriptionPreview: "ナイキ エアジョーダン 11 アダプト ホワイト",
  description: "ナイキ エアジョーダン 11 アダプト ホワイト ナイキストア購入新品未使用品です。サイズはゴールデンサイズの27.5㎝ - 海外サイトですと最低80,000円の値で販売されています。宜しくお願いします。",
  images: "../images/5-1.png",
  price: 41001,
  ticketsRemaining: 2,
  tickets: 20,
  keywords: "nike, shoes, jordans, new",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  name: "Nintendo Switch, used, good condition",
  category: "games",
  descriptionPreview: "Nintendo switch that my husband doesn't need anymore",
  description: "This switch has been sitting around collecting dust, so we're getting rid of it since no one is using it at all. Great condition.",
  images: "https://image.cnbcfm.com/api/v1/image/106555950-nintendoswitchthumb.jpg?v=1590697245",
  price: 40000,
  ticketsRemaining: 10,
  tickets: 10,
  keywords: "ps5, video games, sony, console",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  name: "Babymetal concert tickets",
  category: "music",
  descriptionPreview: "Concert ticket for up and coming BabyMetal concert",
  description: "Rock on. I got these at a raffle, but I'm selling them. I hear they're popular. I'm not sure how much they're worth, so I'm just gonna toss them up here.",
  images: "https://preview.redd.it/b478cmmkdzh31.jpg?auto=webp&s=258f9c05812a9e1ab3fcf1bc5076ae2a1829e0ad",
  price: 26000,
  ticketsRemaining: 5,
  tickets: 5,
  keywords: "babymetal, tickets, concert, rock",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  category: "electronics",
  name: "ULTRASONE、Jubilee 25 Edition",
  descriptionPreview: "限定250台。この度はお世話になります。",
  description: "はじめまして。どうぞ宜しくお願い致します。大切に時々使用していた商品になります。使用感が多少ございますので、お安く出品させて頂きました。画像に写っている物が全てになります。商品詳細につきましては、ご自身でお調べ頂ければ幸いです。私ごとで恐縮ですが、お値段の交渉は控えさせて頂きたいと思います。何卒ご理解の程、宜しくお願い致します。",
  images: "../images/6-1.png",
  price: 218000,
  ticketsRemaining: 35,
  tickets: 50,
  keywords: "headphones, ultrasone, overear, music",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  category: "music",
  name: "FENDER USA STRATOCASTER 1978 - 1979 美品",
  descriptionPreview: "塗装剥がれや大きな打痕は見当たらず、年式を考慮すると良い状態ではないかと思います。",
  description: "ネックが特に良質な個体で、頑丈で反りも無く良い状態だと思います。しっかりとした厚みを感じるグリップで、角度によっては薄くフレイムが浮き出ます。フレットは残り6割程、ナットと共にオリジナルだと思われます。パーツの交換箇所はトーンポットが1つと、3つのポットのノブです。アームももしかしたら交換されているかもしれません。",
  images: "../images/7-1.png",
  price: 248000,
  ticketsRemaining: 3,
  tickets: 10,
  keywords: "guitar, fender, collectors, music",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  name: "BTS Love Yourself tour tickets!",
  category: "music",
  descriptionPreview: "2 tickets to the BTS Love Yourself tour",
  description: "OMG, I won these, but I couldn't go because I don't have a ride, so I'm selling these. They are real, row Y seat 9! great deal!",
  images: "https://pictures.depop.com/b0/11191874/517809343_AJw4NmdEbW/P0.jpg",
  price: 20000,
  ticketsRemaining: 0,
  tickets: 10,
  keywords: "bts, tickets, love yourself, tour",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  name: "Vintage Hasselblad | SH 503CX Vintage Camera ",
  category: "vintage",
  descriptionPreview: "Camera is in good condition",
  description: "This is a full description of the camera. It is in good condition. blah blah blah blah",
  images: "http://www.progear.co.nz/repository/product/hasselblad%20sh%20503cx%20body%2080mm%20planar%2050mm%20distagon%20kit.png?width=400&amp;height=400&amp;mode=pad",
  price: 300000,
  ticketsRemaining: 20,
  tickets: 20,
  keywords: "camera, vintage, slr, film",
  user_id: rand(User.all.first.id..User.all.last.id)
)
Product.create(
  name: "Playstation 5 || NEW || Never been opened",
  category: "games",
  descriptionPreview: "Never seen the light of day!!",
  description: "I bought soooo many PS5s, and I'm selling them for a ridiculous amount of money. You can't stop me because scalping is love, scalping is life.",
  images: "https://www.news10.com/wp-content/uploads/sites/64/2020/12/GettyImages-1229584776.jpg?w=1024&h=681&crop=1",
  price: 100000,
  ticketsRemaining: 20,
  tickets: 20,
  keywords: "ps5, video games, sony, console",
  user_id: rand(User.all.first.id..User.all.last.id)
)


# 10.times do
# Product.create(
#   name: "Vintage Hasselblad | SH 503CX Vintage Camera ",
#   category: "electronics",
#   descriptionPreview: "Camera is in good condition",
#   description: "This is a full description of the camera. It is in good condition. blah blah blah blah",
#   images: "http://www.progear.co.nz/repository/product/hasselblad%20sh%20503cx%20body%2080mm%20planar%2050mm%20distagon%20kit.png?width=400&amp;height=400&amp;mode=pad",
#   price: 300000,
#   ticketsRemaining: 20,
#   tickets: 20,
#   keywords: ["camera, vintage, slr, film"],
#   user_id: User.all.first.id
# )
# end

puts "Finished!!"