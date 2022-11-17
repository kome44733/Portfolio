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
customer_id: 4 ,profession_id: 1 ,best_answer_id: nil ,score:0},
{post: "機械設計エンジニアをされている方に質問です。工場などにおく機械の設計をする仕事をしています。設計だけではなく営業もしているみたいです。いくら忙しくても休みも会えないくらい忙しいってことはあるんですか？出張の準備って、そんなに忙しいものなんでしょうか？？",
customer_id: 5 ,profession_id: 2 ,best_answer_id: nil ,score:0},
{post: "現在１９歳の会社員です。高校卒業し機械オペレーターの仕事につきました。自分に合った仕事なのかもわからないまま就職しました。今は頑張って仕事に取り組んでいるのですが大学に行ってもっと自分に合った仕事を探しとけばよかったのかなーと思っています。今は仕事をしていてもなんでこんなことをしてるのかなーといつも思っています。どうすればこのモヤモヤが消えるのでしょうか？",
customer_id: 6 ,profession_id: 2 ,best_answer_id: nil ,score:0},
{post: "機械にくわしい女性は引かれますか？",
customer_id: 17 ,profession_id: 2 ,best_answer_id: nil ,score:0},
{post: "私の仕事のやり方についてどう思いますか？。私は仕事で細かい機械の操作とか物を扱あつかう事をしています。最初の頃は仕事の右も左も何もかもがわからなかったのですが日にちがたってきて仕事の事がわかってきて仕事に没頭をすると機械や物のあつかい方がサーカスとかの動物を調教をしてあやつっているような気持ちになってきてしまっています。私の機械、物へのあつかい方が慣れてきてあつかい方の加減がわかってきてゆっくりとあつかうと機械、物の機嫌がよくなって見えます。でも私ってこれでいいのかなと思う事もあります。どう思いますか？。ご意見をお待ちしています。",
customer_id: 18 ,profession_id: 2 ,best_answer_id: nil ,score:0},
{post: "管理栄養士の地方公務員に興味がある者です。現在公務員について色々調べていたのですが、あるサイトの記事に「公務員の仕事は社会の為の施策を実現したり、住民に耳を傾けて施策に反映させること」とありました。施策とありますが管理栄養士は病院や保険センターで働くわけですから施策云々には無縁ですよね？ サイトの記事は役所で働く公務員のことを言っており管理栄養士は当てはまりませんよね？読みずらい文章で申し訳ありませんが宜しくお願いしますm(__)m",
customer_id: 19 ,profession_id: 3 ,best_answer_id: nil ,score:0},
{post: "国立印刷局の管理や総務など事務職に就職するためには公務員試験に合格しなければ入らないのでしょうか？本局採用や工場採用では事務職にはつけないのでしょうか？",
customer_id: 10 ,profession_id: 3 ,best_answer_id: nil ,score:0},
{post: "地方公務員で国家公務員環境省の国立公園のレンジャーのような職は存在するのでしょうか？国定公園や県立公園、県内にある国立公園地域の管理や企画を行うことを担う人はいるのですか？そのような仕事に就きたいと考えてますが、国家公務員以外道はないのでしょうか？",
customer_id: 14 ,profession_id: 3 ,best_answer_id: nil ,score:0},
{post: "民間の施工管理と地方公務員建築職の仕事内容はどのように違いますか？",
customer_id: 12 ,profession_id: 3 ,best_answer_id: nil ,score:0},
{post: "県庁の最初の配属先について辞令は来ていませんが仮定の話として質問します。以下の二つだとしたら、どっちが出世コースですか？○本庁の企画系の部署○出先の税務系の部署",
customer_id: 13 ,profession_id: 3 ,best_answer_id: nil ,score:0},
{post: "公務員は2～3年で異動があるとお聞きしますが例えば施設管理の分で合格した場合全く関係ない、人事課等の配属はあり得ますか？電気系はかなりハードとお聞きしますが具体的にどのようにハードなのでしょうか。。施設管理は今の会社でいうと結構体育会系で休日も呼び出されたりとか、そういうことかな・・・？",
customer_id: 4 ,profession_id: 3 ,best_answer_id: nil ,score:0},
{post: "私はフルタイムで営業事務をしています。仕事量も多いし接客も事務作業もするし頭も使います。決して簡単な仕事ではないと思ってます。事務にも色々種類があること、分からないのでしょうか。",
customer_id: 16 ,profession_id: 4 ,best_answer_id: nil ,score:0},
{post: "40才事務職です産休後派遣の45才の女性の人が産休の間仕事を引き継いでもらい一年後に復帰、子供が今4才になります業務は、会計業務です最近は仕事も減り、2人も事務はいらないような雰囲気です仕事も誰でもできそうな仕事ばかり振られます子供も最近早く帰りたいと言うので正社員で一時間早めに帰らせてもらうように、言おうか迷ってます後々いづらくなりパートになり辞めることになるでしょうか？一時間早く帰ったところで何も変わらないでしょうか？ここまで正社員できたのに今更やめるのはもったいないでしょうか？",
customer_id: 18 ,profession_id: 4 ,best_answer_id: nil ,score:0},
{post: "仕事について質問があります。事務の仕事内容を詳しく、教えてください<(_ _)>",
customer_id: 11 ,profession_id: 4 ,best_answer_id: nil ,score:0},
{post: "医療事務ってどんな仕事内容ですか？みんな知ってるのから、実はこんなこともするんだよっていうのまで、細かく教えてください",
customer_id: 11 ,profession_id: 4 ,best_answer_id: nil ,score:0},
{post: "建設のお仕事って大体月いくらですか？ その給料だけで、高校、小学、幼稚園の子供を養うのは大変ですか？高校は私立なので約4万です。",
customer_id: 7 ,profession_id: 5 ,best_answer_id: nil ,score:0},
{post: "旦那が建設の仕事をしていてたまに手伝いを頼まれるのですが休憩中に旦那と仕事関係の人が話していても人見知りで輪に入ることができず黙ってしまっています。なにか話さないといけないとは思うのですがそれが一番苦痛です。手伝いたい気持ちはあるんです。",
customer_id: 9 ,profession_id: 5 ,best_answer_id: nil ,score:0},
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
question_id: 4 ,customer_id: 12 ,profession_id: 1 ,score:0},
{answer: "設計業は建築、産業機械、精密機械、プラント、配管どこをとっても日々の残業は当たり前です。出張と言っても場所や日にちによっていろいろな準備がありますが、一番なのは出張先で打ち合わせる為の資料作りです。普段の作業プラス資料作成となり忙しくなります。",
question_id: 5 ,customer_id: 15 ,profession_id: 2 ,score:0},
{answer: "出張内容によりますが僕の経験から言うと、出張先の会社が休みの日に合わせて打ち合わせや作業等を行うことが多々あります。 ｸﾚｰﾑ処理とかは特にそうです。",
question_id: 5 ,customer_id: 17 ,profession_id: 2 ,score:0},
{answer: "総合的に判断して決定的に現在の状況を否定するものがなければ、後4年我慢してみてはいかがでしょう。同年齢の大卒の人が後輩として入ってきたときに答えが待っています。きっと満足できる答えだと思います。楽しみにしていてください。",
question_id: 6 ,customer_id: 15 ,profession_id: 2 ,score:0},
{answer: "引かれないと思いますよ。相手の男性が同じ様に機械に詳しい方でしたら、共通の話題として盛り上がれるだろうし、あまり詳しくない方だったら「すごいねー」って言われます。うちの旦那は機械オンチなので、家の家電の配線や、ちょっとしたトラブル解決などは私の仕事です",
question_id: 7 ,customer_id: 18 ,profession_id: 2 ,score:0},
{answer: "機械にも感情があるように思えることがありますね。単なる道具だと思って粗末に扱えば、すぐに機嫌を損ねて動きが悪くなる。逆に愛情を注いで大切に扱うと、機械はそれに応えてくれます。手入れ自体は同じようにやっているつもりなんですけどね。あなたが感じていることは少し違うかもしれませんが、機械の扱い方として間違っているとは思いません。そういった感覚が解らない人は、いつまで経っても機械に使われるだけです。",
question_id: 8 ,customer_id: 8 ,profession_id: 2 ,score:0},
{answer: ">管理栄養士でも施策の決定等に携わる機会があるのか市民の健康増進や食育に関する施策の立案は、大変関係あると思います。研修とか啓発活動とかも、受講する側でなく企画する側です。",
question_id: 9 ,customer_id: 6 ,profession_id: 3 ,score:0},
{answer: "先の回答は誤り。独立行政法人の職員が公務員の身分を有するということと、人事院の行う公務員試験を経て採用しなけばならないということとは別のことで、質問者さんがおっしゃるように、印刷局独自の採用があります。",
question_id: 10 ,customer_id: 6 ,profession_id: 3 ,score:0},
{answer: "ないですね。国立公園は国の管轄です。県立公園にそんな価値のあるものはありません。管理事務所とかに係員がいる場合もありますがすべて嘱託です。それに地方公務員でそのような専門職の採用は行っていません。一般職で採用されて本庁の公園管理課に配属されることもあるでしょうが、公務員の人事原則はおおむね三年ごとに異動、ですので三年たてば徴税課とかに異動です。",
question_id: 11 ,customer_id: 9 ,profession_id: 3 ,score:0},
{answer: "発注者側(公務員、不動産ディベロッパーなど)と受注者側(ゼネコン、設計事務所など)の違い。企画計画、積算、発注から完成後の維持管理まで関われるのが発注者側の仕事です。",
question_id: 12 ,customer_id: 11 ,profession_id: 3 ,score:0},
{answer: "配属されたらどんなところでも精いっぱい公僕として働いてください。あなたの仕事ぶりが評価されると上への道も開けてくるんです。管理職登用試験があるところでは、その試験に合格しなければ上へはいけません。",
question_id: 13 ,customer_id: 9 ,profession_id: 3 ,score:0},
{answer: "○本庁の企画系の部署が出世コースだと思います。",
question_id: 14 ,customer_id: 8 ,profession_id: 3 ,score:0},
{answer: "一般的には、人事課へ配属になる可能性は低いです。電気系以外にも言えますが、監視業務があります。例えば、ダムは365日24時間体制も普通です。委託度合いはダムによって違います。また、部署によっては災害時の配備の確率も高くなります。",
question_id: 16 ,customer_id: 3 ,profession_id: 4 ,score:0},
{answer: "事務と言っても色々ですね。パソコンを扱う作業があったり、ファイル整理や電話応対があったり、女性なら取引のあるお客様などが来られたらお茶くみさせられたり。",
question_id: 17 ,customer_id: 18 ,profession_id: 4 ,score:0},
{answer: "内科クリニックと訪問看護しか、知りませんが内科は受付、レセコンで請求書作成、レセプト発行 その他は看護助手してました。訪問介護は伝票の打ち込みでした",
question_id: 18 ,customer_id: 18 ,profession_id: 4 ,score:0},
{answer: "建設と言っても、色んな職種があります。設計士、大工、塗装工、生コン、木材等職種により給料に違いがあるので何とも言えません。",
question_id: 19 ,customer_id: 22 ,profession_id: 5 ,score:0},

]
)

Reply.create!(
[
{reply: "適正がないと言っていただき、ありがとうございました。綺麗事だけで会社の利益に繋げられなければ、意味のない正しさだと痛感しました。取り扱っている商品には自信があるので、先輩の話法などを学びながら、自分のスタイルが確立できるよう頑張ります。" ,
customer_id: 2  ,answer_id: 2 ,question_id: 2 ,score:0},
{reply: "ありがとうございます。あと４年頑張ってみます。" ,
customer_id: 6  ,answer_id: 8 ,question_id: 6 ,score:0},
{reply: "頑張ってください!" ,
customer_id: 15  ,answer_id: 8 ,question_id: 6 ,score:0},
{reply: "無資格でできますが私は専門卒です。友人は診療管理技師を持っています。私は今は介護員ですが、医療事務の資格があるのが面接のときの強みになるので、案外、医療事務の資格使えます！",
customer_id: 18  ,answer_id: 18 ,question_id: 18 ,score:0},
]
)

 