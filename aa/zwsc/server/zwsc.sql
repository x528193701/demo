set names utf8;
drop database if exists zwsc;
create database zwsc charset=utf8;
use zwsc;
-- 注册/登录
create table user(
    uid int primary key auto_increment,
    uname varchar(11),
    upwd varchar(13)
);
insert into user value
(NULL,"123","123"),
(NULL,"11","11");
-- 轮播图
create table carousel_Img(
    cid int primary key auto_increment,
    cimg varchar(70),
    cpath varchar(15)
);
insert into carousel_Img values
(NULL,"prou01.jpg",""),
(NULL,"img20190321112356782785.jpg",""),
(NULL,"img20190404160627878448.jpg",""),
(NULL,"img20190411143629766860.jpg",""),
(NULL,"img20190425143851130399.jpg",""),
(NULL,"img20190425143858633902.jpg","");
-- 男频
create table n_genre(
    nid int primary key auto_increment,
    nimg varchar(70),
    nname varchar(20),
    nauthor varchar(10),
    nintro varchar(100),
    npath varchar(15)
);
insert into n_genre values
(NULL,"812300157.jpg","校花的天才高手","飞翔的青蛙","偶得全能圣手，邂逅校花，主宰校园，打造史上最强校花的贴身高手。",""),
(NULL,"802300002.jpg","武印大陆","有梦的想家","是彻底毁灭还是涅槃重生？束缚不再，神威浩荡，大陆终将一统。万载的预言，究竟昭示着怎样的天意？大陆又将何去何从？",""),
(NULL,"803202352.jpg","凌天战神","万木峥嵘","上古武帝庄子，九转涅槃后悟屠龙之技，御龙为马，主宰天地，是为凌天战神。",""),
(NULL,"811100005.jpg","都市绝品医圣","左妻右妾","哥只是个实习医生，医术属三流。 但是哥印堂发光，天降大运，被异界医师灵魂附体，成为一名奇术邪医，开始了医修之路。",""),
(NULL,"810500007.jpg","超品圣手","左影","身为芸芸众生之中一员的黎灿，前十八年过着和寻常人一样平淡无奇的日子。直到有一天，他在路边摊买了一只小乌龟后......","");

-- 女频
create table w_genre(
    nid int primary key auto_increment,
    nimg varchar(70),
    nname varchar(20),
    nauthor varchar(10),
    nintro varchar(100),
    npath varchar(15)
);
insert into w_genre values
(NULL,"805200040.jpg","娇医有毒：王爷别乱来","云玺","欠巨债，医馆遭惦记，还有人想纳她做小！当她的银针是吃素的吗！？真是给你们脸了！",""),
(NULL,"812300053.jpg","妖孽王爷请绕道","萧瑟瑟","人生已然艰难，做人要厚道，反正和离之后便是幸福大道！ 什么？皇上弟弟不同意？那她的苦谁来赔！",""),
(NULL,"807400033.jpg","倾世医妃要休夫","六月","本是一名有大好前途的脑外科医生，她坚贞保守，视节操为生命。但是上天跟她开了一个大大的玩笑，竟让她穿越到一位王爷的床上。",""),
(NULL,"811200038.jpg","请妻入瓮：鬼夫大人别过来","阿生","师父居然要她嫁给一个鬼？还说是为了她好？ 于是她带着新鲜出炉的鬼夫大人走上了降妖除鬼的道路，没想到却揭开了一个惊天大阴谋。",""),
(NULL,"819600043.jpg","掠爱成瘾：权少独占小娇妻","北笙","她曾为他放弃所有，他却毁了她的所有。直到光阴不再，直到一切已成定局，他才知晓事情的真相。",""),
(NULL,"807300063.jpg","萌宝来袭：爹地，她是我妈咪！","发菜菜","什么？她正值妙龄，竟然被一个小萝莉喊妈？ 萝莉爸竟然逼她签下“母亲”协议？ 她逃，她躲，奈何依旧逃不出男人的掌心。","");

