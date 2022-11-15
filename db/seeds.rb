# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
    email: "admin@test",
    password: "123qwe"
  )

Profession.create!(

 [

 { name: "営業" },
 { name: "電気・機械" },
 { name: "企画・管理" },
 { name: "組み込みソフトウェア" },
 { name: "事務・アシスタントアシスタント" },
 { name: "建設・建築・不動産・プラント・工場" },
 { name: "販売・サービス" },
 { name: "化学・素材・化粧品・トイレタリー" },
 { name: "食品・香料・飼料" },
 { name: "金融系専門職" },
 { name: "医療系専門職" },
 { name: "公務員・教員・農林水産関連職" },
 { name: "クリエイター・クリエイティブ職" },
 { name: "SE・インフラエンジニア・Webエンジニア" },
 ]

)
Customer.create!(
[
{nickname: "お試し一郎" ,email: "1@1",gender: 1,password: "123qwe",is_deleted: "false" },
{nickname: "お試し二郎" ,email: "1@2",gender: 1,password: "123qwe",is_deleted: "false" },
{nickname: "お試し三郎" ,email: "1@3",gender: 1,password: "123qwe",is_deleted: "false" },
{nickname: "お試し四郎" ,email: "1@4",gender: 1,password: "123qwe",is_deleted: "false" },
{nickname: "お試し五郎" ,email: "1@5",gender: 1,password: "123qwe",is_deleted: "false" },
{nickname: "お試し六郎" ,email: "1@6",gender: 1,password: "123qwe",is_deleted: "false" },
{nickname: "お試し七郎" ,email: "1@7",gender: 1,password: "123qwe",is_deleted: "false" },
{nickname: "お試し八郎" ,email: "1@8",gender: 1,password: "123qwe",is_deleted: "false" },
{nickname: "お試し九郎" ,email: "1@9",gender: 1,password: "123qwe",is_deleted: "false" },
{nickname: "お試し十郎" ,email: "1@10",gender: 1,password: "123qwe",is_deleted: "false" },
{nickname: "お試し一子" ,email: "2@1",gender: 2,password: "123qwe",is_deleted: "false" },
{nickname: "お試し二子" ,email: "2@2",gender: 2,password: "123qwe",is_deleted: "false" },
{nickname: "お試し三子" ,email: "2@3",gender: 2,password: "123qwe",is_deleted: "false" },
{nickname: "お試し四子" ,email: "2@4",gender: 2,password: "123qwe",is_deleted: "false" },
{nickname: "お試し五子" ,email: "2@5",gender: 2,password: "123qwe",is_deleted: "false" },
{nickname: "お試し六子" ,email: "2@6",gender: 2,password: "123qwe",is_deleted: "false" },
{nickname: "お試し七子" ,email: "2@7",gender: 2,password: "123qwe",is_deleted: "false" },
{nickname: "お試し八子" ,email: "2@8",gender: 2,password: "123qwe",is_deleted: "false" },
{nickname: "お試し九子" ,email: "2@9",gender: 2,password: "123qwe",is_deleted: "false" },
{nickname: "お試し十子" ,email: "2@10",gender: 2,password: "123qwe",is_deleted: "false" },
{nickname: "お試しA" ,email: "0@1",gender: 0,password: "123qwe",is_deleted: "false" },
{nickname: "お試しB" ,email: "0@2",gender: 0,password: "123qwe",is_deleted: "false" },
{nickname: "お試しC" ,email: "0@3",gender: 0,password: "123qwe",is_deleted: "false" },
{nickname: "お試しD" ,email: "0@4",gender: 0,password: "123qwe",is_deleted: "false" }
]
)

