-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-23 21:23:10
-- 服务器版本： 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animal`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8_german2_ci NOT NULL COMMENT '发布文章内容',
  `title` varchar(45) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '发布文章主题',
  `pubtime` int(11) NOT NULL DEFAULT '0' COMMENT '发布文章时间',
  `click_count` int(11) NOT NULL DEFAULT '0' COMMENT '用户浏览量',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发表文章那个人的id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `content`, `title`, `pubtime`, `click_count`, `uid`) VALUES
(1, '<p>中央农村工作会议19日至20日在北京召开。	</p><p style="font-size:14px;">　　会议全面贯彻落实党的十八大和十八届三中、四中、五中、六中全会以及中央经济工作会议精神，总结“十三五”开局之年“三农”工作，分析当前农业农村形势，部署2017年农业农村工作。</p><p style="font-size:14px;"> </p><p style="font-size:14px;">　　<strong>习近平：<strong>推进农业供给侧结构性改革 做好“三农”工作</strong> </strong></p><p style="font-size:14px;">　　会前，中共中央总书记、国家主席、中央军委主席习近平主持召开中央政治局常委会会议，专门研究“三农”工作并发表重要讲话。</p><div><div></div></div><p style="font-size:14px;">　　习近平指出，今年农业农村形势总体较好，明年“三农”工作要继续为全局作贡献。<strong>要坚持新发展理念，把推进农业供给侧结构性改革作为农业农村工作的主线，培育农业农村发展新动能，提高农业综合效益和竞争力。</strong></p><p style="font-size:14px;">　　</p>\r\n	<p style="font-size:14px;">　　要始终重视“三农”工作，持续强化重农强农信号；	</p><p style="font-size:14px;">　　要准确把握新形势下“三农”工作方向，深入推进农业供给侧结构性改革；	</p><p style="font-size:14px;">　　要在确保国家粮食安全基础上，着力优化产业产品结构；	</p><p style="font-size:14px;">　　要把发展农业适度规模经营同脱贫攻坚结合起来，与推进新型城镇化相适应，使强农惠农政策照顾到大多数普通农户；	</p><p style="font-size:14px;">　　要协同发挥政府和市场“两只手”的作用，更好引导农业生产、优化供给结构；	</p><p style="font-size:14px;">　　要尊重基层创造，营造改革良好氛围。</p><p style="font-size:14px;"> </p><p style="font-size:14px;">　　中共中央政治局常委、国务院总理李克强在国务院常务会议上要求，要持续抓好“三农”工作，大力推进农业供给侧结构性改革，加快现代农业建设，积极调整农业结构，发展多种形式适度规模经营，深入开展农村“双创”，推动新型城镇化与农业现代化互促共进。深入推进脱贫攻坚，提高贫困地区和贫困群众自我发展能力。促进农业提质增效和农民持续增收，拓展农村发展空间。</p><p style="font-size:14px;">　　△视频：中央农村工作会议在京召开 习近平对做好“三农”工作作出重要指示 李克强提出要求</p><p style="font-size:14px;">　　<strong>全年1000万人的脱贫任务有望超额完成</strong></p><p style="font-size:14px;">　　会上，传达学习了习近平重要讲话和李克强指示要求，讨论了《中共中央、国务院关于深入推进农业供给侧结构性改革加快培育农业农村发展新动能的若干意见（讨论稿）》。中共中央政治局委员、国务院副总理汪洋出席会议并讲话。</p><p style="font-size:14px;">　　会议指出，今年以来，农业农村发展继续保持稳中有进的良好态势，为经济社会发展大局提供了有力支撑。<strong>全年1000万人的脱贫任务有望超额完成，脱贫攻坚实现良好开局。</strong></p><p style="font-size:14px;">　　<strong><strong>如何</strong> 推进农业供给侧结构性改革？</strong></p><p style="font-size:14px;">　　会议强调，<strong>推进农业供给侧结构性改革，要在确保国家粮食安全的基础上，紧紧围绕市场需求变化，以增加农民收入、保障有效供给为主要目标，以提高农业供给质量为主攻方向，以体制改革和机制创新为根本途径，</strong> 优化农业产业体系、生产体系、经营体系，提高土地产出率、资源利用率、劳动生产率，促进农业农村发展由过度依赖资源消耗、主要满足“量”的需求，向追求绿色生态可持续、更加注重满足“质”的需求转变。</p><p style="font-size:14px;"><img src="http://himg2.huanqiu.com/attachment2010/2016/1221/09/24/20161221092406486.png" alt="20161221092406486.png" /></p><p style="font-size:14px;">会议指出，<strong>推进农业供给侧结构性改革，首先要把农业结构调好调顺调优。</strong></p><p>\r\n	</p><p style="font-size:14px;">　　把提高农产品质量放在更加突出位置；	</p><p style="font-size:14px;">　　发展适度规模经营，优化经营结构，把促进规模经营与脱贫攻坚和带动一般农户增收结合起来；	</p><p style="font-size:14px;">　　重点建设好粮食生产功能区、重要农产品生产保护区、特色农产品优势区；	</p><p style="font-size:14px;">　　调整农业科技创新方向和重点，调动科技人员的积极性；	</p><p><br /></p>', '高质量的工作', 1482310666, 0, 6),
(2, '钢管舞国家队漠河零下33度挑战极寒<span>( <span> </span> / 7 )</span><div><span>发布时间： 2016-12-21 07:16:39</span>  |  <span>来源： <a href="http://news.china.com.cn/" target="_blank">中国网</a></span>  |  <span>作者： 东方IC</span>  |  <span>责任编辑： 焦源源</span></div><div><span>分享：</span> \r\n <div><a title="分享到微博" href=""><span></span></a> <a title="分享到QQ空间" href=""><span></span></a> <a title="分享到腾讯微博" href=""><span></span></a> <a title="分享到微信" href=""><span></span></a> <a title="分享到人人网" href=""><span></span></a> </div></div><p><a href="http://news.china.com.cn/2016-12/21/content_39953147_2.htm" target="_blank"><img src="http://images.china.cn/attachement/jpg/site1000/20161221/d02788e9b28a19c401c208.jpg" alt="d02788e9b28a19c401c208.jpg" /></a></p><p>2016年12月20日，黑龙江漠河，中国钢管舞国家队在中国最北部漠河北极村零下33度的环境尽展优美身姿。自2012年钢管舞国家队成立以来，每年冬天他们都会在漠河挑战严寒，磨练意志。东方IC</p><p><br /></p>', '钢管舞国家队漠河零下33度挑战极寒', 1482310730, 0, 6),
(3, '妙龄女百元一小时出租自己 “陪聊天”时险遭强奸<p><span>2016-12-21 06:46:00</span> \n                <span>来源：<a href="http://www.thepaper.cn/newsDetail_forward_1584006" target="_blank">澎湃新闻网</a></span>\n                                <span>责任编辑：</span>\n               \n                \n               \n              \n                                                                                     \n              </p><div><p>杭州市公安局下沙派出所日前处置一起因“出租自己”引发的刑事案，一名年轻女子在“出租自己”时险遭强奸。澎湃新闻12月20日从警方获悉，涉事男子阿华（化名）已被刑事拘留。</p><p>据警方介绍，当事人小倩（化名）正值妙龄，因身边有朋友做“出租女友”赚外快，决定效仿，在某软件上发布了一条出租自己的广告，主要是陪聊天、看电影、吃饭，定价是每小时100元。</p><p>12月初，30岁左右的阿华联系小倩，表示想租她聊天。“刚开始他说300元租3个小时，后面又说给1000元租一晚上，还要到旅馆房间见面。”小倩表示。</p><p>小倩称，她经过考虑答应了，但在见面前明确提出拒绝色情服务，“我想只是在房间里聊天，应该没什么问题。”</p><p>到房间后，没聊两句阿华就提出要发生关系，双方发生激烈争执。最后，在不发生实质性关系的前提下，小倩满足了对方一些过分要求。</p><p>事后，阿华留下1000元离开，小倩则在第一时间报警。阿华在接受调查时不承认强制猥亵，称是女方自愿的，之前双方约好了，钱也给了。目前，案件还在进一步调查。</p></div><p><br /></p>', '妙龄女百元一小时出租自己 “陪聊天”时险遭强奸', 1482310755, 0, 6),
(4, '<p>微博是这样写的：今天傍晚5点50分左右，我和<strong><a href="http://news.china.com/baike_5YWt5bCP6b6E56ul.html" target="_blank">六小龄童</a></strong>老师在宁波外景地拍电影，收工回去的路上，一辆车牌号为 浙B PG 的车不知何原因一直在别我们的车，进行危险驾驶，希望有关部门调查核实后给我们一个明确合理的解释，杜绝这种道路危险驾驶的存在。将此事引起重视，依法依规，作出结果后请回复！</p><p><strong>有辆车老是在前面骚扰</strong></p><p><strong>六小龄童遭遇惊魂一刻</strong></p><p>记者连夜行动，联系上这位网友，他是上海六小龄童艺术馆首席摄影师张克强。</p><p><img src="http://img1.utuku.china.com/650x0/news/20161221/ac47cd37-ffa1-4e72-8c79-1c1c2220a1ea.jpg" alt="12月19日，六小龄童摄影师在网上发布了一组六小龄童座驾遭遇疯狂别车的照片，希望有关部门调查核实后给出明确合理的解释。图为涉事车辆" /></p><p style="text-align:center;">12月19日，六小龄童摄影师在网上发布了一组六小龄童座驾遭遇疯狂别车的照片，希望有关部门调查核实后给出明确合理的解释。图为涉事车辆</p><p>张克强告诉记者，六小龄童正在宁波拍摄电影《财迷》，拍完电影回去的路上，遭遇了惊魂一刻。</p><p>当时车上有三个人，他和六小龄童，还有司机师傅。</p><p>一开始，两人在闲聊，突然车子一个急刹车，于是他们就询问，“司机师傅，怎么回事？”</p><p>司机说，有辆车一直在别我们的车。</p><p>张克强随后就转移到副驾驶座，看看车况。发现真的有一辆黑色轿车斜插到车子前面，停了一下，然后加速，又停下，又开动……</p><p><img src="http://img0.utuku.china.com/650x0/news/20161221/0420f01a-a650-4526-8e3a-1515e0617e28.jpg" alt="12月19日，六小龄童摄影师在网上发布了一组六小龄童座驾遭遇疯狂别车的照片，希望有关部门调查核实后给出明确合理的解释。图为涉事车辆" /></p><p style="text-align:center;">12月19日，六小龄童摄影师在网上发布了一组六小龄童座驾遭遇疯狂别车的照片，希望有关部门调查核实后给出明确合理的解释。图为涉事车辆</p><p>频繁刹车，频繁启动，微博图上的红色尾灯，就是当时的刹车截图。</p><p>张克强说，看到这一反常的情况，他用手机摄录了全程，微博上的照片都是当时的视频截图。</p><p><br /></p>', '六小龄童宁波遭遇惊魂一刻 被日系车疯狂别车(1)', 1482310777, 0, 6),
(5, '<div><div></div></div>探访乐视在美投资汽车厂：六七排简易房几辆汽车<div><strong>2016-12-21 07:51:00</strong>\r\n                        <strong><a href="http://www.huanqiu.com" target="_blank">环球时报</a></strong>\r\n\r\n                        \r\n                                                <span>\r\n                            孙卫赤                                                    </span>\r\n                                                <span>\r\n                            分享                            <em></em>\r\n\r\n                            \r\n                            </span><div></div>\r\n                        <span></span>\r\n                        <span><strong><a href="http://world.huanqiu.com/exclusive/2016-12/9839084.html?from=bdwz#thread" target="_blank">526</a></strong><em><a href="http://world.huanqiu.com/exclusive/2016-12/9839084.html?from=bdwz#thread" target="_blank">参与</a></em></span>\r\n                    </div><p style="font-size:14px;"><img src="http://himg2.huanqiu.com/attachment2010/2016/1221/07/52/20161221075220918.jpg" alt="20161221075220918.jpg" /></p>图说：法乐第未来公司的工厂，远远望去并没有什么人，显得十分冷清。——孙卫赤摄<p style="font-size:14px;">　　【环球时报驻<a href="http://country.huanqiu.com/america" title="美国" target="_blank">美国</a>特约记者 孙卫赤】还有十几天，<a href="http://country.huanqiu.com/china" title="中国" target="_blank">中国</a>互联网企业乐视就要在\r\n 2017年美国拉斯维加斯国际消费电子展(CES)上，展出乐视升级版概念车LeSEE Pro，乐视战略合作伙伴美国法乐第未来(Faraday \r\nFuture，简称FF)的首款量产车也将在CES上亮相。距新车发布不到半个月，乐视深陷“资金链断裂”“庞氏骗局”传闻，而法乐第未来也被媒体揭露“债务缠身”“工厂停工”。对乐视以及法乐第未来来说，即将发布的新车至关重要，但很多人对此存疑。近日，《环球时报》驻美国特约记者驱车前往内华达州北拉斯韦加斯市，近距离接触法乐第未来公司的电动汽车工厂。</p><p style="font-size:14px;"><strong>　　中美当事方发布的信息自相矛盾</strong></p><p style="font-size:14px;">　　今年4月13日，包括美联社在内的美国数十家主流媒体都报道了美国电动车制造商法乐第未来公司，在内华达州北拉斯韦加斯市郊沙漠地带的APEX工业园区，投资10亿美元建电动汽车制造厂的新闻。随后有媒体报道称，法乐第未来公司电动汽车的启动资金由中国亿万富翁提供，新的组装厂建在距拉斯韦加斯大道以北25英里尘土飞扬之处。这名富翁就是乐视总裁贾跃亭。</p><p style="font-size:14px;">　　就在破土动工后的1个月，内华达州财务长丹·施瓦茨就对法乐第未来公司的资金来源提出质疑，甚至称乐视总裁贾跃亭的金融运作手段是“庞氏骗局”。而从今年10月起，关于法乐第未来公司工厂的负面消息开始在媒体上出现。</p><div><div></div></div><p style="font-size:14px;">　　首先是工厂的建筑商AECOM称，法乐第未来公司没有支付应该在9月份付清的2100万美元工程预付款;11月中旬，多家美国媒体报道，AECOM已经停止对法乐第未来公司这个10亿美元电动汽车工厂项目进行施工，原因是法乐第未来公司背后“金主”贾跃亭的财务出现了问题。法乐第未来公司发言人也证实该公司暂停北拉斯韦加斯工厂建设的新闻，表示公司临时停止建厂，“我们计划在CES后新的一年开始建设，这是我们正在向前走的路”。</p><p style="font-size:14px;">　　但乐视方面一直否认美国工厂停工。日经中文网20日报道称，乐视副董事长、贾跃亭的哥哥贾跃民近日在接受采访时表示，“美国工厂现在阶段没有停工”。他还透露，乐视超级汽车两个月前完成了10.8亿美金的第一轮融资，未来汽车厂的建设就要靠这笔钱来投入。</p><p style="font-size:14px;">　　而对于乐视在美国工厂停工传闻，乐视内部人士对《环球时报》表示，有关FF的问题需要咨询FF公关人员或者查阅FF官方微博发布的声明。而记者查询法乐第未来官方微博发现，今年11月16日该公司发布声明称，媒体误解FF发言人的相关表述，声明还表示“FF从未停工，已顺利完成第一阶段建设，并将于明年2月进入建设的第二阶段”。</p><p style="font-size:14px;"><strong>　　记者实地调查：工人称已暂时</strong><strong>停工</strong></p><p style="font-size:14px;">　　当地时间15日，《环球时报》驻美国特约记者驱车前往法乐第未来公司的电动汽车工厂。从著名的拉斯韦加斯大道，记者用了大概半个小时进入了被北拉斯韦加斯市市长John\r\n \r\nLee称为“仅有的希望”Apex工业区。当然，路两侧的景致也发生了变化，除了零星几处大概是正在兴建的厂区外，放眼望去荒野一片。记者顺着路边“法乐第未来公司场地管理办公室”牌子指示的方向，来到该公司电动汽车工厂工地的门前。</p><p style="font-size:14px;">　　据法乐第方面的说法，今年4月份破土动工的电动汽车厂，占地面积3.64平方千米，建筑面积近28万平方米。而呈现在记者眼前的是，在一块用铁栅栏围起来的土地上，有六七排从外观上看不出用途的简易房，还有一处类似看门房和两个吊起来的罐状物，此外再无其他建筑。院子里停放有五六辆汽车和一辆工程用车，没有看见有人在院内走动。</p><p style="font-size:14px;">　　记者把车停在没有门的铁栅栏入口处，步行向院内走去。靠近看门房时，一位身着橘黄色马甲、头戴白色安全帽的工人走出来。记者问他这里是否是法乐第未来公司电动汽车工厂工地，他说是。记者再问，这里是否停工，他也说是。记者又问，为什么停工？他说自己是施工单位AECOM的人，不清楚为什么，但应该是暂时停工。当记者问能否进里面看看时，得到的回答是不可能。</p><p style="font-size:14px;">　　法乐第未来公司电动汽车工厂工地毗邻一家标牌为“Le Maitre USA LLC”的公司。记者和这家公司门口的几位工人攀谈时，其中一人告诉记者，法乐第未来电动汽车工厂停工已经有一段时间了，他们也知道这家工厂得到中国人的支持。</p><p style="font-size:14px;"><strong>　　乐视汽车到底在哪造</strong></p><p style="font-size:14px;">　　目前，法乐第官方网站正在首页显示CES展的倒计时，其官方微博也在宣传“FF全球首款互联网生态电动量产车将在拉斯维加斯重磅发布”。而围绕乐视和法乐第汽车的传闻一直没有停止。</p><p style="font-size:14px;">　　据记者观察，乐视汽车在公众面前亮相两次。今年4月，乐视在北京宣布推出一款名为LeSEE的时尚电动轿车。今年10月，乐视在美国旧金山展示LeSEE Pro超级电动汽车。</p><p style="font-size:14px;">　　不过，欧美媒体对于乐视电动汽车的自动驾驶功能提出质疑。路透社10月24一篇题为“中国乐视公布了一辆车，但不能开”的报道称，乐视在旧金山现场展示的这辆车是从<a href="http://country.huanqiu.com/united_kingdom" title="英国" target="_blank">英国</a>紧急运到现场的，因为这辆车正在英国拍摄“变形金刚5”。美国著名商业媒体Buzzfeed新闻也在12月14日刊载的报道中披露，当时看似自动驾驶的白色轿车滑过舞台时，其实是通过在观众看不到的后台遥控完成的。</p><p style="font-size:14px;">　　针对欧美媒体的质疑，乐视内部人士在接受《环球时报》采访时表示，今年LeSEE与战略合作伙伴FF已经在硅谷成立了人工智能研究院(FF&amp;LeFuture\r\n AI Institute)，并表示下个月在FF量产车发布会上，将会正式展示自动驾驶方面目前最为先进的功能，“相信也会解答您的疑问”。</p><p style="font-size:14px;">　　而对于乐视此前展出的汽车，以及即将在CES展亮相的汽车具体是在哪里制造的，乐视内部人士对此避而不答。该人士表示，乐视此前分别展示了LeSEE首款概念车和升级版概念车LeSEE Pro，乐视超级汽车首个智能互联网制造基地本月底将在浙江德清奠基。</p><p style="font-size:14px;">　　在国内，乐视还有浙江和天津两个投资总额超过600亿人民币的汽车园区项目。有媒体报道称，乐视在浙江莫干山的“超级汽车工厂”项目，规划地长满杂草，园区内无施工迹象。乐视汽车发布声明称，浙江莫干山工厂进展顺利，天津蓟县工厂尚需进一步商洽。</p><p>　　麻烦归麻烦，乐视并没有因此停止前进的步伐。除了今年初以20亿美元收购电视机制造商Vizio外，乐视还花费2.5亿美元在加州的圣塔克拉拉县收购49英亩土地，计划在此创建一个“生态城市”，可容纳1.2万名员工。另据介绍，目前乐视在美国员工有大约500人。</p><p><br /></p>', '探访乐视在美投资汽车厂', 1482310800, 0, 6),
(6, '<p>莞阳光网讯在谢岗镇经营酒类生意的王先生，周末外出访友时用两千多块从一老伯手上买了一个近七斤重的“<strong><a href="http://news.china.com/baike_5Lq65b2i5L2V6aaW5LmM.html" target="_blank">人形何首乌</a></strong>”。王先生告诉记者，这个“人形何首乌”是野生的，还说，如果野生何首乌要达到这个重量，至少要生长70年以上。不知道各位街坊是否见过样“霸气”的何首乌？今天我们一起去“见识”一下。</p><div><div></div></div><p>在王老板经营的酒庄里，记者看到了这个用了两千多块钱买来的“人形何首乌”，只见它全身表面呈棕色、约60厘米高，像人形一样的何首乌的眼、鼻子、手、甚至双脚等各部位都长的十分匀称。</p><p><img src="http://img1.utuku.china.com/585x0/news/20161221/9c55d090-71e1-4a9e-a5dc-2e7adbcc761f.jpg" alt="男子花2千买7斤重“人形何首乌”:70年才长这样(图)" /></p><p>人形何首乌</p><p>王先生：“（12月18日）下午三点多钟，我在惠州仲恺路段那里发现一个老人，云贵的，他拿着这个（何首乌），好像在清洗吧，然后我感觉非常好奇，就买下来了。（你用多少钱买下来的）两千来块钱。”</p><p>那到底是什么原因促使王先生毫不犹豫地用两千多买了这个“人形何首乌”呢？</p><p>王先生：“(因为)我以前在网上有观察过，说何首乌对人身体非常好，可以护肝、袪湿、通经活络，有这样的功能，所以我看见了就想把它买下来。人形何首乌嘛，它长的形状是接近于人的造型，人的五官呀、四肢呀都会有的。”</p><p><br /></p>', '男子花2千买7斤重“人形何首乌”', 1482310826, 0, 6),
(7, '<div><p><strong>十八大以来10名原省部级及以上官员获无期徒刑</strong> <strong>原省部级及以上获刑官员</strong> <strong>宣判时间</strong> <strong>刑期</strong> <strong>受贿金额</strong></p><span><strong>十八大以来10名原省部级及以上官员获无期徒刑</strong></span><strong>原省部级及以上获刑官员</strong><strong>宣判时间</strong><strong>刑期</strong><strong>受贿金额</strong>山西省原副省长杜善学2016年12月20日无期徒刑8011.47万元山西省人大常委会原副主任金道铭2016年10月14日无期徒刑1.24亿元海南省原副省长谭力2016年10月13日无期徒刑8625.4万元中国科协原党组书记、常务副主席申维辰2016年10月11日无期徒刑9541.97万元广东省委原常委、广州市委原书记万庆良2016年9月30日无期徒刑1.11亿元中央军委原副主席郭伯雄2016年7月25日无期徒刑认定受贿全国政协原副主席、中共中央统战部原部长令计划2016年7月4日无期徒刑7708.54万元中共中央政治局原常委周永康2015年6月12日无期徒刑1.298亿元国家发展和改革委员会原副主任、国家能源局原局长刘铁男2014年12月10日无期徒刑3558万余元内蒙古自治区党委原常委、统战部原部长王素毅2014年7月17日无期徒刑1073万余元人民网制表，信息截至2016年12月20日<p style="text-align:center;"> </p><p>人民网北京12月21日电\r\n \r\n12月20日，山西省原副省长杜善学和山西太原市委原书记陈川平被同日宣判，杜善学被判无期徒刑，陈川平被判处六年六个月有期徒刑。至此，据公开报道统计，十八大以来落马的原省部级及以上官员中50人已获刑，其中10人被判处无期徒刑，占比20%。</p><p>昨日，江苏省徐州市中级人民法院公开宣判山西省委原常委、山西省人民政府原副省长杜善学受贿、行贿、巨额财产来源不明案，对被告人杜善学以受贿罪判处无期徒刑，剥夺政治权利终身，并处没收个人全部财产；以行贿罪，判处有期徒刑三年；以巨额财产来源不明罪，判处有期徒刑七年，决定执行无期徒刑，剥夺政治权利终身，并处没收个人全部财产。杜善学成为十八大以来落马的原省部级及以上官员中第10位获无期徒刑者。</p><p>2014年7月，内蒙古自治区党委原常委、统战部原部长王素毅一审获无期徒刑，被剥夺政治权利终身，王素毅成为十八大后首个被判无期的原省部级官员。同年12月，国家发改委原副主任刘铁男受贿案公开宣判，其以受贿罪被判处无期徒刑。</p><p>2015年落马高官中，仅周永康1人获无期徒刑。</p><p>而包括令计划、郭伯雄在内，2016年以来共有7名“大老虎”被判处无期徒刑，另外5名分别是广东省委原常委、广州市委原书记万庆良，中国科协原党组书记、常务副主席申维辰，海南省原副省长谭力和山西省人大常委会原副主任金道铭，山西省原副省长杜善学。</p><p>不仅2成落马高官获刑无期，今年10月9日，全国人大环境与资源保护委员会原副主任委员白恩培被判死刑，缓期二年执行，成为十八大以来“大老虎”被判死刑的第一人。此后，11月11日，广东省政协原主席朱明国受贿、巨额财产来源不明案，内蒙古自治区政协原副主席赵黎平故意杀人、受贿、非法持有枪支、弹药、非法储存爆炸物案同日宣判，两人分别被判处死缓、死刑。</p><p>另外值得一提的是，除上述被判死刑、死缓和无期徒刑的13人外，十八大以来被判刑的50名落马“大老虎”中，仅湖南省政协原副主席童名谦，环境保护部原副部长张力军，河北省委原常委、组织部部长梁滨，山西太原市委原书记陈川平4人刑期低于10年，其余33人被判处11年至20年不等的有期徒刑。</p></div><div></div><div></div><div></div><p> \r\n               \r\n\r\n            \r\n        		\r\n\r\n		</p><div>本文系转载，不代表参考消息网的观点。参考消息网对其文字、图片与其他内容的真实性、及时性、完整性和准确性以及其权利属性均不作任何保证和承诺，请读者和相关方自行核实。</div><p><br /></p>', '十八大以来10名原省部级及以上官员获无期徒刑', 1482310872, 0, 6),
(8, '<p><br /></p><p><br /></p>即使韩国国会已经通过了对朴槿惠的弹劾案，韩国民众的周六“倒朴”集会依然没有停止。<div><p>据央视新闻消息，12月17日，韩国大批民众展开第八次烛光集会，要求被停职总统朴槿惠立即下台。</p><p>反朴槿惠示威者在首尔市中心集会，随后兵分三路，游行至青瓦台附近、总理办公室及宪法法院附近等。集会组织单位称，韩国各地有77万民众参加了烛光集会，仅在首尔就有65万人。</p><p><img src="http://n.sinaimg.cn/translate/20161218/qajE-fxytqec1239286.jpg" alt="qajE-fxytqec1239286.jpg" /></p><p>17日晚，韩国民众在首尔举行集会，要求朴槿惠立即下台。（图：视觉中国）</p><p>此外，本次集会还要求韩国代总统黄教安也下台。集会的组织者表示，目前代行总统职权的黄教安总理及其领导的全体内阁成员都应辞职。他称，民众需要的是一个新的总理，并由新总理组建一个新的内阁，来促成一个没有腐败的公平社会，尽早稳定国家。</p><p><img src="http://n.sinaimg.cn/translate/20161218/YqyO-fxytqec1239294.png" alt="YqyO-fxytqec1239294.png" /></p><p><img src="http://n.sinaimg.cn/translate/20161218/1Jb4-fxytqax6479622.png" alt="1Jb4-fxytqax6479622.png" /></p><p>另一方面，朴槿惠支持者则于17日下午在青瓦台附近举行“挺朴”集会。他们挥舞国旗、手持玫瑰，抗议国会通过弹劾案。</p><p>据中新社报道称，“挺朴”集会比“倒朴”集会规模要小得多，约3万民众参加，大部分为年长者。朴槿惠支持者们表示，要求朴槿惠下台的示威民众都遭误导，指弹劾“无效”，要求解散“烂透”的国会。</p><p><img src="http://n.sinaimg.cn/translate/20161218/7qDI-fxytqec1239296.png" alt="7qDI-fxytqec1239296.png" /></p><p>朴槿惠支持者们手持国旗和玫瑰，抗议国会通过弹劾案。（央视新闻截图）</p><p>此前，朴槿惠的法律团队向法院正式提出对弹劾的24页答辩，主张弹劾指控并无法律根据。朴槿惠的律师之一李中焕称，违宪指控难以接受，违法指控没有证据，律师团将据理力争。</p>\r\n	\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n			\r\n\r\n\r\n			</div><p><br /></p>', '韩国国会已经通过了对朴槿惠的弹劾', 1482310920, 0, 6),
(9, '<p>【环球网报道记者查希】据美国有线电视新闻网(CNN)12月20日报道，<strong><a href="http://news.china.com/baike_5aKo6KW_5ZOl.html" target="_blank">墨西哥</a></strong>城附近一家大型烟花爆竹工厂发生爆炸。据外媒披露，墨西哥警方初步估计，或已有9人死亡，70人受伤。路透社报道，墨西哥当地应急部门称，爆炸已经导致27人死亡。</p><div><div></div></div><p>墨西哥国家民防局协调员路易斯•费利佩•蓬特(Luis Felipe Puente)在介绍情况时称，爆炸发生在墨西哥城北大约40公里处，烟花是这一地区的主要产业。 据报道，紧急救援人员正在现场评估破坏情况。</p><p><img src="http://img1.utuku.china.com/650x0/news/20161221/91df0b2b-cf2b-416c-a871-58ccd35d020c.jpg" alt="墨西哥烟花市场发生严重爆炸事故 至少10死70伤(图)" /></p><p>现场浓烟滚滚。爆炸发生后，市场的购物者慌忙寻找庇护场所，躲避爆炸伤害。</p><p><img src="http://img2.utuku.china.com/608x0/news/20161221/4333346b-5722-4301-97f0-69d9fdb9818b.jpg" alt="墨西哥烟花市场发生严重爆炸事故 至少10死70伤(图)" /></p><p>图为现场。</p><p><img src="http://img0.utuku.china.com/650x0/news/20161221/97ef3cc5-299f-4134-9e44-1fea4141a762.jpg" alt="目前救援部队已赶到现场，用直升机把伤者送往医院。" /></p><p>目前救援部队已赶到现场，用直升机把伤者送往医院。</p><p><br /></p>', '墨西哥一烟花市场发生爆炸', 1482310966, 0, 6),
(10, '<strong></strong><strong>baby黄晓明豪宅曝光 壕气满满符合人设</strong>\n                <span>(<em>1</em>/<em>4</em>)</span>\n                <a title="全屏播放" href=""><span>全屏播放</span></a>\n                <a href="http://himg2.huanqiu.com/attachment2010/2016/1221/07/05/20161221070551731.png" title="查看原图" target="_blank"><span>查看原图</span></a>\n            <div><div><div><div><div><div><a href="">\n                                        <img src="http://himg2.huanqiu.com/attachment2010/2016/1221/07/05/20161221070551731.png" alt="" />\n                                    </a>\n                                </div><a title="向左滚动" href="">\n                                    \n                                </a>\n                                <a title="向右滚动" href="">\n                                    \n                                </a>\n                            </div></div></div></div><div><div><div></div></div></div></div><div><ul><li><div><span>2016-12-21 07:05</span>\n                        </div></li><li><div><span>网易娱乐</span>\n                    </div></li><li><div><span>责编：王清妍</span>\n                        </div></li></ul><ul><li><a href="http://ent.huanqiu.com/star/mingxinglunbotu/2016-12/2856006.html?from=bdtp#comment" target="_blank"><span>我有话说</span></a>\n                    </li><li><br /></li><li><a href=""><span>图集详情</span></a>\n                    </li><li><span>支持键盘</span><span>翻页</span>\n                    </li></ul></div><div><a href="http://ent.huanqiu.com/star/mingxinglunbotu/2016-12/2856005.html" target="_blank">\n                    <img src="http://himg2.huanqiu.com/attachment2010/2016/1221/07/03/20161221070352203.png" alt="宋佳清凉打扮戏水 肤白貌美腿长还有胸" />\n                    <span>&lt; 上一图集</span>\n                </a>\n                <a href="http://ent.huanqiu.com/star/mingxinglunbotu/2016-12/2855855.html" target="_blank">\n                    <img src="http://himg2.huanqiu.com/attachment2010/2016/1220/06/51/20161220065102361.jpg" alt="腿玩年！杨幂流苏裙大晒玉腿身材傲人" />\n                    <span>&gt; 下一图集</span>\n                </a>\n                <div><div><a href=""><span>1</span></a><a href=""><span>2</span></a><a href=""><span>3</span></a><a href=""><span>4</span></a></div></div></div><div>本网登载图片出于更直观传递信息之目的，并不代表本网赞同其观点和对其真实性负责，谢绝转载。如该图片涉及任何第三方合法权利，请及时与lawyer@huanqiu.com联系。</div><strong></strong><br /><p><br /></p>', 'baby黄晓明豪宅曝光 壕气满满符合人设', 1482311001, 0, 6),
(11, '赵雅芝儿子陈红儿子近照太帅 但都没谭咏麟儿子帅<div>2016年12月21日 11:57:51  来源：腾讯娱乐<div><div>\n\n\n	</div><div><a href=""><img src="http://ats.taiwan.cn/images/jingmao_34.gif" alt="jingmao_34.gif" /></a>字号：<a href="">小</a>  <a href="">中</a>  <a href="">大</a></div></div></div><div><div><p><img alt="" src="http://ent.taiwan.cn/mlkp/201612/W020161221372839425267.jpg" width="550" height="364" /></p><p>　　都说赵雅芝一家颜值高，尤其是帅气的儿子，帅的都可以和她妈组CP了！！！嗯,事实确实如此,不管是侧面正面照，五官都没得挑~</p></div>\n		<p>[责任编辑：黄露佳]</p></div><p><br /></p>', '赵雅芝儿子陈红儿子近照太帅', 1482311024, 0, 6),
(12, '<p>原标题：总理力推，国家职业资格目录清单公示了！（含最全名单）</p><p>　　刚刚过去的周末开心么？又一个好消息要送给你。</p><p>　　在上个月的一场国务院常务会议上，李克强总理要求相关部门，抓紧建立职业资格目录清单向社会公布。</p><p>　　“哪些职业需要资格许可，都要明明白白列出来向社会公布。在清单之外，各部门除特殊需要外再不许新设各种资格‘头衔’！”总理说。</p><p>　　就在这个月的16号，人力资源和社会保障部公示了国家职业资格目录清单，拟列入职业资格目录清单151项。其中，专业技术人员职业资格58项，技能人员职业资格93项。</p><div><img src="http://n.sinaimg.cn/translate/20161219/Ksn6-fxytyzp5130445.jpg" alt="" /><span></span></div><p>　　要注意了，现在是公示阶段。如果你有任何意见建议，可以于2016年12月22日之前将署名意见建议反馈至邮箱zhichengchu@mohrss.gov.cn。</p><p>　　国家职业资格目录清单（151项）</p><div><img src="http://n.sinaimg.cn/translate/20161219/Mq8s-fxytyzp5130447.jpg" alt="" /></div><div><img src="http://n.sinaimg.cn/translate/20161219/eOOh-fxytqax6716972.jpg" alt="" /></div><p><br /></p>', '总理力推 国家职业资格目录清单公示', 1482311059, 0, 6),
(13, '<p>原标题：国共两党将于23日在京举办对话交流活动</p><p>　　新华社北京12月20日电（记者查文晔）国台办发言人安峰山20日表示，经国共两党有关方面协商，双方将于12月23日在京举办两党对话交流活动，围绕两党和两岸关系有关议题交换意见，积极落实两党领导人会面达成的共识，促进两岸交流合作，维护台海稳定与两岸关系和平发展。</p><p>　　另外，针对有记者问，台湾地区立法机构日前初审通过“公民投票法”修正草案，大幅降低公投各项门槛，请问对此有何评论？安峰山应询表示，我们坚决反对任何势力以任何方式，包括以所谓“立法”“修法”的方式，进行“台独”分裂活动，或为“台独”分裂活动打开方便之门。</p><p>　　<a href="http://mil.news.sina.com.cn/jssd/2016-12-21/doc-ifxytqax6947341.shtml" target="_blank">川蔡通话后大陆开始对台割喉战 又一国宣布与台断交</a></p><p>　　<a href="http://mil.news.sina.com.cn/china/2016-12-19/doc-ifxytqax6659271.shtml" target="_blank">解放军中将称夺台“以小时计算” 台陆委会回应</a></p><p>　　<a href="http://mil.news.sina.com.cn/china/2016-12-18/doc-ifxytqax6496360.shtml" target="_blank">国台办前副主任：和平统一台湾的可能性已越来越小</a></p><p>\r\n	</p><p>责任编辑：隗俊</p><p>\r\n\r\n\r\n\r\n			\r\n\r\n\r\n			</p><div>\r\n\r\n			<div>\r\n			<span>文章关键词：</span>\r\n			  <a href="http://tags.news.sina.com.cn/%E5%8F%B0%E6%B9%BE" target="_blank">台湾</a> <a href="http://tags.news.sina.com.cn/%E5%9B%BD%E5%8F%B0%E5%8A%9E" target="_blank">国台办</a> <a href="http://tags.news.sina.com.cn/%E5%85%AC%E6%8A%95%E6%B3%95" target="_blank">公投法</a> <a href="http://tags.news.sina.com.cn/%E4%BF%AE%E6%AD%A3%E6%A1%88" target="_blank">修正案</a> <a href="http://tags.news.sina.com.cn/%E5%88%9D%E5%AE%A1" target="_blank">初审</a> \r\n			</div><div><a href="http://comment5.news.sina.com.cn/comment/skin/feedback_1.html?channel=ly&amp;newsid=3" target="_blank">我要反馈</a>\r\n              <a href="http://roll.news.sina.com.cn/savepage/save.php?url=http%3A%2F%2Fnews.sina.com.cn%2Fc%2Fgat%2F2016-12-21%2Fdoc-ifxytqax6906107.shtml&amp;ie=utf8" target="_blank">保存网页</a>\r\n            </div>\r\n			<div><div><img alt="新浪新闻" src="http://n.sinaimg.cn/news/content2014/news_con_qrcode.jpg" /></div></div>\r\n\r\n			</div><p>\r\n		</p><div><div>\r\n				</div></div><div><div></div></div><p>\r\n		</p><div><div>相关阅读</div><div></div></div><div><a href="http://news.sina.com.cn/sf/news/2016-12-21/doc-ifxytqaw0185644.shtml?cre=newspagepc&amp;mod=f&amp;loc=1&amp;r=9&amp;doct=0&amp;rfunc=67" target="_blank">台“立法院”通过“公投法”修正案 国台办回应</a><div><div><a href="http://news.sina.com.cn/sf/news/2016-12-21/doc-ifxytqaw0185644.shtml?cre=newspagepc&amp;mod=f&amp;loc=1&amp;r=9&amp;doct=0&amp;rfunc=67" target="_blank">新华社北京12月20日电（记者查文晔）国台办发言人安峰山20日表示，经国共两党有关方面协商，双方将于12月23日在京举办两党对话交流活动...</a><a href="http://news.sina.com.cn/sf/news/2016-12-21/doc-ifxytqaw0185644.shtml?cre=newspagepc&amp;mod=f&amp;loc=1&amp;r=9&amp;doct=0&amp;rfunc=67" target="_blank">[详细]</a></div></div><div><div>今天10:00</div><div><a href="http://tags.news.sina.com.cn/%E5%85%AC%E6%8A%95%E6%B3%95" target="_blank">公投法</a><a href="http://tags.news.sina.com.cn/%E4%B8%A4%E5%B2%B8%E5%85%B3%E7%B3%BB" target="_blank">两岸关系</a><a href="http://tags.news.sina.com.cn/%E5%9B%BD%E5%8F%B0%E5%8A%9E" target="_blank">国台办</a></div><div><a href="">评论(5)</a><span>|</span><span><span>分享</span></span></div></div></div><a href="http://news.sina.com.cn/c/2016-11-18/doc-ifxxwmws3148272.shtml?cre=newspagepc&amp;mod=f&amp;loc=2&amp;r=9&amp;doct=0&amp;rfunc=67" target="_blank">宋楚瑜出席APEC 称未被授权谈两岸问题</a><p><br /></p>', '台机构初审通过“公投法', 1482311084, 0, 6),
(14, '<div>韩检方对崔顺实女儿发逮捕令:妨碍公务护照作废</div><p>\r\n\r\n\r\n	</p><div><div><div>             			</div></div></div><div>\r\n	<span>2016年12月21日13:34		<span><span><a href="http://world.huanqiu.com/exclusive/2016-12/9841164.html" target="_blank">环球网</a></span></span>\r\n	</span>\r\n    </div><div>韩检方对崔顺实女儿发逮捕令:妨碍公务护照作废<div><div>             \r\n			  \r\n              \r\n			  \r\n              			</div></div></div><p>         \r\n          \r\n    \r\n  \r\n      \r\n\r\n	  \r\n	  \r\n	  \r\n	  	       \r\n        \r\n\r\n        			\r\n\r\n\r\n						</p><div>\r\n		<img alt="资料图：崔顺实的女儿郑维罗" src="http://n.sinaimg.cn/news/transform/20161221/UYZc-fxytqec1617294.png" /><span>资料图：崔顺实的女儿郑维罗</span>\r\n	</div><p>\r\n	\r\n	</p><p>　　【环球网综合报道 记者 赵衍龙】台湾“中央社”12月21日报道称，韩国朴英洙独立检察组今天表示，“亲信门”主角崔顺实的女儿郑维罗涉嫌妨碍公务，已签发对她的逮捕令，并将其护照作废，德国将以非法滞留理由将她驱逐出境。</p><p>　　韩国“亚洲经济”指出，独立检察组在今天的新闻发布会上表示，“对(身在德国的)郑维罗申请的逮捕令已获签发。(我们)计划请求德国检方协助调查。”</p><p>　　据报道，韩国朴英洙独立检察组敦促德国当局协助内容包括：确认郑维罗所在地、搜集调查纪录和交易、通话纪录、冻结其在德国当地的财产等。</p><p>　　去年以“马术专才生”走后门进入梨花女子大学的郑维罗，在入学时及在校期间涉嫌受到特殊照顾，她已于日前自行退学。</p><p>　　但首尔市教育厅对郑维罗就读的首尔清潭高中进行调查发现，郑维罗旷课超过校规期限，在校课业也未达标准，因此，取消了她高中毕业的学历资格。目前，年仅20岁并育有近两岁儿子的她，最终学历仅为国中毕业。</p><p><br /></p>', '韩检方对崔顺实女儿发逮捕令', 1482311104, 0, 6),
(15, '<p>　<span style="font-family:''KaiTi_GB2312'', KaiTi;">曹德旺告诉我们：不深化改革，中国制造很危险</span></p><p>　　来源：澎湃新闻</p><p>　　这两天，曹德旺谈中美制造业成本差异的视频，在微信圈里广为流传，各种刷屏，点击率直升至全球“小电影”排行榜首位。</p><p>　　曹德旺是<span><a href="http://finance.sina.com.cn/realstock/company/sh600660/nc.shtml" target="_blank">福耀玻璃</a></span><span>(<span style="color:#FF0000;">18.550</span>, <span style="color:#FF0000;">0.56</span>, <span style="color:#FF0000;">3.11%</span>)</span>的老板，我喜欢他，因为他是中国慈善事业捐助最多的大善人。视频上说，他在美国投资十亿美元做玻璃，理由是，中国除了人便宜，什么都贵，中国的税是全球最高，在美国做玻璃能比中国多赚百分之十几。</p><p>　　接下来，各种跟帖、评论就“锦上添花”地找证据、挖数据，论证曹老板说的对。说，我们有全球最高的“死亡税率”，全球上涨最快的工资，全球最贵的土地成本，全球最贵的能源成本，全球最贵的融资成本，全球最贵的交易成本！中国就是这么神奇，一不小心就创造奇迹，这些全球之最，逼着曹老板去了美国。</p><p>　　这个视频我反复看了好几遍，我觉得，曹老板说的最后几句才是重点。</p><p>　　“救了你一年，明年怎么办？”，“拖一年，就严重一年”，“中国是中国人的中国，中国的精英要出来解决这个问题。”“有困难我们必须正确对待，为什么要悲观？”</p><p>　　说说我的看法。</p><p>　　第一，曹老板海外投资很正常，产业转移不是以哪国、哪届政府的意愿而动，曹老板也不是奔着川普去的。观察二十年，投资是十个亿，是市场行为。</p><p>　　第二，曹老板是造玻璃的，不能代表中国的所有制造业，中国制造业现在还不会死。曹老板说了，中国有在美国招不到的年轻人，这是我们最宝贵的资源。</p><p>　　最后，搞研究、搞媒体的，不能老是停留在问题层面发牢骚，像曹老板说的要想办法解决这些问题。</p><p>　　<strong>我认为，曹老板说的是改革，是供给侧改革！</strong></p><p>　　从改革角度看，这些成本差距就是体制改革滞后产生的成本楔子，钉在了一个个制造业企业身上。如果通过改革，把成本降下来，把楔子拔下来，制造业企业就能活下来，留下来，发展起来。这也是当前供给侧改革最应该做的事。</p><p>　　<strong>税费高，说明“营改增”还不够，企业所得税要降低。</strong></p><p>　　我国的名义宏观税负全球最高基本做实了，但是考虑到各地方政府的税收优惠、税收返还等因素难以统计，实际宏观税负高低排名不能确定。</p><p>　　制造业企业之所以感受不到温暖了，是因为各地政府都在“退二进三”战略指导下，移情别恋，税收优惠政策偏向了金融等现代服务业。</p><p>　　从今年5月1日起，全面实施“营改增”。但是，实施效果不佳，企业并没有感觉到明显的税负下降，看来只是“营改增”还不够。企业所得税必须要减了。当初，为了吸引外资，能搞15%的所得税优惠；现在，为了拯救濒临危机的本土制造业，why\r\n not？川普要是做到了，我们还不降，曹老板们会更多。</p><p>　　<strong>地价贵，说明土地配置有扭曲，产业用地制度要突破。</strong></p><p>　　成也萧何败也萧何。土地“招拍挂”制度，催生巨额土地资本化红利的同时，也推高了地价，挤压了制造业的利润空间。现在，我们的土地成本是美国的几倍、十几倍。</p><p>　　随着产业结构调整，各地的工业区、开发区面临土地“二次”开发的需求，其实，我们不需要那么多土地来发展服务业。有些地方政府，为了追求第三产业比例，土地利用方向和容积率卡的很死，即使环保过关，也不给制造业企业供地，或者要跟金融机构一起“招拍挂”，吊丝pk高富帅么？</p><p>　　目前这种产业用地制度，要改革。实行土地弹性出让制度，工业土地使用期限不一定非要50年，可以搞10年，20年，这样企业的用地成本会下来一部分。现代制造业智能化水平提高了，可以在大楼里生产了，厂房车间变大楼，容积率不要卡的那么死。</p><p>　　<strong>用能贵，说明国资垄断低效，能源专营要改。</strong></p><p>　　曹老板说，美国电价和燃气价比中国低，这个问题不用多说，症结还在国资垄断。我国的电力体制改革和石油、天燃气领域的改革也在深入推进，但关键问题并没有破解。</p><p>　　电改出了一批方案和文件，也建立了电力交易所，还是在原有的框框里打转转，<span><a href="http://finance.sina.com.cn/realstock/company/sh603883/nc.shtml" target="_blank">老百姓</a></span><span>(<span style="color:#FF0000;">47.230</span>, <span style="color:#FF0000;">0.46</span>, <span style="color:#FF0000;">0.98%</span>)</span>和市场主体没有什么获得感。石油和天燃气领域，更是三桶油雄霸天下，油气专营体制不破，民间资本不进入，效率不能激发出来，价格就会居高不下。听说，石油天燃气体制改革方案，正在抓紧制定，将于近期出台，希望从勘探、加工到销售等各个环节都能有所突破。</p><p>　　<strong>融资难，说明金融市场不完善，民营银行要加快。</strong></p><p>　　民营企业融资难、小微企业融资难，各种研究文献都堆成山了。民营银行的设立和发展还是步履维艰，多建几个网点自己算了都不算。互联网金融出了点问题，就以部门通知、红头文件方式喊停，一群最懂市场经济的监管精英竟然简单粗暴地动用了行政手段。</p><p>　　面对私营企业和小微企业的融资业务，不能再让国有银行来搞，步子要大一些，资源在国有银行与国有企业之间无效空转，不如引到民资领域让民营企业家折腾折腾。</p><p>　　<strong>不透明，说明隐形壁垒很普遍，市场准入要改革。</strong></p><p>　　曹老板说，除了以上成本，还有政策成本，也就是跟政府打交道的成本。这届政府一上台，就从政府自身改革着手，要求下好政府职能转型先手棋。取消各种审批，下放权力，效果还是有的，市场主体也享受到了很多便利，但还不够。</p><p>　　对民营企业来说，落到纸上的政策文件，比如非公36条、新36条，都很好，但是，卡在了更进一层次的操作层面。民营企业家各种陪标、陪会、陪笑，搞的人家原地打转，不给糖吃。一些PPP项目，在谈判过程中，地方政府诚信缺失，不兑现承诺，最后成了各种国资一起搞，变了味。</p><p>　　所以，市场准入的体制机制要改，实行各类市场主体平等进入、公平竞争的市场准入负面清单制度，这方面，国家已出台了政策，要在2018年全国实施，希望能有实质性动作，切实让市场准入门槛降低，市场准入领域拓宽，市场经济活力迸发。</p><p>　　最后，我想说：曹德旺不是第一个发现这个公开秘密的人，但是曹老板在这个时刻提醒我们，如果不采取一定措施，深化改革的话，中国的制造业是很危险的。</p><p>　　如果，曹老板能借此机会，吸引更多的观众，深一层思考改革，而不只是转发牢骚的话，我还是会一如既往的喜欢他，也算是他为祖国做的最大一件善事。</p><p>　　（本文经授权转自微信公众号：复新评论。原题为：“看懂了么，曹德旺说的是改革！”）</p><div><div>欢迎参与调查</div><div>你认为中国企业税负高不高？</div><div><div><div></div><div>高</div></div><div><div></div><div>不高</div></div><div><div></div><div>不清楚</div></div><div><div></div><div>其他</div></div></div><div>会有更多曹德旺们“跑”掉吗？</div><div><div><div></div><div>会</div></div><div><div></div><div>不会</div></div><div><div></div><div>不好说</div></div></div><div><span>您还未登录，该调查需要<a href="">登录</a>后参与。</span></div></div><div><div><div><span></span><a href="http://survey.finance.sina.com.cn/result/115845.html" title="查看" target="_blank">查看调查结果</a></div></div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		   \r\n	    \r\n	    \r\n	    \r\n	\r\n	    \r\n	    \r\n	    \r\n	    \r\n	    \r\n	    \r\n	    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		\r\n	    \r\n	    	\r\n		\r\n			\r\n		\r\n	<div><p>进入<a href="http://guba.sina.com.cn" target="_blank">【新浪财经股吧】</a>讨论</p></div>\r\n\r\n\r\n\r\n\r\n	\r\n\r\n	</div><p>               								\r\n				</p><p>责任编辑：陈楚潺</p><p>\r\n				</p><div>\r\n	<div><div><div><div><img src="http://n.sinaimg.cn/finance/article/tg_app_2016/tg_client_front_8.png" alt="下载新浪财经app，赢iphone7" width="510" height="320" />\r\n            </div><div><img src="http://n.sinaimg.cn/finance/article/tg_app_2016/tg_client_back_8.png" alt="下载新浪财经app，赢iphone7" width="510" height="320" />\r\n            </div></div></div></div>\r\n	</div><div>\r\n	   			<div>\r\n			<span>文章关键词：</span>\r\n			  <a href="http://tags.finance.sina.com.cn/%E6%9B%B9%E5%BE%B7%E6%97%BA" target="_blank">曹德旺</a> <a href="http://tags.finance.sina.com.cn/%E8%80%81%E6%9D%BF" target="_blank">老板</a> <a href="http://tags.finance.sina.com.cn/%E5%88%B6%E9%80%A0%E4%B8%9A" target="_blank">制造业</a> <a href="http://tags.finance.sina.com.cn/%E4%B8%AD%E5%9B%BD" target="_blank">中国</a> <a href="http://tags.finance.sina.com.cn/%E6%88%90%E6%9C%AC" target="_blank">成本</a> \r\n			</div>\r\n	<div><a href="http://help.sina.com.cn/commonquestion/subview/20/" target="_blank">我要反馈</a>\r\n        <a href="http://roll.finance.sina.com.cn/savepage/save.php?url=http%3A%2F%2Ffinance.sina.com.cn$%7Bcolumn_path%7D$%7B%E6%AD%A3%E6%96%87%E6%97%A5%E6%9C%9F%7D%2F$%7B%E5%B0%8F%E6%97%B6%E5%88%86%E9%92%9F%7D$%7Bdocid%7D$%7Bblog_path%7D.shtml" target="_blank">保存网页</a>\r\n    </div></div><p>\r\n	   			\r\n	</p><div><div><div><a href="http://licaishi.sina.com.cn/?fr=f_news" target="_blank">新浪理财师 让天下没有难理的财</a>                    </div><div><a href="http://www.weicaifu.com/?utm_source=sinacj&amp;utm_medium=free&amp;utm_term=lcslogo&amp;utm_campaign=logo6024" target="_blank">新浪微财富全民理财平台！</a>                    </div></div></div><p><br /></p>', '曹德旺告诉我们', 1482311136, 0, 6),
(17, '<p><img src="http://www.nongmu.com/Public/umeditor1_2_2-utf8-php/php/upload/20161223/14824859496656.jpg" alt="14824859496656.jpg" /></p><p>dsf ssdf safs <br /></p><p><br /></p><p>阿萨德发</p><p><br /></p><p><br /></p><p>asd发</p><p><br /></p><p>sadf <br /></p><p>asd飞洒f</p><p><br /></p><p>asdf safsa fsaf asfs发<br /></p>', 'helloworld', 1482485962, 0, 6),
(16, '<p>　<a href="http://finance.sina.com.cn/china/dfjj/2016-12-21/doc-ifxytqaw0246911.shtml" target="_blank">上海正式发布网约车新规：沪籍沪牌限制继续保留</a></p><p>　　<span style="font-family:''KaiTi_GB2312'', KaiTi;">北京发布网约车管理细则</span></p><p>　　继今年7月28日交通运输部联合多部门公布《网络预约出租汽车经营服务管理暂行办法》后，经过几个月的研究和制定，今天，北京市《网约预约出租车经营服务管理细则》正式对外发布。</p><p>　　在国家规定和授权的基础上，北京网约车细则细化了网约车平台公司、车辆、驾驶员的相关许可和要求，规定网约车平台经营期为4年，到期经审核合格后可延期，网约车平台要依法承担承运人责任、安全生产责任和相应的社会责任，承担车辆、驾驶员的安全管理职责以及为人员和车辆购买相关保险。</p><p>　　车辆准入方面，北京网约车细则要求车辆需在北京市登记，满足北京市公布实施的最新机动车排放标准，对车辆的排量、轴距也做了明确的规定。要求，5座三厢小客车排气量不小于1.8L，车辆轴距不小于2650毫米，含新能源车；驾驶员准入方面，北京网约车细则规定从事网约车的驾驶员需具有北京市户籍，也就是在车辆和司机准入方面，北京市依旧延续了此前“京车京人”的规定，此外细则还规定网约车司机的驾驶证件需为北京市核发，接入网约车平台的个人和车辆必须经过审核，具备相关资质后方可上路参与营运。</p><p>　　新政发布后，网约车将与传统出租车在价格、营运车辆规格、营运规范等方面进行错位发展，形成差异化经营。</p><p>　　北京市交通委运输局副局长 马瑞：主要是推动巡游车（出租车）和网约车融合发展，促进巡游车（出租车）转型升级，规范网约车经营，提高服务和管理水平，为社会公众提供个性化的、安全的、便捷的出行服务。</p><p><strong>　　征求意见 新政做出多处调整</strong></p><p>　　今年10月8号，北京市公开发布网约车管理实施细则的征求意见稿，面向大众征求意见和建议。那么，大众都反映了哪些意见，管理实施细则前后都做出了哪些修改呢？</p><p>　　据了解，在征求意见阶段，北京市政府共收集社会公众有效反馈意见和建议9246条。其中，“网约车车辆资质条件及管理”受关注度最高，占总条数的36%。对网约车营运车辆必须为北京牌照的意见，超过90%的人表示赞同；对车辆排量条件要求的意见，表示质疑和提出修改意见的占到54%。</p><p>　　之后，经过多番讨论研判，在新版管理实施细则中对旧有条目进行修改的内容主要包括：由“5座三厢小客车排量不小于2.0升或1.8T”改为“5座三厢小客车排量不小于1.8升”；“车辆轴距不小于2700毫米”调整为“车辆轴距不小于2650毫米”；并去掉了原条目中“7座乘用车车长大于5100毫米”的限制性条件等，共计39处修改。</p><p>　　北京市交通委运输局副局长 马瑞：这回调整完了以后，与征求意见稿相比，在车辆的轴距和排量上有所降低，跟传统的巡游车（出租车）接近，但是又高于传统的巡游车（出租车），这样会为两个行业融合发展打下基础。</p><p>　　同时，与网约车管理实施细则一同发布的《北京市关于深化改革推进出租汽车行业健康发展的实施意见》和《北京市私人小客车合乘出行指导意见》，与其相对应的征求意见稿相比，同样有政策规定上的新增或修改共83条。</p><p>　　另外，在此次征求意见阶段、关注度同样较高的，“网约车司机必须为北京户籍”的意见，表示质疑的只占25%，因此在最终正式发布的文件中没有进行调整。（央视记者 何畅 王丰 胡亚利 危家煦）</p><p><strong>　　沪版网约车细则正式落地 仍坚持“沪人沪牌”</strong></p><p>　　经过两个多月时间的酝酿，备受瞩目的上海版网约车细则在今天（21日）下午正式发布并开始实施。跟10月8号公布的草案相比，其中原则性的规定并未改变，上海市仍坚持网约车需“沪人沪牌”。</p><p>　　1． 仍坚持“上海人”“ 上海车”。明确“网约车应在上海市注册登记，达到上海市规定的机动车排放标准”、且“驾驶员应为本市户籍”。</p><p>　　2． 网约车车辆轴距条件放宽为“达到2600毫米以上”，不再区分燃油车辆和新能源车辆。</p><p>　　3． 不再要求网约车驾驶员“持有本市公安机关核发的”机动车驾驶证。</p><p>　　4． 规定网约车驾驶员不能“扫马路”和站点候客——“不得巡游揽客，不得在机场、火车站巡游车营业站区域内揽客”。网约车，则只能通过预约方式提供服务。</p><p>　　5． 针对合乘车，对“人车绑定”的要求调整为以家庭为单位。</p><p>　　6． 为解决“打车难”问题，将综合考虑人口数量、车辆里程利用率、城市交通拥堵状况等因素，定期评估并动态调整出租汽车运力的投放规模。</p><p>　　7． 新政不设缓冲期，即日起正式实施。（央视记者 魏然）</p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n		   \r\n	    \r\n	    \r\n	    \r\n	\r\n	    \r\n	    \r\n	    \r\n	    \r\n	    \r\n	    \r\n	    \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		\r\n	    \r\n	    	\r\n		\r\n			\r\n		\r\n	</p><div><p>进入<a href="http://guba.sina.com.cn" target="_blank">【新浪财经股吧】</a>讨论</p></div><p>\r\n\r\n\r\n\r\n\r\n	\r\n\r\n	               								\r\n				</p><p>责任编辑：刘万里 SF014</p><p>\r\n				</p><div>\r\n	<div><div><div><div><img src="http://n.sinaimg.cn/finance/article/tg_app_2016/tg_client_front_8.png" alt="下载新浪财经app，赢iphone7" width="510" height="320" />\r\n            </div><div><img src="http://n.sinaimg.cn/finance/article/tg_app_2016/tg_client_back_8.png" alt="下载新浪财经app，赢iphone7" width="510" height="320" />\r\n            </div></div></div></div>\r\n	</div><div>\r\n	   			<div>\r\n			<span>文章关键词：</span>\r\n			  <a href="http://tags.finance.sina.com.cn/%E7%BA%A6%E8%BD%A6" target="_blank">约车</a> <a href="http://tags.finance.sina.com.cn/%E4%BA%AC%E6%B2%AA" target="_blank">京沪</a> <a href="http://tags.finance.sina.com.cn/%E7%BB%86%E5%88%99" target="_blank">细则</a> \r\n			</div>\r\n	<div><a href="http://help.sina.com.cn/commonquestion/subview/20/" target="_blank">我要反馈</a>\r\n        <a href="http://roll.finance.sina.com.cn/savepage/save.php?url=http%3A%2F%2Ffinance.sina.com.cn$%7Bcolumn_path%7D$%7B%E6%AD%A3%E6%96%87%E6%97%A5%E6%9C%9F%7D%2F$%7B%E5%B0%8F%E6%97%B6%E5%88%86%E9%92%9F%7D$%7Bdocid%7D$%7Bblog_path%7D.shtml" target="_blank">保存网页</a>\r\n    </div></div><p>\r\n	   			\r\n	</p><div><div><div><a href="http://licaishi.sina.com.cn/?fr=f_news" target="_blank">新浪理财师 让天下没有难理的财</a>                    </div><div><a href="http://www.weicaifu.com/?utm_source=sinacj&amp;utm_medium=free&amp;utm_term=lcslogo&amp;utm_campaign=logo6024" target="_blank">新浪微财富全民理财平台！</a>                    </div></div></div><p><br /></p>', '京沪网约车细则正式落地', 1482312752, 0, 6);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '用户评论内容',
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上一级评论id',
  `time` int(11) NOT NULL DEFAULT '0',
  `fromid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `toid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- --------------------------------------------------------

--
-- 表的结构 `guser`
--

CREATE TABLE `guser` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '高级用户表的id',
  `realname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `idcard` varchar(45) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '身份证号码',
  `address` varchar(45) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '用户住址',
  `self` varchar(35) COLLATE utf8_german2_ci NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- 转存表中的数据 `guser`