-- 出版书籍
create table publish(
    nid int primary key auto_increment,
    nimg varchar(70),
    nname varchar(20),
    nauthor varchar(20),
    nintro varchar(100),
    npath varchar(15)
);
insert into publish values
(NULL,"60798537.jpg","镜子","刘慈欣","随着探索的深入，人们发现量子效应只是物质之海表面的涟漪，是物质更深层规律扰动的影子。",""),
(NULL,"814800013.jpg","没有你的晚安，我睡不着","小新","某个深夜，总有一些人和一些画面闯进你们的梦里，也许是曾经你拿生命爱过却*后深深伤害你的初恋",""),
(NULL,"814800002.jpg","一路繁花相送","青衫落拓","繁花消逝，少年会老，爱却不会。你爱得肆意勇敢，我学着哭笑随行。相恋直到白头，一路繁花相送。",""),
(NULL,"814800016.jpg","当命运来敲门","朱迪思·克莱儿·米切尔","那些生活中看起来平凡普通的沉默的大多数，在他们孤寂的外表之下，是否也隐藏着人生的另一种可能？",""),
(NULL,"251312.jpg","半缘流光半缘君","逍遥红尘","六年前，身为他女友的她上演别恋大戏  三年前，身为她未婚夫的他婚前落跑  尴尬的重逢  是彼此默然？  是擦身而过？  还是……",""),
(NULL,"60798539.jpg","天使时代","刘慈欣","刘慈欣科幻短篇天使时代。","");

-- 推荐
create table p_recommend(
    rid int primary key auto_increment,
    rimg varchar(50),
    rname varchar(20)
);
insert into p_recommend values
(NULL,"/index/recommend/819900465.jpg","天才高手"),
(NULL,"/index/recommend/819900471.jpg","无敌炼药师"),
(NULL,"/index/recommend/814900107.jpg","头号甜宠：Hello，首领大人"),
(NULL,"/index/recommend/818700548.jpg","无效婚约，前妻要改嫁"),
(NULL,"/index/recommend/804501531.jpg","兽黑狂妃：皇叔逆天宠"),
(NULL,"/index/recommend/802100028.jpg","玄武战神");
-- 本周主打

create table hotspot(
    hid int primary key auto_increment,
    himg varchar(50),
    htitle varchar(20),
    author varchar(10),
    intro varchar(100)
 );
insert into hotspot values
(NULL,"/index/hotspot/804500422.jpg","暴力俏村姑","风轻灵","三房长女夏枯草重生，面对极品，她的解决之道就是以暴制暴。"),
(NULL,"/index/hotspot/812100159.jpg","伪萌宝宝：总裁的失忆娇妻","苏沫朵朵","顾安夏从没想过，未婚夫和同父异母的妹妹竟联手置她死地。她也没想过，自己堂堂顾氏千金，竟然会成为那个男人的禁宠。"),
(NULL,"/index/hotspot/804500096.jpg","捡个校花做老婆","梁少","校花那么多，捡个回家做老婆。华夏第一战兵回归都市，成为紫荆中学的最牛插班生！");

-- 书架
create table bookrack(
bid int primary key auto_increment,
btitle varchar(10),
section varchar(20),
bupdate bool
);
insert into bookrack values
(NULL,"医见倾心","第1章　生死离别",1),
(NULL,"武逆乾坤","第一章 废物南",0);

-- 男频
-- 本周主打
create table n_hotspot(
    hid int primary key auto_increment,
    himg varchar(50),
    htitle varchar(20),
    author varchar(10),
    intro varchar(200),
    p_type smallInt
 );
 insert into n_hotspot values
