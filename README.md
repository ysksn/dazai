# Dazai

One of the most famous authors in Japan, Osamu Dazai's novel generator.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dazai'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dazai

## Usage

```ruby
require 'dazai'

Dazai.sentence
# => "百米くらいの高さであった。"
```

```ruby
Dazai.paragraph
# => "喧嘩は度胸である。\n" + 
# => "次郎兵衛は度胸を酒でこしらえた。\n" + 
# => "次郎兵衛の酒はいよいよ量がふえて、眼はだんだんと死魚の眼のように冷くかすみ、額には三本の油ぎった横皺が生じ、どうやらふてぶてしい面貌になってしまった。\n" + 
# => "煙管を口元へ持って行くのにも、腕をうしろから大廻しに廻して持っていって、やがてすぱりと一服すうのである。\n" + 
# => "度胸のすわった男に見えた。"
```

```ruby
Dazai.paragraphs(count: 2)
# => "つぎの一年は家の裏手にあたる国分寺跡の松林の中で修行をした。\n" +
# => "人の形をした五尺四五寸の高さの枯れた根株を殴るのであった。\n" +
# => "次郎兵衛はおのれのからだをすみからすみまで殴ってみて、眉間と水落ちが一番いたいという事実を知らされた。\n" +
# => "尚、むかしから言い伝えられている男の急所をも一応は考えてみたけれども、これはやはり下品な気がして、傲邁な男の覘うところではないと思った。\n" +
# => "むこうずねもまた相当に痛いことを知ったが、これは足で蹴るのに都合のよいところであって、次郎兵衛は喧嘩に足を使うことは卑怯でもありうしろめたくもあると思い、もっぱら眉間と水落ちを覘うことにきめたのである。\n" +
# => "枯れた根株の、眉間と水落ちに相当する高さの個処へ小刀で三角の印をつけ、毎日毎日、ぽかりぽかりと殴りつけた。\n" +
# => "おまえ、間違ってはいませんか。\n" +
# => "冗談じゃないかしら。\n" +
# => "おまえのその鼻の先が紫いろに腫れあがるとおかしく見えますよ。\n" +
# => "なおすのに百日もかかる。\n" +
# => "なんだか間違っていると思います。\n" +
# => "とたんにぽかりと眉間を殴る。\n" +
# => "左手は水落ちを。\n" +
# => "\n" +
# => "三郎は父の葬儀を近くの日蓮宗のお寺でいとなんだ。\n" +
# => "ちょっと聞くと野蛮なリズムのように感ぜられる和尚のめった打ちに打ち鳴らす太鼓の音も、耳傾けてしばらく聞いていると、そのリズムの中にどうしようもない憤怒と焦慮とそれを茶化そうというやけくそなお道化とを聞きとることができたのである。\n" +
# => "紋服を着て［＃「着て」は底本では「来て」］珠数を持ち十人あまりの塾生のまんなかに背を丸くして坐って、三尺ほど前方の畳のへりを見つめながら三郎は考える。\n" +
# => "嘘は犯罪から発散する音無しの屁だ。\n" +
# => "自分の嘘も、幼いころの人殺しから出発した。\n" +
# => "父の嘘も、おのれの信じきれない宗教をひとに信じさせた大犯罪から絞り出された。\n" +
# => "重苦しくてならぬ現実を少しでも涼しくしようとして嘘をつくのだけれども、嘘は酒とおなじようにだんだんと適量がふえて来る。\n" +
# => "次第次第に濃い嘘を吐いていって、切磋琢磨され、ようやく真実の光を放つ。\n" +
# => "これは私ひとりの場合に限ったことではないようだ。\n" +
# => "人間万事嘘は誠。\n" +
# => "ふとその言葉がいまはじめて皮膚にべっとりくっついて思い出され、苦笑した。\n" +
# => "ああ、これは滑稽の頂点である。\n" +
# => "黄村の骨をていねいに埋めてやってから三郎はひとつ今日より嘘のない生活をしてやろうと思いたった。\n" +
# => "みんな秘密な犯罪を持っているのだ。\n" +
# => "びくつくことはない。\n" +
# => "ひけめを感ずることはない。"
```

```ruby
require 'faker'
require 'dazai'

Faker::Dazai.sentence
# => "次郎兵衛は度胸を酒でこしらえた。"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ysksn/dazai. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Dazai project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ysksn/dazai/blob/master/CODE_OF_CONDUCT.md).