--

INSERT INTO `guser` (`id`, `realname`, `idcard`, `address`, `self`, `uid`) VALUES
(1, '熊伯乐', '24235324523423', '湖北', '来自湖北的群众,专业lol20年', 3),
(2, '熊超', '43338872730402234', '江西南昌', '来自北京的小伙子,炫舞技一流', 4),
(3, '袁向何', '4234523523523523', '湖北茅台', '今天的奋斗,明天的成就,湖北茅台,值得拥有', 6);

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

CREATE TABLE `manager` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(45) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '管理员名称',
  `password` varchar(100) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '管理员密码',
  `lastime` int(11) NOT NULL DEFAULT '0',
  `stage` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- --------------------------------------------------------

--
-- 表的结构 `pic`
--

CREATE TABLE `pic` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章id,如果为0,就不存在 任何文章当中',
  `upload` varchar(45) COLLATE utf8_german2_ci DEFAULT '' COMMENT '上传服务器图片地址',
  `thumb` varchar(45) COLLATE utf8_german2_ci DEFAULT '' COMMENT '所有缩略图的地址',
  `name` varchar(45) COLLATE utf8_german2_ci DEFAULT '' COMMENT '照片昵称',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `username` varchar(45) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '用户名称',
  `password` varchar(45) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '用户密码',
  `mobile` varchar(45) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '用户手机号码',
  `email` varchar(45) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '用户 邮箱',
  `regtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户注册时间 ',
  `role` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户角色区分,0代表普通用户,1代表认证用户',
  `icon` varchar(100) COLLATE utf8_german2_ci NOT NULL,
  `bicon` varchar(100) COLLATE utf8_german2_ci NOT NULL,
  `salt` varchar(45) COLLATE utf8_german2_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `lastime` int(11) NOT NULL DEFAULT '0' COMMENT '最近一次登录时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `mobile`, `email`, `regtime`, `role`, `icon`, `bicon`, `salt`, `lastime`) VALUES
(1, 'admin', '7b2bbba871a4ec582987833353bb7900', '13411265150', '474199332@qq.com', 1482132954, 0, '', '', 'Imlovelysalt', 1482132954),
(2, 'admin3', '7b2bbba871a4ec582987833353bb7900', '13422374022', '474199332@gg.com', 1482150065, 0, '', '', 'Imlovelysalt', 1482150065),
(3, '流星雨234', '7b2bbba871a4ec582987833353bb7900', '13243222929', '474199332@dd.com', 1482150289, 1, '', '', 'Imlovelysalt', 1482150289),
(4, '2342', '7b2bbba871a4ec582987833353bb7900', '18312365252', '474199332@oo.com', 1482206202, 1, '/Public/upload/icon/201612/2282013490670598_50x50.jpg', '/Public/upload/icon/201612/2282013490670088_300x300.jpg', 'Imlovelysalt', 1482206202),
(5, 'admin12', '7b2bbba871a4ec582987833353bb7900', '13422374033', '23423424@qq.com', 1482206515, 0, '', '', 'Imlovelysalt', 1482206515),
(6, '王猛22', '7b2bbba871a4ec582987833353bb7900', '13243222920', '345345@qq.com', 1482240417, 1, '/Public/upload/icon/201612/2374732128628043_50x50.jpg', '/Public/upload/icon/201612/2374732128628328_300x300.jpg', 'Imlovelysalt', 1482240417),
(7, 'ljm1111', '6dee656559598adaee90c7b773c3ebc7', '13328511105', '12341234@qq.com', 1482308498, 0, '', '', 'Imlovelysalt', 1482308498),
(8, '牛逼的22', '7b2bbba871a4ec582987833353bb7900', '13243222913', '474132@qq.com', 1482392737, 0, '/Public/upload/icon/201612/2278029229784510.jpg', '', 'Imlovelysalt', 1482392737);

-- --------------------------------------------------------

--
-- 表的结构 `video`
--

CREATE TABLE `video` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章id,如果为0,就不存在 任何文章当中',
  `upload` varchar(45) COLLATE utf8_german2_ci DEFAULT '' COMMENT '上传服务器图片地址',
  `name` varchar(45) COLLATE utf8_german2_ci DEFAULT '' COMMENT '照片昵称',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- --------------------------------------------------------

--
-- 表的结构 `zan`
--

CREATE TABLE `zan` (
  `id` int(10) UNSIGNED NOT NULL,
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '被点赞的文章的id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户点赞的id',
  `buid` int(10) UNSIGNED NOT NULL,
  `time` int(11) DEFAULT '0' COMMENT '点赞时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- 转存表中的数据 `zan`
--

INSERT INTO `zan` (`id`, `aid`, `uid`, `buid`, `time`) VALUES
(1, 0, 6, 3, 1482306821),
(2, 0, 6, 4, 1482308015),
(3, 0, 6, 6, 1482308020),
(4, 0, 7, 4, 1482308537),
(5, 0, 7, 6, 1482308538),
(6, 0, 7, 3, 1482308540),
(7, 0, 6, 0, 1482326400),
(8, 0, 6, 0, 1482391858),
(9, 0, 6, 0, 1482391866),
(10, 0, 6, 0, 1482391868),
(11, 0, 6, 0, 1482391876),
(12, 0, 6, 0, 1482391879),
(13, 0, 6, 3, 1482392336),
(14, 0, 6, 4, 1482392371),
(15, 0, 6, 6, 1482392499),
(16, 0, 6, 0, 1482392532),
(17, 0, 8, 3, 1482392762),
(18, 0, 8, 6, 1482392765),
(19, 0, 8, 0, 1482393468),
(20, 0, 6, 3, 1482455206),
(21, 0, 6, 6, 1482455209);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_article_user1_idx` (`uid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guser`
--
ALTER TABLE `guser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idcard_UNIQUE` (`idcard`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pic`
--
ALTER TABLE `pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `mobile_UNIQUE` (`mobile`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zan`
--
ALTER TABLE `zan`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `guser`
--
ALTER TABLE `guser`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '高级用户表的id', AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pic`
--
ALTER TABLE `pic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `video`
--
ALTER TABLE `video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `zan`
--
ALTER TABLE `zan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