(NULL,"/channel/hotspot/804500088.jpg","不败剑神","断剑","寒门少年，炼神兵，布神阵。剑神不败，一剑逆九天！",0),
(NULL,"/channel/hotspot/804502210.jpg","超级共享男友系统","夏冰","屡次表白失败的林易，却无意间激活了一个超级共享男友系统，林易发现，无论客户提出什么要求，在租期内，这些要求都可以成为他的能力，并且租期结束，获得五星好评，他就能永久获得这项能力。",0),
(NULL,"/channel/hotspot/810300088.jpg","终极全才","浪漫烟灰","三流中医大学学生林天成，和手机合体之后，一个手电筒应用，便能让林天成拥有夜视透视能力。美图秀秀，360杀毒等等应用，又能带给他怎样的惊喜？",0),
(NULL,"/channel/hotspot/804501623.jpg","千金重生：心机总裁套路深","姜小牙","重活一世，她总算活明白了，害她的她要全部报复回来，至于她踩过的男人……",1),
(NULL,"/channel/hotspot/807000306.jpg","厂公有疾，娘子自重","小棒槌","和一个鸟都没有脾气还臭的男人生活是什么样的感觉？顾青萝表示很惆怅。念他身体有疾，顾卿萝表示不同他计较。她尽心的想当好厂公的好姐妹，可是谁知厂公夜间却悄悄的爬进她的被窝，让她帮忙解决生理问题……",1),
(NULL,"/channel/hotspot/813600096.jpg","攻妻不备：生个天才宝宝","马语孝","六年前，闺蜜将她灌醉送到陌生男人的床上，闺蜜同时爬到了她男友的床上。无意之中，她拿走了他那颗带有诅咒的血钻，带着腹中的宝宝离开祖国。六年之后，她带着天才宝宝回归，血钻再次出现，他将目标锁定到她的身上，出价五亿与她签上一纸契约。",1),
(NULL,"/channel/hotspot/5490.jpg","孤城闭","米兰Lady","人生拟是采采流水，蓬蓬远春。倏忽十年，相误桃源路。",2),
(NULL,"/channel/hotspot/814800005.jpg","过客匆匆","飘阿兮","他们连续在三个婚礼上相遇，买醉时竟也邂逅，难道这就是传说中的孽缘",2),
(NULL,"/channel/hotspot/814800010.jpg","是谁为你送花来","安逸","他跟她玩一场“敢不敢”的爱情游戏，她不顾一切地参与其中。她不知道，在她按下开关的那一刻，爱情游戏才刚刚开始……",2);


-- 换一换
-- 0男1女2出版
create table c_rest(
    rid int primary key auto_increment,
    rimg varchar(50),
    rtitle varchar(20),
    p_type smallInt
);
insert into c_rest values
(NULL,"/channel/rest/80000437.jpg","绝世邪神",0),
(NULL,"/channel/rest/80000439.jpg","天才高手在都市",0),
(NULL,"/channel/rest/80000441.jpg","极品狂医",0),
(NULL,"/channel/rest/80001521.jpg","我的极品女房东",0),
(NULL,"/channel/rest/80001569.jpg","女神的全职高手",0),
(NULL,"/channel/rest/80002102.jpg","绝世武神",0),
(NULL,"/channel/rest/60003253.jpg","修罗武神",0),
(NULL,"/channel/rest/60349695.jpg","大小姐的近身神医",0),
(NULL,"/channel/rest/60360657.jpg","丐世神医",0),
(NULL,"/channel/rest/60385490.jpg","闪婚老公太抢手",1),
(NULL,"/channel/rest/60451899.jpg","总裁一吻好羞羞",1),
(NULL,"/channel/rest/60451957.jpg","庶女惊华：一品毒医",1),
(NULL,"/channel/rest/80001451.jpg","错吻男神99次",1),
(NULL,"/channel/rest/80001459.jpg","嫡女弃后",1),
(NULL,"/channel/rest/80001558.jpg","Hello，靳先生",1),
(NULL,"/channel/rest/60580702.jpg","第一婚宠：老公大人请自重",1),
(NULL,"/channel/rest/60740300.jpg","盛少，情深不晚",1),
(NULL,"/channel/rest/80000447.jpg","帝凰之神医弃妃",1),
(NULL,"/channel/rest/321777.jpg","下个路口遇见你",2),
(NULL,"/channel/rest/351003.jpg","谁许我一世安稳",2),
(NULL,"/channel/rest/60733638.jpg","人民的名义",2);

