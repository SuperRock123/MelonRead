-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: melonreaddb
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `article_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `views` int DEFAULT '0',
  PRIMARY KEY (`article_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'The Benefits of Daily Reading','Reading has many positive health benefits. Reading every day may lead to a longer life, slower cognitive decline, improved sleep, reduced stress, and more.\n\nWhat you are reading does not even matter. It could be a self-help book, a mystery, or a favorite science fiction series. Reading is an accessible activity. It requires no special equipment other than reading material, and you do not need to acquire a membership or subscription to read. You can do it outdoors, indoors, or in the privacy of your home.',1,'2024-11-11 07:43:22','2024-11-22 01:27:31',24),(2,'How to Improve Writing Skills','Learning a variety of tricks to improve writing skills isn’t as difficult as you may think. We’ve put together a list of steps to help you make dramatic improvements to the quality of your writing in short order.\n\nBecoming a better writer takes practice, and you’re already practicing. No, seriously—you write a lot. Even if you don’t think of yourself as a writer, you put thoughts into text more often than you realize. At the very least, you write emails—a lot of emails—post on social media, make updates to your résumé and LinkedIn profile, and message your friends. If your job requires it, you also create things like reports, presentations, newsletters . . . it’s a long list.',2,'2024-11-11 07:43:22','2024-11-22 01:27:33',21),(3,'Top 10 Books to Read in 2024','Here is a list of top books...',3,'2024-11-11 07:43:22','2024-11-22 01:27:36',12),(5,'MyBatisPlus简介','MyBatis-Plus（简称 MP）是一个MyBatis的增强工具，在 MyBatis 的基础上只做增强不做改变，为简化开发、提高效率而生。1.2 MyBatis Plus 的特性\n无侵入：只做增强不做改变，引入它不会对现有工程产生影响，如丝般顺滑\n损耗小：启动即会自动注入基本 CURD，性能基本无损耗，直接面向对象操作\n强大的 CRUD 操作：内置通用 Mapper、通用 Service，仅仅通过少量配置即可实现单表大部分 CRUD 操作，更有强大的条件构造器，满足各类使用需求\n支持 Lambda 形式调用：通过 Lambda 表达式，方便的编写各类查询条件，无需再担心字段写错\n支持主键自动生成：支持多达 4 种主键策略（内含分布式唯一 ID 生成器 - Sequence），可自由配置，完美解决主键问题\n支持 ActiveRecord 模式：支持 ActiveRecord 形式调用，实体类只需继承 Model 类即可进行强大的 CRUD 操作\n支持自定义全局通用操作：支持全局通用方法注入（ Write once, use anywhere ）\n内置代码生成器：采用代码或者 Maven 插件可快速生成 Mapper 、 Model 、 Service 、 Controller 层代码，支持模板引擎，更有超多自定义配置等您来使用\n内置分页插件：基于 MyBatis 物理分页，开发者无需关心具体操作，配置好插件之后，写分页等同于普通 List 查询\n分页插件支持多种数据库：支持 MySQL、MariaDB、Oracle、DB2、H2、HSQL、SQLite、Postgre、SQLServer 等多种数据库\n内置性能分析插件：可输出 SQL 语句以及其执行时间，建议开发测试时启用该功能，能快速揪出慢查询\n内置全局拦截插件：提供全表 delete 、 update 操作智能分析阻断，也可自定义拦截规则，预防误操作\n',1,'2024-11-15 02:41:15','2024-11-22 01:27:39',41),(16,'2024 年最值得推荐的 7 个 Vue3 组件库','你好，我是 Kagol。\n\nVue 是一款易学易用，性能出色，适用场景丰富的渐进式 JavaScript 框架，深受广大开发者的喜爱，Vue3 更是推出了 Composition API，让逻辑复用更友好。\n\n马上就到 2024 年了，如果你的项目正在使用 Vue3，或者打算升级 Vue3，以下 Vue3 组件库或许是不错的选择。\nElement UI 是国内使用最广泛的 Vue2 组件库之一，而 Element Plus 是 Element UI 的升级版，基于 Vue3 和 TypeScript，提供了 70 多个易于使用的组件。',11,'2024-11-16 03:36:38','2024-11-22 01:08:33',16),(17,'Vant','介绍\nVant 是一个轻量、可靠的移动端组件库，于 2017 年开源。\n\n目前 Vant 官方提供了 Vue 2 版本、Vue 3 版本和微信小程序版本，并由社区团队维护 React 版本和支付宝小程序版本。\n特性\n🚀 性能极佳，组件平均体积小于 1KB（min+gzip）\n🚀 65+ 个高质量组件，覆盖移动端主流场景\n💪 使用 TypeScript 编写，提供完整的类型定义\n💪 单元测试覆盖率超过 90%，提供稳定性保障\n📖 提供完善的中英文文档和组件示例\n📖 提供 Sketch 和 Axure 设计资源\n🍭 支持 Vue 2、Vue 3 和微信小程序\n🍭 支持主题定制，内置 700+ 个主题变量\n🍭 支持按需引入和 Tree Shaking\n🍭 支持服务器端渲染\n🌍 支持国际化和语言包定制',11,'2024-11-16 08:33:48','2024-11-22 01:27:46',39),(19,'全栈开发之路','深入浅出vue2\\vue3,学习node,钻研springMVC springBoot mybatis',1,'2024-11-17 13:37:48','2024-11-22 01:26:19',4),(21,'跨域是什么，如何解决跨域','一、 什么是跨域？\n当一个请求url的协议、域名、端口三者之间任意一个与当前页面url不同即为跨域。\n跨域指的是浏览器不能执行其他网站的脚本，它是由浏览器的同源策略造成的，是浏览器对javascript施加的安全限制，防止他人恶意攻击网站。\n\n所谓跨域问题其实就是浏览器的同源策略所导致的。\n\n同源（即指在同一个域）就是两个页面具有相同的协议（protocol），主机（host）和端口号（port）\n同源策略：是一个重要的安全策略，它用于限制一个origin的文档或者它加载的脚本如何能与另一个源的资源进行交互。它能帮助阻隔恶意文档，减少可能被攻击的媒介。\n— 来源 MDN\n\n当我在访问http://localhost:3000/users是被 CORS（同源策略）blocked了，这就是典型的跨域问题\n————————————————\n\n                            版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。\n                        \n原文链接：https://blog.csdn.net/m0_64715294/article/details/135290082',11,'2024-11-20 06:54:25','2024-11-22 01:26:13',48),(22,'常见的几种跨域解决方案','、Nginx 反向代理解决跨域（推荐使用，配置简单）\n原理：因为跨域是浏览器限制的，服务器请求服务器不受浏览器同源策略限制。\nPostMessage方式解决跨域（HTML5中的XMLHttpRequest Level 2中的API）\n2.4、WebSocket 解决跨域\nWebSocket 是一种浏览器的API，它的目标是在一个单独的持久连接上提供全双工、双向通信。（同源策略对 WebSocket 不适用）\n原理：在 JS 创建了 WebSocket 之后，会有一个 HTTP 请求发送到浏览器以发起连接。取得服务器响应后，建立的连接会使用 HTTP 升级从 HTTP 协议交换为 WebSocket 协议。\n',12,'2024-11-20 06:58:44','2024-11-21 07:09:07',21),(23,'11 个高质量的英语文章阅读网站APP推荐，学英语不能错过！','一、初级英语：\n对于初学英语的人来说，选择简单易懂的短文是培养英语阅读能力的好开始。这些短文通常使用简单的单字和句型，有助于建立英语阅读的基础能力。无论你选择什么英语文章主题，建议你至少能在不需要查字典的情况下理解其中 2/3 的内容，这样可以减少压力并且长期学英语。\n\n1. American Literature\n\n英语短篇故事\n涵盖童话寓言、极短文、历史、著名作家等\n推荐特色：初学者千万别错过 “Children’s Stories” 儿童名著，有许多耳熟能详的童话寓言名著，帮助自己进入英语阅读的世界。\n推荐指数：⭐⭐⭐\n\n2. English Short Stories for Beginners\n\n专门为英语学习者撰写的短文\n短文以散文型式撰写，可以很轻松的阅读\n推荐特色：与前一网站类似，众多的短文非常适合初学者进行英语阅读练习。\n推荐指数：⭐⭐⭐\n\n二、中级英语：\n当你的英语有中阶水平（能够使用简单英语进行日常生活沟通），可以试着阅读一些稍长的短文、小说或挑战全英文的阅读材料。这样有助于提高你的英语阅读技巧和理解能力。例如：\n\n3. British Council\n\n英国文化协会提供的英语学习资源\n教材分 A2-B1中级、B2-C1 高级\n推荐特色：英协以他们在全球英语教学领域的专业和奉献闻名。网站上有不同主题的生活短文。英语中级者，推荐你从 A2-B1等级的短文开始阅读。比较遗憾的是英协的页面的更新频率好像不高，希望他们未来可以持续推出分享更多小说在网站上。\n推荐指数：⭐⭐⭐\n\n4. English Graded Readers\n\n中长篇英语故事、小说线上读\n内容有分不同水平\n推荐特色：这个网站有众多英语原文小说可以阅读，可惜点击比较难的单字时没有中文翻译（只有波兰文），但是光是他海量的线上小说还是很值得推荐大家收藏起来。\n推荐指数：⭐⭐⭐\n\n5. Langster\n\n专门为英语阅读 + 听力开发的英语学习app软件\n短文主题多元：包含生活、科技、医学、商业和国际新闻，每天会有新短文\n依照CEFR分级：  A1（初学） A2（初级） B1（中级） B2 (中高级）\n包含听力材料、实时词典、单词表、语法解说、阅读测验、背单词等\n支援手机、平板、网页版等多平台使用',2,'2024-11-20 07:00:54','2024-11-22 01:27:26',33),(25,'Donald reclaim the president','至于学历，“懂王”的支持者们不见得都是所谓的低学历“老白男”。有统计结果显示，2016年投票时，支持他的白人群体中受过大学教育的人可能比支持希拉里的还要多一点。所以“懂王”代表了美国社会的一次尝试。刚才我说了，我们在他身上看到了一个民粹的美国和一个精英美国的撕裂。他在政治上把一部分民众作为自己上升的政治筹码。他说的话、做的事都不符合美国精英的审美，所以精英建制派专业人士在他执政的四年里与他保持了相当大的距离。当然，他也看不上他们。\n\n第二个我们看到的东西是“懂王”身上的一个很“有趣”的特质。斯蒂芬·韦特海姆（Stephen Wertheim）在给“懂王”开的的四年外交成绩单上讲，他的特点是无视规范，有的时候很莽。从他竞选开始，他就反复地用三个词：建制派（establishment）、深度国家（deep state）、华盛顿沼泽（swarm），还宣称要“抽干华盛顿的沼泽”（drain the swamp）。\n\n这反映的是什么呢？福山自己都承认，美国体制内的运作长期被政治精英垄断，有时候会依据党派进行互相的否决。这么一套运行中的国家机器所产生的公共政策的供给越来越不能满足美国民众的需求。理论上，美国上面运行的一套机器是为底层民众服务的，但有相当一部分的民众不满意。他们用自己的票选了一个承诺为他们去打破这套规范的人上去。而他上去之后，也认认真真地去“打”了。',16,'2024-11-22 13:23:07','2024-11-22 13:30:39',14),(26,'曼巴精神','《曼巴精神》是篮球明星科比·布莱恩特的自传，也是他对自己篮球生涯的惟一一次全面总结。\n\n这是一本存有大量科比笔迹的出版物，科比的亲笔手书贯穿全书始终，足见科比对这本书用心至深。\n\n本书以“曼巴精神”为主旨，将带读者进入科比的精神世界，发现这位篮球史上传奇球星的成功秘密。\n\n全书分“方法”和“技艺”两大部分。\n\n谈及“方法”。科比亲述了他博大精深的篮球理念：曾师从过哪些前辈球星、该如何带伤作战、为何拒不接受失败结果等精彩内容，都被他一一呈现。他分享了自己的动力来源，解释了自己为何能持续学习，如何才能每一天都激励自己和队友精益求精。\n\n谈及“技艺”。一页接一页，一个回合接一个回合，科比逐个拆解了职业生涯中所有伟大对决：从迈克尔·乔丹到勒布朗·詹姆斯，一个都没有少。同时，你也能从中看出哪些球员是科比眼中重要的对手。\n\n除了科比的亲自讲述，本书还邀请到名人堂级别的NBA摄影师安德鲁·D.伯恩斯坦共同创作。伯恩斯坦用相机完整记录了科比的20年职业生涯，期间为他拍摄过成千上万张照片，从1996年身披湖人球衣的首张定妆照，到2016年最后一战的谢幕画面，精华瞬间尽在书中。\n\n科比是我们这个时代头脑聪明、思维缜密、创造力卓越的运动员之一，20年的职业生涯中，科比创造了无数辉煌的过往，也陪伴了无数球迷的青春岁月。\n\n退役两年后，经过审慎的沉淀和思考，科比写了这本《曼巴精神》送给球迷、送给自己。\n\n这本书完美地呈现了科比的内心世界，更是科比对自己篮球人生的告白。',17,'2024-11-22 13:27:29','2024-11-22 13:34:43',7),(27,'蔡徐坤的征途与星辰','人物简介：蔡徐坤，1998年出生于浙江，成长于深圳。2012年参加节目《向上吧！少年》初涉荧屏。2018年，录制节目《偶像练习生》，以最高票C位（核心位置）出道，之后发行个人首张创作EP《1》，创造多项音乐纪录。近日，推出单曲《没有意外》，迅速登顶多个音乐榜单。蔡徐坤说自己最怕三件事：失去舞台，失去自信，失去IKUN（他粉丝的昵称）。“我其实不是个特别自信的人，但当我拥有很多力量在身后支撑的时候，就会把自信的那一部分挖掘出来。”有一天，他为了鼓励自己，给自己写了封信，其中一句是：“因为不再单枪匹马，所以不再害怕绽放光芒。”\n\n敏感的灵魂和坚定的意志，安静又充满野心，这些都是蔡徐坤的一体两面。这样的性格也让他在风暴与争议中得以自洽。《环球人物》记者问他在娱乐圈的漩涡里如何排解压力，他略带玩笑地回答：“憋着。”\n\n他说：“我欣然接受所有，因为时间会证明一切。”',14,'2024-11-22 13:30:25','2024-11-22 13:30:39',15),(28,'总在半夜同一个时间醒来，是怎么回事？','​​来源：生命时报\n你有没有过这样的经历：经常在夜里同一个时间醒来，不管是起夜，还是其他别的原因……\n频繁在差不多的时间醒来，是巧合，还是健康出了问题？\n半夜总醒，先排查生理原因\n\n\n日本大学一项涉及千人的调研发现：在40~50岁人群中，有12.7%的人一周会在半夜醒来3次以上；60岁后，这个比例会增加到21.2%。\n\nz\n半夜醒来，可能只是生活作息不佳，或者是生理原因所致，比如以下几种情况。及时调整后，夜间醒来的情况通常就能改善。\n \n\n1 睡得太早\n\n \n\n成年人每天需要睡7~8小时；老年人脑代谢变慢，一般需要睡5~7小时。睡得太早，比如晚上八九点就睡了，自然容易在下半夜醒来。\n \n\n2 午睡太久\n\n \n\n午睡超过30分钟，容易导致夜间大脑进入深度休息的时间减少，让人中途醒来或早醒。\n \n\n3 室温太高\n\n \n\n入睡前，人体的体温就开始降低，为睡眠做准备。如果室温太高，或盖得被子不合适，人就容易半夜醒来。\n \n\n4 喝水太多\n\n \n\n睡前如果喝了太多水，容易起夜，自然会导致睡眠中断。一般建议，睡前口渴喝250毫升水即可。\n \n\n5 赖床太久\n\n \n\n害怕睡不好，早早躺在床上；或者心理上一味强调要睡足8小时……这些只会增加压力，增加中途醒来的次数。\n \n\n6 年龄增长\n \n\n人一生的睡眠时间会逐步减少，日本调研显示，25岁需要8小时，65岁需要6小时，80岁只需要5小时。',18,'2024-11-22 13:39:09','2024-11-22 13:41:20',1),(29,'吃得起红烧肉，就穿不起羽绒服了？','今年的羽绒服又在涨价，连“大促”都不起作用了。\n\n　　从“土味穿搭”到现在“月薪X万买不起一件羽绒服”，羽绒服疯狂涨价背后，是新版本《羽绒服装》的实施和原材料价格的节节攀升。\n\n　　而除了这些原因，羽绒服的价格还与猪息息相关。当我们把蝴蝶效应的观测范围扩大，我们会发现，猪肉价格变动对经济的影响，可远远不止羽绒服售价，毕竟羽绒服不是天天穿，但猪肉很难不吃。\n\n　　“二师兄”是如何影响羽绒服价格的？一猪动，真的会万业兴吗？\n　羽绒服作为保暖必备神器，在寒冷的冬天可谓是人手一件。\n\n　　然而，当没来得及购买羽绒服的年轻人颤巍巍地打开购物网站，才突然发现，已经买不起羽绒服了。\n\n　　图数室以“羽绒服”为关键词在某购物网站上搜索发现，双11热销前十的羽绒服产品均价达1933元，价格最高的一款羽绒服售价为3390元。曾经被视为“土气”的羽绒服变得越来越贵，打工人起早贪黑，辛苦一个月的工资只够买一件羽绒服。\n　羽绒服的漫漫涨价路其实早已开启。中华全国商业信息中心数据显示，2014年-2020年，我国羽绒服平均单价已经由452元涨到656元。2023年11月的市场份额数据显示，全国重点大型零售企业羽绒服平均价格在500-1000元之间的品牌市场份额为65.6%，较去年同期提高了11.6个百分点；平均价格在3000元以上品牌市场份额为6.4%。\n\n　　到了今年，羽绒服的价格还在持续飙升中，连“大促”都不起作用了。\n\n　　有媒体发现，一款去年较火的标称绒子含量90%的鹅绒羽绒服双十一活动价不到1000元，今年同款上新，双十一活动价涨到了1200元左右。单件价格上涨20%。\n\n　　从羽绒服批发价格指数上来看，2024年羽绒服价格指数呈破浪型上升的态势。尤其是九月、十月的价格指数同步均有所上涨。去年没舍得买的羽绒服放在购物车中，今年突然变得更加让人“高攀不起”，不知道有多少人被“劝退”了。',19,'2024-11-22 13:40:15','2024-11-22 13:41:12',1),(30,'新闻行业面对AI应当拥抱而非抗拒','《中国企业家》杂志副总编辑何伊凡先生，就AI对新闻生产的变革与发展与《新浪蜂鸟》进行了简短的交谈。\n\n　　他指出，我们谈新质生产力的时候，离不开一个大的问题，就是它需要一个怎样的产业发展环境，而不同的产业需要是不一样的，比如在AI当中，AI和安全之间的关系现在是产业界普遍思考的问题。\n\n　　以下为采访实录（《新浪蜂鸟》简称“蜂鸟”，何伊凡简称“何”）\n\n　　新浪蜂鸟：对于人工智能行业，今年您的整体感受如何？趋于兴奋还是平静？请用几个关键词描述？\n\n　　何：首先是大家普遍感觉都比较焦虑，因为我们也和行业内的模型公司交流比较多，比如说智谱、百川、minimax，月之暗面那些头部的模型公司我们都交流过，还有一些大厂，有一种普遍性的感受，在从2022年的11月份之后，最初的时候大家的状态都是比较兴奋，到了今年以来，大家都在关注大模型应用的场景，因此对于变现这件事情，特别是一些创业型的公司，希望完成商业模式的闭环。\n\n　　那么另外大家也都在思考，在大模型当中有没有一个超级应用可以出来？大模型时代和移动互联网时代的创业逻辑有什么不一样？因为互联网创业还是一个流量的逻辑，但是大模型的逻辑是什么？包括用户的逻辑可能和移动互联网时代也不太一样，所以大家都在关注技术的同时，一面在找产品手感，一面在找市场前景，还有一面就是在找钱，然后再找方向。\n\n　　所以从最初兴奋之后，现在进入了相对来说比较迷茫的一个阶段，另外基础模型的进步速度也在逐渐地放缓，曲线不像一开始那么陡峭，在这个过程当中，大家会前后左右多看看方向。',20,'2024-11-22 13:41:05','2024-11-22 13:41:05',0),(31,'除了选总统， 美国人今天还在投什么票？','　2024年美国总统选举，是美国历史上第60届（第47任）总统选举。大选于2024年11月5日举行，选出的总统及副总统于2025年1月20日就职。\n\n　　但美国大选不仅是决定白宫新主人的关键时刻，还是一个全面的政治事件。除了备受瞩目的总统选举，美国人民还将在这一天投票选出他们的国会代表、州长、州议会议员，以及决定一系列重要的公投和提案。\n\n　　美国大选除了选总统，还选什么？不同选举结果又会产生哪些影响？',20,'2024-11-22 13:44:30','2024-11-22 13:44:30',0),(32,'乌克兰险遭绑架网红峰哥已安全，揭秘背后骗局','　10月31日，认证为“极限登山运动员 滑翔伞运动员”的博主@峰哥亡命天涯 发帖称自己在乌克兰被一当地华人绑架团伙有预谋的接近，险些遭到绑架，引发大量关注。\n\n　　对此，10月31日下午，网红本人周丽峰对新浪新闻《在场》回应称，在乌克兰的遭遇真实发生，经过和诈骗团伙数十天的周旋，他已经在乌克兰的邻国摩尔多瓦安全登上前往土耳其的飞机，并打算从土耳其回国。“（回国后）第一时间我会去派出所的，我经得起调查，至于别人爱咋说咋说。”\n\n　　他表示，自己曾有过在缅北被困的经历，都没有这次惊险。这是一场专门针对华人的骗局，此前也曾有华人被诈骗，乌克兰现在很危险，不建议任何人这个时候来。\n\n　　2022年乌克兰关闭全境领空之后，目前国际航班均已停飞。因此周丽峰先飞到乌克兰邻国摩尔多瓦，再坐车入境乌克兰，途经敖德萨州进入首都基辅，10月20日入住酒店的第一天，他就被诈骗团伙盯上。\n\n　　\nEmily\n　　当晚在一个酒吧里，约三四名高加索男女以“你想不想更high一点”邀请周丽峰去小包间，他本以为是想私下向他推荐违禁品，此时酒吧经理及时介入，让他们离开不要打扰，他确认这伙人肯定有问题。\n\n　　之后Emily便经常给周丽峰发消息聊天，并频频发出约会邀请。\n\n　　当时周丽峰已经对Emily有所怀疑，便邀请她到超市拍视频，同时周立峰还约来了两个乌克兰留学生粉丝陪同，一是避免和Emily单独相处，二是想保留Emily更多影像资料。拍完视频之后周丽峰借口晚上还要直播，推脱了Emily继续约会的邀请。\n\n　　时间来到23日，周丽峰在一个中餐厅“偶遇”了这次诈骗的主谋赵晓强（自称叫刘涛）。\n\n　　当时他正在吃饭，赵晓强突然搭讪“你是峰哥吗？我是你的粉丝”，接着便热情地坐了过来。赵晓强自称是一名医美医生，有个叔叔在第聂伯罗干制药厂，自己过两天正好也要去第聂伯罗，暗示可以捎周丽峰过去。\n\n一、可疑人物和连环陷阱\n　　据了解，这次诈骗以名为赵晓强的华人为首，乌克兰当地华人朋友告诉周丽峰，有信息显示此人曾多次组织犯罪活动，包括非法运送人员越境乌克兰、走私货物、武器和弹药等。\n\n　　在乌克兰首都基辅，周丽峰先后遭遇了美人计、酒吧诱惑、冒牌粉丝等陷阱。酒店餐厅内，一名自称叫Emily的年轻乌克兰女子主动与周丽峰攀谈，Emily说自己很喜欢中国文化，并诉苦在基辅生活很辛苦等等，两人交换了联系方式。',21,'2024-11-22 13:45:30','2024-11-22 13:47:35',1),(33,'朝鲜半岛尖锐对峙 战争一触即发','　当地时间21日，武器装备展览会“国防发展-2024”在朝鲜平壤开幕，朝鲜劳动党总书记、国务委员长金正恩出席开幕式并发表演讲。\n\n　　金正恩表示，在美国及其同盟国家以恶毒姿态进行对抗超过最高水平的2024年，朝鲜用以强对强、正面对决的姿态进行应对，取得了国防发展的重要成果。\n\n　　金正恩在讲话中强调，朝鲜半岛从未像现在这样危险地、尖锐地对峙，具有破坏性的核战争一触即发。但如今朝鲜半岛的极端局势并不是对对手的误解造成的。朝鲜已经在和美国的协商中尽了最大努力，能够确定的是，美国持有的是强权立场和坚定不移侵略敌视朝鲜的方针。只要侵害朝鲜主权的势力存在，就必须按照朝鲜安全环境的要求，继续推动各种武器装备的更新升级和尖端化，消除对朝鲜国家和人民的军事威胁。朝鲜党和政府将全力以赴培养更高的军事技术和强大的军事力量，用坚强的国防力量捍卫国家。（总台记者 董海涛）',18,'2024-11-22 13:47:14','2024-11-22 13:47:24',1),(34,'电力现货市场助力电力资源高效配置','10月15日，历经31个月的连续平稳试运行后，省间电力现货市场正式转入运行，我国电力市场化交易范围进一步扩大。省间电力现货市场能有效反映市场供需，形成“能涨能跌”的市场化价格机制，反映出电能的时空价值，有利于实现省间灵活的电力余缺互济，更好地消纳新能源。\n\n当前，我国电力市场主要分为现货市场、中长期市场和辅助服务市场。省间电力现货市场是在省间电力中长期市场交易基础上，开展的省间日前、日内电力交易，是全国统一电力市场的重要组成部分。截至目前，省间电力现货市场交易范围已实现国家电网经营区和蒙西地区全覆盖，交易主体超过6000个，涵盖多类型发电主体，累计交易电量超过880亿千瓦时，其中清洁能源电量占比超44%。\n\n省间电力现货市场为供需两端提供了更多选择，可同时惠及买卖双方。随着现货市场交易的实时变化，卖方会在“降价促销”和“提价盈利”之间不断探索，买家也能整合“按需用电”和“按价用电”，尽力做到“省钱”。将市场价格机制引入电力交易，既能帮助供电企业提高盈利机会，又能为用电企业降低成本，有效激发市场经营主体活力。\n\n省间电力现货市场让实时价格成为电力“调度员”，大幅提高电力资源利用率。在电力实时交易中，如果某地有多余电力，可随时降价出售，而此时若有地方急需用电，便可进行购买。例如，在今年夏季多地持续高温的特殊时期，我国省间现货最大成交电力达到1285万千瓦，精准支援了四川、江苏等17个电力供应平衡紧张的省份，为保障电力供应发挥了关键作用。实现电力实时交易，促进省间电力共享互济、供需平衡，既能优化资源配置，又能为我国保障电力平稳有序供应作出有力贡献。\n\n省间电力现货市场的高频次交易恰好“契合”新能源的波动性，对新能源消纳起到促进作用。新能源发电边际成本相对火电偏低，在平等市场竞争机制下，新能源发电更易被优先调度，相关数据也予以支撑：2024年前8个月试运行期间，新能源利用率通过现货市场提升了1个百分点。通过建立市场机制，开展省间现货交易，我国东部地区可即时、高效地利用“三北”地区丰富的新能源资源，有效促进新能源更大范围消纳。\n\n省间电力现货市场转入正式运行后，既能助力企业降本增效，又能优化电力资源配置，更好地提高新能源利用率，标志着我国供电能力将进一步提升，多层次的统一电力市场建设迈上新台阶。',11,'2024-11-22 13:49:10','2024-11-22 13:49:10',0),(35,'小雪：气寒将雪 防寒润燥（二十四节气里的中医养生之道）','　“小雪疏烟杂瑞光，清波寒引御沟长。”时间是位邮差。当落叶为大地盖上邮戳，寄出冬天的告白，秋远去，寒入冬，小雪节气翩然而至。\n\n　　今年11月22日为小雪日。此时冬意渐浓，在北风的催促下，寒气翻山越岭而来，北方初雪或临，万物冬藏，大地一片静谧悠然，银装素裹的冬日画卷将徐徐展开。\n\n　　虹藏不见，闭塞成冬\n\n　　小雪，是二十四节气中的第二十个节气，也是冬季的第二个节气。每年11月22日左右，太阳到达黄经240度时，进入小雪节气。\n\n　　节气的小雪，反映的是气温与降水的变化趋势，并不意味着一定会下雪。《月令七十二候集解》记载：“十月中，雨下而为寒气所薄，故凝而为雪。小者未盛之辞。”《群芳谱》说：“小雪气寒而将雪矣，地寒未甚而雪未大也。”也就是说，到小雪节气，由于温度明显下降，有些区域降水形式由雨变雪，但此时雪量不大，故称小雪。\n\n　　小雪是寒冷开始的标志。此时，寒潮和强冷空气活动频繁，全国大部分地区的气温持续走低。小雪节气后，太阳直射点继续向南移动，越来越靠近南回归线，北半球日照的时间越来越短，我国不少地区下午五六点钟就已夜幕降临。\n\n　　“云暗初成霰点微，旋闻蔌蔌洒窗扉。”在黄河中下游地区，清冷的西北风或会携初雪而来。虽然开始下雪，但一般雪量不大，有时以半冻半融的状态降落，气象学上叫作“湿雪”；有时则是雨雪同降，称为“雨夹雪”；还有时降落如同米粒一样大小的白色冰粒，称为“米雪”。此时的南方地区也呈现出瑟瑟寒意，虽鲜有降雪，但会有霜。“小雪见霜兆丰年”，清晨草木间、土地上有一层薄薄的白霜，远远望去，别有一番“落霜如雪”的意境。\n\n　　农谚说：“小雪雪满天，来年必丰年。”从前人们喜欢从小雪时节是否降雪、天气如何来推测后续的气候和农事。对冬小麦来说，雪先是被，后是水，还是肥。下雪可以冻死一些病菌和害虫，减轻来年病虫害的发生；积雪有保暖作用，有利于土壤的有机物分解，增强土壤肥力，难怪民间说“瑞雪兆丰年”。\n\n　　小雪有三候：一候虹藏不见；二候天气上升、地气下降；三候闭塞成冬。小雪节气时，雨水因气温降低而凝结成雪，很难再见到彩虹了；古人认为“天气”为阳，“地气”为阴，小雪节气后，阳气上升，阴气下降，所以万物失去生机，一片萧条；民谚说“小雪封地，大雪封河；小雪封田，大雪封船”，于是，闭塞成冬。',12,'2024-11-22 13:50:01','2024-11-22 13:50:01',0),(36,'Java代码之美，从遵循样式规范开始','在软件开发的世界里，代码不仅是程序的基石，更是程序员交流的通用语言。而Java，作为一门广泛应用于企业级应用的编程语言，其代码的可读性和一致性对于项目的长期维护和团队协作至关重要。本文将带你探索Java代码的美学，揭示那些能够让你的代码既美观又高效的样式规范。无论是初出茅庐的新手还是经验丰富的老手，都能从中获得灵感，提升编码的艺术。\n\n一、为什么要代码样式规范\n对于团队开发，不同的代码规范或不规范可能引起的问题包括但不限于：\n\n1.代码可读性，代码是为了人阅读的，不是只为了机器执行；\n\n2.代码format引发的大量的diff，干扰code review；\n\n3.间接影响代码质量和团队协作效率；\n\n在敏捷迭代的软件开发环境中，良好的代码规范不仅能够帮助团队成员快速理解彼此的代码，减少沟通成本，还能在代码维护和扩展时节省宝贵的时间。此外，一致的代码风格也是项目专业性的体现，能够给代码审查者和未来的维护者留下良好的第一印象。\n\n﻿\n\n二、探索Java代码规范\n我们将深入探讨Java社区广泛认可的编码规范，包括但不限于Google Java Style和Oracle官方的编码指南。从命名约定、代码格式化、注释的使用，到错误处理和测试代码的编写，每一个细节都是构建高质量Java代码的关键。\n',13,'2024-11-22 13:51:18','2024-11-22 13:51:18',0),(37,'Axios详解及用法','Axios简介\nAxios是一个基于Promise的HTTP客户端，用于浏览器和Node.js环境。它提供了一个简单、方便的API来处理HTTP请求和响应，并具备多种强大的特性，使其成为现代Web开发中不可或缺的工具。\n\nAxios的用法\n安装Axios\n\n在Node.js项目中，可以通过npm或yarn安装Axios。在浏览器中，可以直接通过script标签引入Axios的CDN链接。\n\nnpm install axios\n1\n或者\n\n<script src=\"https://unpkg.com/axios/dist/axios.min.js\"></script>\n1\n创建Axios实例\n\n在Node.js中，可以通过new Axios()创建一个新的Axios实例；在浏览器中，可以通过axios.create()创建新的Axios实例。\n\nconst axios = require(\'axios\');\nconst instance = axios.create({\n    baseURL: \'https://api.example.com\',\n    timeout: 1000,\n    headers: {\'X-Custom-Header\': \'foobar\'}\n});\n1\n2\n3\n4\n5\n6\n设置请求参数\n\n通过Axios实例的request方法设置请求参数，如URL、请求方法、请求头等。\n\nconst config = {\n    method: \'get\',\n    url: \'/user/12345\',\n    params: {\n        ID: 12345\n    }\n};\n1\n2\n3\n4\n5\n6\n7\n发送请求\n\n通过Axios实例的get、post、put、delete方法发送HTTP请求。\n\ninstance.get(\'/user?ID=12345\')\n    .then(function (response) {\n        console.log(response.data);\n    })\n    .catch(function (error) {\n        console.error(error);\n    });\n1\n2\n3\n4\n5\n6\n7\n处理响应\n\n通过Promise的then、catch方法处理HTTP响应。\n\ninstance.post(\'/user\', {\n    firstName: \'Fred\',\n    lastName: \'Flintstone\'\n})\n.then(function (response) {\n    console.log(response.data);\n})\n.catch(function (error) {\n    console.error(error);\n});\n1\n2\n3\n4\n5\n6\n7\n8\n9\n10\nAxios的创作流程\nAxios的创作流程主要包括以下几个步骤：\n\n需求分析：确定需要实现的HTTP请求类型和特性，如GET、POST、PUT、DELETE等。\n实例创建：根据需求创建一个或多个Axios实例，并配置公共参数。\n请求配置：设置请求的参数、头部信息等。\n发送请求：通过实例的方法发送HTTP请求。\n处理响应：使用Promise的then、catch方法处理响应数据或错误。\nAxios的优缺点\n优点：\n\n基于Promise：Axios的所有函数都返回一个Promise对象，支持async/await语法，使得异步操作更加简洁明了。\n请求和响应拦截：可以在请求被发送之前或响应被处理之前进行修改，非常适用于添加公共头部信息、处理错误响应等场景。\n自动转换JSON数据：Axios在默认情况下会将请求的数据转化为JSON格式，同时也会自动将响应的数据从JSON转化为JavaScript对象。\n支持取消请求：提供了取消正在进行的请求的功能。\n客户端支持防止CSRF/XSRF：Axios在某些情况下可以自动设置XSRF-TOKEN HTTP header，增加应用安全性。\n缺点：\n\n体积相对较大：与一些轻量级的HTTP库相比，Axios的体积稍大，但考虑到其丰富的功能和良好的兼容性，这一点是可以接受的。\n学习成本：对于初学者来说，可能需要一定的时间来熟悉Axios的API和特性。\n代码案例及详细解释\n案例1：发送GET请求\n\naxios.get(\'/user?ID=12345\')\n    .then(function (response) {\n        console.log(response.data);\n    })\n    .catch(function (error) {\n        console.error(error);\n    });\n1\n2\n3\n4\n5\n6\n7\n解释：\n\naxios.get：发送GET请求。\n\'/user?ID=12345\'：请求的URL和参数。\n.then(function (response) {...})：处理成功响应。\n.catch(function (error) {...})：处理错误响应。\n案例2：发送POST请求\n\naxios.post(\'/user\', {\n    firstName: \'Fred\',\n    lastName: \'Flintstone\'\n})\n.then(function (response) {\n    console.log(response.data);\n})\n.catch(function (error) {\n    console.error(error);\n});\n1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n解释：\n\naxios.post：发送POST请求。\n\'/user\'：请求的URL。\n{firstName: \'Fred\', lastName: \'Flintstone\'}：请求的数据。\n.then(function (response) {...})：处理成功响应。\n.catch(function (error) {...})：处理错误响应。\n',23,'2024-11-22 13:52:48','2025-01-10 02:37:51',3),(38,'uniapp从入门到精通','一、介绍\n如果是刚入门小程序的，又或者刚听到这个名词的人，可能跟我之前一样，带着诸多的疑惑。比如：\n\n什么是uniapp？它和原生微信小程序有什么异同之处？\n\n为什么推荐uniapp开发？\n\n这里一句话两句话解释了可能还是云里雾里的。我的建议是看看下面这个视频，个人觉得讲的很清楚明白。\n\n开发微信小程序使用原生开发还是uniapp开发，详细介绍原生小程序与uni-app开发的优缺点_哔哩哔哩_bilibili\n\n----------------------------------------------------------------------------------------------------------------------\n\n ps：博客中的动图在切换时可能会有残影，并非真实存在，请注意识别。\n\n如果对你有帮助，辛苦点个赞👍呗，反正又不花钱~😁\n二、环境搭建（hello world）\n2.1 下载HBuilderX\nHBuilderX-高效极客技巧\n\n当然你可以选择其他IDE，但是官网推荐HBuilderX，天然整合uniapp。\n\n2.2 下载微信开发者工具\n我们要最终打包成微信小程序就必须在微信开发者工具去预览，那么需要下载微信开发者工具了。\n\n微信开发者工具下载地址与更新日志 | 微信开放文档\n\n2.3 创建uniapp项目\nHBuilderX下载下来后，直接双击运行HBuilderX.exe文件即可，它是免安装的。\n\n然后我们新建一个uniapp项目，按照下图操作即可。\n\n————————————————\n\n                            版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。\n                        \n原文链接：https://blog.csdn.net/YuanFudao/article/details/132384692',24,'2024-11-22 13:57:56','2024-11-22 14:11:14',1),(39,'AndroidStudio创建Android虚拟机教程','前言\n在 Android 开发的世界中，拥有一个可靠且灵活的测试环境是至关重要的。Android Studio 提供了虚拟设备（AVD）管理器，这是一个强大的工具，允许开发者创建自定义的虚拟设备来模拟不同的 Android 设备。通过 AVD，你可以在各种设备配置上测试你的应用，确保它在不同的屏幕尺寸、分辨率和系统版本上都能正常运行。\n\n配置教程\n第一步：打开AndroidStudio\n打开AndroidStudio，如果你没有打开任何项目，界面如下\n在这个界面，我们选择任意一个已有的项目打开（或者新建一个项目）。本文仅讲述如何创建Android虚拟机，故对项目没有任何要求，只需要进入下图界面即可：第二步：进入设备管理界面\n在窗口右侧的选项中，点击图示选项进入设备管理界面第三步：点击新建虚拟机\n\n在弹出的界面中，点击界面左上位置的加号按钮\n第四步：选择尺寸\n在弹出的新窗口中，选择你的机型的尺寸（本文用Pixel 2举例）然后点击Next\n\n第五步：选择系统镜像\n选择你要使用的系统镜像，注意：如果Release Name的镜像名称右边有【下载】标志，请先点击下载，等待下载完毕后再选择第六步：参数设置\n在这个页面，你可以对设备进行一些设置，具体设置在这里不做详细说明了第七步：启动虚拟机\n创建完成后，右侧窗口中会显示我们新创建的虚拟机，点击播放按钮启动虚拟机\n',11,'2024-11-22 14:00:14','2024-11-22 14:11:09',2);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_like`
--

DROP TABLE IF EXISTS `article_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_like` (
  `like_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  `liked_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`like_id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `article_like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `article_like_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_like`
--

LOCK TABLES `article_like` WRITE;
/*!40000 ALTER TABLE `article_like` DISABLE KEYS */;
INSERT INTO `article_like` VALUES (3,3,2,'2024-11-11 07:43:22'),(60,1,3,'2024-11-16 02:44:51'),(62,11,16,'2024-11-16 14:58:58'),(68,1,5,'2024-11-17 08:51:44'),(89,1,2,'2024-11-18 08:02:37'),(91,1,17,'2024-11-18 09:11:05'),(100,11,21,'2024-11-21 10:28:41'),(101,11,23,'2024-11-22 00:14:42'),(102,11,26,'2024-11-22 13:27:44'),(103,11,37,'2025-01-10 02:38:20');
/*!40000 ALTER TABLE `article_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `article_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `parent_comment_id` int DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `article_id` (`article_id`),
  KEY `user_id` (`user_id`),
  KEY `parent_comment_id` (`parent_comment_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`parent_comment_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,1,'This article is very insightful!','2024-11-11 07:43:22',NULL),(2,2,2,'Great tips for improving writing skills.','2024-11-11 07:43:22',NULL),(3,3,3,'I will definitely check these books out.','2024-11-11 07:43:22',NULL),(4,1,3,'Reading is truly beneficial!','2024-11-11 07:43:22',NULL),(9,3,1,'hello?','2024-11-16 02:57:45',NULL),(10,3,1,'I think you insight is very refreshing','2024-11-16 02:58:42',NULL),(16,5,11,'醍醐灌顶啊😁👍','2024-11-16 09:30:19',NULL),(30,17,11,'很好','2024-11-21 07:09:47',NULL),(31,21,11,'很好','2024-11-21 10:28:16',NULL),(32,23,11,'哈哈','2024-11-22 00:14:50',NULL),(33,19,11,'写的太简单了','2024-11-22 01:26:53',NULL),(34,25,17,'man you always have my support','2024-11-22 13:26:11',NULL),(35,39,17,'茅塞顿开啊','2024-11-22 14:08:33',NULL),(36,38,19,'作者是那位高人，境界竟如此出神入化？','2024-11-22 14:09:41',NULL),(37,37,20,'我测，文笔可以啊，奖励一个瑞克五代','2024-11-22 14:11:04',NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_like`