Question.create!(
[
{post: "営業職の仕事についてです。休日日数年間95日、基本日曜日休みプラス月3日有休は全く使えないです。また、労働時間は8時間ですが実際には10時間勤務、残業代は出ません。休憩は15分〜20分でその間もお客様が来れば対応に追われます。また役職が上がる予定があるのですが、そうなると2.3時間残業しないとこなせない仕事量です。勤務時間外の努力がをしている人が誉められる会社で、やる気、根性だとか自分に負けるなだとかで社員のやる気を上げる風習もあります。プライベートまでも潰して仕事のことを考えるのはしんどいです…やはりこの環境はおかしいでしょうか？営業職自体は楽しいので転職も考えております。",
customer_id: 1 ,profession_id: 1 ,best_answer_id: nil ,score:0},
{post: "扱っている商品自体はとても良い物だと思っていますが、お客様が心から契約したいと思って頂きお選び頂きたいと思っているのですが同じような悩みを克服された方はいらっしゃいませんでしょうか？またどのように克服されましたでしょうか？",
customer_id: 2 ,profession_id: 1 ,best_answer_id: nil ,score:0},
{post: "営業職について質問です。現在27歳、工場で作業員をしていますが、営業職に興味があります。営業は未経験ですが、住宅を建てて自分の家を見学会場にしているときに、営業職で働いてみたい！頑張ってみたいと最近思っています。もちろん今の数倍はキツく、ノルマなどのプレッシャーもあるのだろうと思います。皆さんの意見を聞かせてください。よろしくお願いします",
customer_id: 3 ,profession_id: 1 ,best_answer_id: nil ,score:0},
{post: "営業職です。他社の営業さんとお客様先に訪問するのですが、私の会社の近くなので一度私の会社に来ていただいて一緒に訪問することも可能ですよ。ということをメールで伝えたいのです。「弊社事務所に一度お越しいただいて、一緒に訪問することも可能です。」これは少し失礼な言い方ですよね？うまい言い方を教えていただきたいです。",
customer_id: 4 ,profession_id: 1 ,best_answer_id: nil ,score:0}
]
)

Answer.create!(
[
{answer: "まぁよくある営業の会社って感じですね。昔ながらの。労働基準で考えたらおかしいけど、そんな会社やまほどありますね。もっといい条件の営業職もやまほどあります。転職できるようならした方がいいかとは思います。" ,
question_id: 1 ,customer_id: 11 ,profession_id: 1 ,score:0},
{answer: "失礼な事を記載しますが、正直営業に適正がないのだと感じました。心の綺麗な人は営業職に適正がありません。営業職の本来あるべき姿はあなたの言う通りです。顧客にしっかり理解しても貰い、納得した上で契約してほしい。だからこそ、感謝のお手紙が届いたのだと思います。",
question_id: 2 ,customer_id: 12 ,profession_id: 1 ,score:0},
{answer: "お客さんとして感じた「営業っていいな」が実際働いてみても同じように思えるかっていうと…ね。それだけ期待されてるなら今のところで頑張るのがいいんじゃないのかな。もしどうしても営業がやりたいなら工場での経験や資格を活かせる業界がいいと思う。「〇さんは営業なのに現場の気持ちがよくわかるね！」ってのは売上につながるポイントだろうからね。",
question_id: 3 ,customer_id: 13 ,profession_id: 1 ,score:0},
{answer: "「弊社事務所にお寄りいただければ、一緒に訪問いただけますが、いかがでしょうか。」",
question_id: 4 ,customer_id: 14 ,profession_id: 1 ,score:0},
{answer: "英文和訳の直訳のようなぎこちない日本語ですね。「可能です」とは「できる」という意味なのでしょうが、あなたはできても、相手ができるとは限らないのだから、自分の都合を述べているだけのはなしです。この場合は、相手を誘っているのだから、自分が「可能」かどうかではなく、相手の意向はどうかを尋ねる表現にしなければなりません。＜例＞「よろしければ、当社の事務所にお越しいただいてから、ご一緒に訪問するようになさいませんか」",
question_id: 4 ,customer_id: 12 ,profession_id: 1 ,score:0}
]
)

Reply.create!(
[
{reply: "適正がないと言っていただき、ありがとうございました。綺麗事だけで会社の利益に繋げられなければ、意味のない正しさだと痛感しました。取り扱っている商品には自信があるので、先輩の話法などを学びながら、自分のスタイルが確立できるよう頑張ります。" ,
customer_id: 2  ,answer_id: 2 ,question_id: 2 ,score:0},
]
)

 