create table c_recom(
    rid int primary key auto_increment,
    rimg varchar(50),
    rtitle varchar(20),
    author varchar(10),
    intro varchar(500),
    p_type smallInt
);
insert into c_recom values
(NULL,"/channel/recommend/810300245.jpg","阴阳巡逻人","聪明白痴","神秘的残图，诡异的玉葫芦，消失十九年的爷爷，每收到一条QQ消息之后就会有一个人离奇的死亡，这一切引发一段段离奇而诡异的事件……我为了寻求真相，不得不展开一系列离奇而惊险的探寻之旅。看似被动，却恰恰又事成必然。从闹鬼的宿舍到深山鬼村，再到美国的鬼镇。行走在神秘莫测的北纬30度，一次次游离在生死边缘，我成了一个行走在阳世间的活鬼王，走到哪里都能撞鬼，这究竟有人故意安排？还是上天在捉弄？狼人、海底未知生物、埃及不朽干尸、天宫……这里魅影重重，行踪成谜，冥冥之中我踏上了一条不归路",0),
(NULL,"/channel/recommend/80002130.jpg","九焰至尊","爱吃白菜","穿越异世、携带着九焰天火塔，韩风开始了强者之旅！且看少年韩风，如何在异世各大天才当中一飞冲天，踏破苍穹，成就至尊之位！",0),
(NULL,"/channel/recommend/60592875.jpg","神级仙医在都市","掠痕","他是仙医门第二十五代传人，资质逆天。行走都市，一路喧嚣。",0),
(NULL,"/channel/recommend/817400920.jpg","最强屠龙系统","一眉道长","肩扛屠龙刀，手持诸神剑，诛敌屠龙，碾压三界。 世家子弟，宗门天才，龙族强者，统统一招！",0),
(NULL,"/channel/recommend/809500344.jpg","绝世小神医","空白页","种个地都能获得神奇的机遇，医术传承还有神秘的玉佩。专家说的？抱歉，我说的才算。想让我出手？看心情吧。美女？我很纯洁，十几个就够了……",0),
(NULL,"/channel/recommend/804500043.jpg","九天神龙诀","秋风揽月","穿越异世后，我发誓，要修最强的神通，睡最美的女人，九天十地，唯我独尊！",0),
(NULL,"/channel/recommend/808800062.jpg","萌宝三只：爹地请排队","一顾流年","20岁，陆倾心被算计生子，虐身虐心。25岁，陆倾心携子归来，让别人虐身虐心！三只萌宝--天佑：“我是蓝孩子，完全可以胜任‘爹地’一职。”天煜：“我……我喜欢医生哥哥做爹地！”天瑜：“人家要桃花眼蜀黍做爹地……嘤嘤嘤……”正牌爹地乔BOSS，不是医生，木有桃花眼，心塞咆哮：“三只小崽子，你们放学别走，我们聊聊人生！”陆倾心：“大丫、二狗、三胖，回家吃饭！”三宝异口同声：“妈咪，请务必唤我们大名！”",1),
(NULL,"/channel/recommend/50004837.jpg","冷情王妃太妖娆","盗版月野兔","特工首领穿越为世家庶女，锋芒展露，绝代风华",1),
(NULL,"/channel/recommend/820700063.jpg","替身娇妻要离婚","侯少","为救母亲，她嫁给了最恨她的那个男人，忍受着一个人的婚礼。 坐着一个名不副实的傅太太，忍受着他深夜一次次的掠夺，还要被逼吞下避孕药。 他说这一切，都是她要还的账。 最终，他爱的女人醒来，她的母亲去世。 伤痕累累的她签下了离婚协议，想结束这一段荒唐的婚姻，却被他一把撕掉，将她禁锢在了怀中。 “林尽染，招惹了我，一辈子休想逃！”",1),
(NULL,"/channel/recommend/813800084.jpg","绝宠废材三小姐","唐七七","纵横黑白两道的佣兵之王King，世人眼中的变态妖物，一次意外身亡，重生在一个强者为尊的异世。
废物，花痴？打公主，退婚皇子，一夕之间，风华惊天下！
欺负她没有功法？逆天功法，拈手即来！
鄙视她没有丹药？极品丹药都给魔兽当蚕豆吃！
超级圣兽自动认主，绝色美男排队提亲，站在大陆巅峰，笑傲所有欺负过她的人。",1),
(NULL,"/channel/recommend/804500217.jpg","农门小辣妃","张家暖妞","冲喜？吃不上饭？穷的叮当响？
又没缺胳膊断腿，活人还能被尿憋死！
撸起袖子发家致富。
渣渣太多轮番上阵？
抡了棍棒打的满地找牙，让你们知道，老娘发飙连自己都害怕！
只是，斗得过极品，虐得了渣渣，就是奈何不了缠绵不休的他。
某男笑得灿若桃花，“娘子，快到榻上来。”
某女咬牙，“不上！”
某男一脸得逞，“行！我上，你下！”",1),
(NULL,"/channel/recommend/806400036.jpg","独家盛宠：总裁的替身新娘","迷鹿","妹妹逃婚，她被临时塞进婚纱，嫁给一个声名狼藉的男人。原以为这婚姻只是一场婚姻一场梦，却不想她一梦不醒。",1),
(NULL,"/channel/recommend/814800004.jpg","暮色深处的你","巫山","如果他们的相遇注定是一场不可言传的劫难，她愿意为他义无反顾。",2),
(NULL,"/channel/recommend/814800007.jpg","偏爱你的甜","苏亦","我是中国人，MOF先生是法国人。我很爱吃他做的蛋糕，某次偷吃现场被抓……",2),
(NULL,"/channel/recommend/60748422.jpg","尘埃落定","阿来","小说讲述了一个声势显赫的藏族老麦其土司，在酒后和汉族太太生了一个傻瓜儿子。这个人人都认定的傻子与现实生活格格不入，然而就是这个傻子却有着超时代的预感和举止，不以常理出牌，在其余土司遍种罂粟时突然建议改种麦子，结果鸦片供过于求，无人问津，阿坝地区笼罩在饥荒和残废的阴影下。大批饥民投奔麦其麾下，麦其家族的领地和人口达到空前的规模，傻子少爷因此而娶到了美貌的妻子塔娜，也开辟了康巴地区第一个边贸集市。傻子少爷回麦其土司官寨，受到英雄般的待遇，也遭到大少爷的嫉妒和打击，一场家庭内部关于继承权的腥风血雨悄然拉开了帷幕。最后在解放军进剿国民党残部的隆隆炮声中，麦其家的官寨坍塌了。纷争、仇杀消失了，一个旧的世界终于尘埃落定。",2),
(NULL,"/channel/recommend/814800008.jpg","谛听阁","迦楼罗北斗","在外人眼中，明胤继承了明氏一族*浓醇的血脉，前途无量。却没人知道他藏身在谛听阁，背负着家族的使命，举步维艰。",2),
(NULL,"/channel/recommend/251720.jpg","撕裂的梦境","兰思思","一个是灵气十足的女钢琴老师，一个是曾经的雇佣杀手，他们之间，会有着怎样不可思议的交集与故事？",2),
(NULL,"/channel/recommend/814800015.jpg","你不必活在别人的期待里","小木头","你要成为独特的自己，而不是伪装成一个完美的别人。",2);
-- 最近上架
create table putaway(
    pid int primary key auto_increment,
    pimg varchar(50),
    ptitle varchar(20),
    author varchar(10),
    intro varchar(500),
    p_type smallInt
);
insert into putaway values
(NULL,"/channel/putaway/80020360.jpg","少年医圣","山清水秀1","张强从小被一道士收养，不但学会了一身傲世的武功，还学会了一身神鬼莫测的医术，他凭着自己的一身所学在漭漭红尘中闯出了一片属于自己的天地，纵横江湖，所向无敌，金钱美女，予取予求。",0),
(NULL,"/channel/putaway/810300100.jpg","透视小毒医","周大少","王兵只是个小保安，直到那天他遇到了丧尽天良的师父，从此他的人生轨迹发生了翻天覆地的变化。美女，你信不信只要我亲你一下，就能知道你穿什么样的内裤？什么？你不信？那我只能证明给你看了。",0),
(NULL,"/channel/putaway/812500018.jpg","绝世特种兵在都市","八里洪涛","苏洵因见义勇为，打伤四个烂人而遭到革职，回到都市的他寻找姐姐，没想到发现自己的姐姐居然……",0),
(NULL,"/channel/putaway/807300044.jpg","天才宝宝：爹地追妻很疯狂","月半子","害羞？5年前的那个晚上，你胆子可是很大的。",1),
(NULL,"/channel/putaway/809800035.jpg","再世倾城：毒后戏邪皇","初心未改","“若有来生，我必要你们求生不得求死不能。”大烟王朝骆将军家嫡女骆初七，被心爱之人背叛，害的家族家破人亡，腹中孩子无法出生，满心怨恨，血溅家门前。却不想，上天垂怜，一朝重生，回到了那个改变她命运的一天。自此，恶灵重生，只为守护身边亲人，向那些害了她的恶人，讨回公道。",1),
(NULL,"/channel/putaway/808800037.jpg","总裁大人深度擒爱","嫣然如媚","一场意外，一夜之间她从高高在上的向家大小姐，变为被所有人遗弃的落魄千金。
五年时间，她一心只想涅槃重生，却没想到会在一场宴会上遭人设计，一夜荒唐，惹上权贵世家里的天之骄子段亦宸。
此后，她便只想远远逃离，却从未想到，他是毒，只要沾染上一次，便再难全身而退。",1),
(NULL,"/channel/putaway/805200013.jpg","热辣新妻","爷俊美无双","丈夫和小三车祸搞伤了，她是主治医生。",1),
(NULL,"/channel/putaway/60750295.jpg","我不愿过低配的生活","何日君回来","最怕你一生碌碌无为，还安慰自己平凡可贵。按自己的意愿过一生，但当你的才华还撑不起你的梦想时，努力，才配有未来。弱者与命运为敌，对生活放狠话；强者与命运为友，一路相伴而行。命运看似给你安排了很多条路，真要走起来，你会发现，其实只有继续这样下去而已，其他的根本不可行。",2),
(NULL,"/channel/putaway/60466842.jpg","川藏秘录","廖宇靖","数十年前，红四军一支特遣分队藏地离奇失踪；一面用六世达赖爱人皮肤做成的阿姐鼓神秘被盗；六篇尘封已久的诡异日记，那串奇怪的符号究竟意味着什么？漫漫高原路，追寻六世达赖喇嘛仓央嘉措的足迹，历史的神秘面纱正一层层地被揭开……",2);

-- 已阅读
create table al_read(
    rid int primary key auto_increment,
    rimg varchar(50),
    title varchar(20),
    updatetime varchar(20),
    section varchar(20),
    fid int,
    foreign key(fid) references user(uid)
);
insert into al_read values
(NULL,"/bookrack/read/5490.jpg","孤城闭","2015-07-07 09:38","楔子",1),
(NULL,"/bookrack/read/80001008.jpg","武逆乾坤","2015-05-28 00:00","第一章 废物南",1),
(NULL,"/bookrack/read/5490.jpg","孤城闭","2015-07-07 09:38","楔子",2);

-- 收藏
create table collect(
    rid int primary key auto_increment,
    rimg varchar(50),
    title varchar(20),
    updatetime varchar(20),
    section varchar(20),
    fid int,
    foreign key(fid) references user(uid)
);
insert into collect values
(NULL,"/bookrack/collect/804500088.jpg","不败剑神","2019-06-19 18:10","第1章　寒门少年",1);

-- 热书推荐
create table b_recommend(
    bid int primary key auto_increment,
    bimg varchar(50),
    btitle varchar(20),
    author varchar(10),
    intro varchar(500),
    fid int,
    foreign key(fid) references user(uid)
);

insert into b_recommend values
(NULL,"/bookrack/recommend/80001527.jpg","最强狂暴系统","九狂","左手诛仙剑，右手灭神刀，醒掌天下权，醉卧美人膝。收尽天下美女，做这个大陆最强男人！",1),
(NULL,"/bookrack/recommend/80002411.jpg","绝色王爷的傻妃","暖伊芯","当腹黑的大小姐遇上无耻的王爷，两人会擦出什么样的火花？",1),
(NULL,"/bookrack/recommend/80000447.jpg","帝凰之神医弃妃","阿彩","大婚当天，她在郊外醒来，衣衫褴褛，在众人的鄙夷下，一步一个血印踏入皇城……",1),
(NULL,"/bookrack/recommend/60593536.jpg","英雄联盟之决胜巅峰","机器人布里茨","时隔四年，重回赛场的他，干的第一件事，居然是帮同居的女主播坐镇直播间镇场子！",1),
(NULL,"/bookrack/recommend/80002323.jpg","诡妻","赤红色","捡到一幅美人图发现上面有九个一丝不挂的女子，而且每天晚上她们都会出来和我做那种羞羞的事情……",1);