--

DROP TABLE IF EXISTS `comment_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_like` (
  `like_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `comment_id` int DEFAULT NULL,
  `liked_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`like_id`),
  KEY `user_id` (`user_id`),
  KEY `comment_id` (`comment_id`),
  CONSTRAINT `comment_like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `comment_like_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_like`
--

LOCK TABLES `comment_like` WRITE;
/*!40000 ALTER TABLE `comment_like` DISABLE KEYS */;
INSERT INTO `comment_like` VALUES (1,1,1,'2024-11-11 07:43:22'),(2,2,1,'2024-11-11 07:43:22'),(3,3,2,'2024-11-11 07:43:22');
/*!40000 ALTER TABLE `comment_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `favorite_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  `favorited_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`favorite_id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES (1,1,1,'2024-11-11 07:43:22'),(2,2,2,'2024-11-11 07:43:22'),(3,3,3,'2024-11-11 07:43:22'),(4,2,1,'2024-11-11 07:43:22');
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow` (
  `follow_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  `followed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`follow_id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES (1,1,1,'2024-11-11 07:43:22'),(2,2,3,'2024-11-11 07:43:22'),(3,3,2,'2024-11-11 07:43:22');
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,1,'Your article \"The Benefits of Daily Reading\" received a new like.',0,'2024-11-11 07:43:22'),(2,2,'You have a new follower on your article.',1,'2024-11-11 07:43:22'),(3,3,'Your comment received a like.',0,'2024-11-11 07:43:22');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_history`
--

DROP TABLE IF EXISTS `search_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_history` (
  `search_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `keyword` varchar(255) NOT NULL,
  `searched_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`search_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `search_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_history`
--

LOCK TABLES `search_history` WRITE;
/*!40000 ALTER TABLE `search_history` DISABLE KEYS */;
INSERT INTO `search_history` VALUES (1,1,'reading benefits','2024-11-11 07:43:22'),(2,2,'writing skills','2024-11-11 07:43:22'),(3,3,'top books 2024','2024-11-11 07:43:22');
/*!40000 ALTER TABLE `search_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share`
--

DROP TABLE IF EXISTS `share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share` (
  `share_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  `shared_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `platform` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`share_id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `share_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `share_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
INSERT INTO `share` VALUES (1,1,1,'2024-11-11 07:43:22','Twitter'),(2,2,2,'2024-11-11 07:43:22','Facebook'),(3,3,3,'2024-11-11 07:43:22','Email');
/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `bio` text,
  `avatar` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'john_doe','password123','john@example.com','2024-11-11 07:43:22',NULL,'Avid reader and writer.','https://cdn.pixabay.com/photo/2021/11/12/03/04/woman-6787784_1280.png',0),(2,'jane_smith','password456','jane@example.com','2024-11-11 07:43:22',NULL,'Loves to explore new articles.','https://cdn.pixabay.com/photo/2021/06/24/12/35/woman-6361132_640.png',1),(3,'alice_wong','password789','alice@example.com','2024-11-11 07:43:22',NULL,'Bookworm and knowledge seeker.','https://cdn.pixabay.com/photo/2020/10/11/19/51/cat-5646889_640.jpg',0),(11,'wallace','wallace','8080@xhu.edu.com','2024-11-16 08:21:25',NULL,'全栈架构工程师','https://cdn.pixabay.com/photo/2016/05/26/14/39/parrot-1417286_640.png',1),(12,'timber','tb','123@xhu.edu.com','2024-11-17 13:34:58',NULL,'数据库工程师','https://cdn.pixabay.com/photo/2024/09/27/15/20/halloween-9079096_640.jpg',0),(13,'diana','diana','321@xhu.edu.com','2024-11-17 13:35:23',NULL,'后端工程师','https://cdn.pixabay.com/photo/2020/11/15/16/38/alien-5746426_640.jpg',0),(14,'蔡徐坤','jxk',NULL,'2024-11-20 07:04:06',NULL,'唱、跳、rap','https://tse2-mm.cn.bing.net/th/id/OIP-C.dX8RZ2vz2LuxTmbd95rHPAHaEd?w=274&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',0),(15,'joe_biden','joe_biden',NULL,'2024-11-20 07:10:49',NULL,'president of USA','https://tse2-mm.cn.bing.net/th/id/OIP-C.R6jo-ZYaMddImqZ5fSrilwHaEK?w=276&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',0),(16,'Donald_J_Trump','trump',NULL,'2024-11-20 07:12:51',NULL,'next president of USA','https://tse3-mm.cn.bing.net/th/id/OIP-C.AxNLrjPqo5y4wEl4KO-BBAHaFV?w=252&h=145&c=7&r=0&o=5&dpr=1.3&pid=1.7',0),(17,'劳大','kobe',NULL,'2024-11-20 07:14:31',NULL,'孩子们我回来了','https://tse3-mm.cn.bing.net/th/id/OIP-C.-hKaY2Q_a5oI8VB4lTOyUgHaFa?w=231&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',0),(18,'将军','kimJun2',NULL,'2024-11-20 07:18:11',NULL,'南下！','https://tse1-mm.cn.bing.net/th/id/OIP-C.24yi68NtWpexrfBAuf2tNAHaEK?w=280&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',0),(19,'神鹰哥','eagle',NULL,'2024-11-20 07:19:47',NULL,'飞起来','https://tse4-mm.cn.bing.net/th/id/OIP-C.v38WjUKNWqlFuS-e_hhUvwAAAA?w=193&h=205&c=7&r=0&o=5&dpr=1.3&pid=1.7',0),(20,'丁真','dz123',NULL,'2024-11-20 07:24:31',NULL,'妈妈生的','https://tse2-mm.cn.bing.net/th/id/OIP-C.bPJkt_xQt_5PSlmZXkRktQHaJf?w=208&h=268&c=7&r=0&o=5&dpr=1.3&pid=1.7',0),(21,'五条悟','wtw',NULL,'2024-11-20 07:29:13',NULL,'会赢的','https://tse2-mm.cn.bing.net/th/id/OIP-C.9H1-SHV-_dMXAOs6klkJBAAAAA?w=187&h=333&c=7&r=0&o=5&dpr=1.3&pid=1.7',0),(22,'尤雨溪','evenyou',NULL,'2024-11-20 07:32:09',NULL,'你懂个锤子的vue','https://tse3-mm.cn.bing.net/th/id/OIP-C.Kusp0wQ_vUT66yiiAZioLQAAAA?w=161&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',0),(23,'艾伦.耶格尔','alanyeager',NULL,'2024-11-20 07:36:29',NULL,'塔塔开','https://tse4-mm.cn.bing.net/th/id/OIP-C.eoJnKkf1NLCEc2dBq6V6mwHaFu?w=222&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',0),(24,'雪宝','xb',NULL,'2024-11-20 07:55:52',NULL,NULL,'https://www.bing.com/th/id/OGC.3221c90b4d893033b5a121198c6c0afe?pid=1.7&rurl=https%3a%2f%2fmedia.giphy.com%2fmedia%2f6U6sno5AkUsOQ%2fgiphy.gif&ehk=qpf0w5LCWMzCoAkqQQ5EZ6BIQjZq9sH6vYXRYasNkxE%3d',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-10 12:42:54
