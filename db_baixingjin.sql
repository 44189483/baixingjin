-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-09-27 12:18:09
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_baixingjin`
--

-- --------------------------------------------------------

--
-- 表的结构 `bxj_article`
--

CREATE TABLE `bxj_article` (
  `articleId` int(11) NOT NULL,
  `articleType` tinyint(1) NOT NULL COMMENT '分类:0.公告 1.新闻 2.信息披露3.联系我们4.加入我们',
  `articleTitle` varchar(100) NOT NULL COMMENT '标题',
  `articleAttach` varchar(100) NOT NULL COMMENT '附件',
  `articleContent` text NOT NULL COMMENT '内容',
  `articleShow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `articleOrd` int(4) NOT NULL COMMENT '排序',
  `createTime` varchar(20) NOT NULL COMMENT '发表时间',
  `classId` int(4) NOT NULL COMMENT '关联分类'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- 转存表中的数据 `bxj_article`
--

INSERT INTO `bxj_article` (`articleId`, `articleType`, `articleTitle`, `articleAttach`, `articleContent`, `articleShow`, `articleOrd`, `createTime`, `classId`) VALUES
(18, 1, '中拥 塞纳城携手大连 百姓金 2017乘凉晚会', '', '<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	尊敬的各位领导、各位来宾！\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	尊敬的中拥 塞纳城的业主朋友们！\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	尊敬的百姓金的家人们！\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	大家晚上好！\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	百姓金 一家亲 手拉手心连心 关爱百姓生活 共建文明社区 2017乘凉晚会即将盛大启幕：\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/ed8b83b0c13b4bd6b0c77fc257cb706f.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvZWQ4YjgzYjBjMTNiNGJkNmIwYzc3ZmMyNTdjYjcwNmYuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" alt="" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	瓦房店电视台、瓦房店报社现场采访远东轴承副总经理金和平。\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/9e2a657dde7544c59b611cac144d5ad9.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvOWUyYTY1N2RkZTc1NDRjNTliNjExY2FjMTQ0ZDVhZDkuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" alt="" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	电视台采访中拥 塞纳城业主 于刚\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/fa43f39d5d1240029b82db9d52d4cc1f.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvZmE0M2YzOWQ1ZDEyNDAwMjliODJkYjlkNTJkNGNjMWYuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" alt="" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	业主 于刚接受电视台记者采访。\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/5e59d0c007c04db985bb89bb3ce4768f.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvNWU1OWQwYzAwN2MwNGRiOTg1YmI4OWJiM2NlNDc2OGYuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" alt="" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	晚上18点晚会准时开始，小提琴开场。感谢张波老师的激情演绎。\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/9dbbe6cde2da4daeae354e7c8cf34883.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvOWRiYmU2Y2RlMmRhNGRhZWFlMzU0ZTdjOGNmMzQ4ODMuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	晚会由瓦房店广播电台《帮忙热线》主播德源主持。\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/58ac856132d8483098f14499ad0f9908.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvNThhYzg1NjEzMmQ4NDgzMDk4ZjE0NDk5YWQwZjk5MDguanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" alt="" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	我们也荣幸的邀请到中拥塞纳城物业公司的于经理、远东轴承党支部书记王克义、远东轴承副总经理 金和平、瓦轴医院总务主任 杨万红、大连百姓金城市经理曲总、刘总、行政经理藤嘉杰、百姓金金州分公司经理 徐成鹏、百姓金旅顺分公司经理 臧鹏等\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/3601b469076946dea7ddbe105d5949c2.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvMzYwMWI0NjkwNzY5NDZkZWE3ZGRiZTEwNWQ1OTQ5YzIuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	大连百姓金管理咨询有限公司 城市经理 曲总为大家解读百姓金公司的安全和收益情况，并且感谢各位嘉宾的到来、感谢演职人员的辛苦排练、感谢中拥 塞纳城物业的支持！并预祝晚会圆满成功！\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/2ed224e60c02496ab492d1b63d61733f.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvMmVkMjI0ZTYwYzAyNDk2YWI0OTJkMWI2M2Q2MTczM2YuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" alt="" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	张晶等5人表演肚皮舞《印度风情》\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/2cd65b7d1e6e4c0b98483f4b268a9ab1.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvMmNkNjViN2QxZTZlNGMwYjk4NDgzZjRiMjY4YTlhYjEuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	金嫂演唱《山路十八弯》\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/4a159f3d8023472287eb3f1cf1508517.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvNGExNTlmM2Q4MDIzNDcyMjg3ZWIzZjFjZjE1MDg1MTcuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	左儿等14人旗袍秀《荷花颂》\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/5c6375435ba74ec9adf148bf781bbbe4.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvNWM2Mzc1NDM1YmE3NGVjOWFkZjE0OGJmNzgxYmJiZTQuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" alt="" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	小朋友二胡合奏《赛马》\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/61ecb79cac8d423d81f0c146fa923087.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvNjFlY2I3OWNhYzhkNDIzZDgxZjBjMTQ2ZmE5MjMwODcuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	秦永格 女生独唱《圆梦》后，全体演职人员上台，大连百姓金管理咨询有限公司为大家颁发纪念品。\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/a8092ee09a064087adbb854219e9e098.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvYTgwOTJlZTA5YTA2NDA4N2FkYmI4NTQyMTllOWUwOTguanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" alt="" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	大连百姓金资产管理有限公司瓦房店分公司团队经理姜红 宣读特殊贡献奖，大连百姓金刘总、百姓金瓦房店分公司经理于广兴共同为大家颁奖。\r\n</p>\r\n<p class="text-center" style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;text-align:center;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	<img src="http://static2.ivwen.com/users/13518074/a8db11cfcd564367b0cb76ab2b5c613b.jpg?meipian-watermark/bucket/ivwen/key/dXNlcnMvMTM1MTgwNzQvYThkYjExY2ZjZDU2NDM2N2IwY2I3NmFiMmI1YzYxM2IuanBn/nickname/5LqO6Z-p5bel5L2c5a6k/userid/MTM1MTgwNzQ=/sign/3a52a26b0d8d3eecc067d2228bb67bf5%7cimageView2/2/w/750/h/1400/interlace/0/q/80" style="box-sizing:border-box;vertical-align:middle;max-width:100%;" />\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:&quot;font-size:16px;white-space:normal;background-color:#FFFFFF;">\r\n	瓦房店中拥塞纳城与大连百姓携手举办☞百姓金 一家亲 手拉手 心连心 关爱百姓生活 共建文明社区 2017乘凉晚会圆满结束！ 感谢全体演职人员的辛勤付出！ 感谢百姓金家人们的积极参与！ 感谢中拥塞纳城陈家会总经理的积极配合！\r\n</p>', 1, 0, '2017-09-19 08:00:18', 16),
(23, 4, '销售内勤', '', '<p>\r\n	岗位职责：\r\n</p>\r\n<p>\r\n	1、协助分公司、营业部负责人处理相关销售内勤事务。\r\n</p>\r\n<p>\r\n	2、负责所在分公司、营业部销售数据整理。\r\n</p>\r\n<p>\r\n	3、为所在分公司、营业部销售人员提供相关内勤支持工作。\r\n</p>\r\n<p>\r\n	4、与公司其他各部门协调好相关工作，保证所在分公司、营业部销售工作流程顺畅。\r\n</p>\r\n<p>\r\n	5、完成领导交办的其他工作。\r\n</p>\r\n<p>\r\n	任职资格：\r\n</p>\r\n<p>\r\n	1、专科以上学历（要求必须全日制完成学习过程）。专业不限，市场营销、工商管理、文秘专业优先。\r\n</p>\r\n<p>\r\n	2、男女不限、年龄不限、可接受应届毕业生及实习生。\r\n</p>\r\n<p>\r\n	3、有过相关销售内勤岗位工作经验，金融行业相关工作经验优先。有过策划主持工作经验优先。\r\n</p>\r\n<p>\r\n	4、形象好、长期稳定、团队协作能力强、应变能力及学习能力强。\r\n</p>\r\n<p>\r\n	薪资待遇：\r\n</p>\r\n<p>\r\n	1、底薪+绩效+奖金+提成+社保；综合薪资3000-5000元\r\n</p>\r\n<p>\r\n	2、朝九晚六、周末双休\r\n</p>\r\n<p>\r\n	3、晋升空间\r\n</p>\r\n<p>\r\n	4、定期员工活动\r\n</p>\r\n<p>\r\n	5、定期培训\r\n</p>', 1, 1, '2017-09-20 04:44:32', 0),
(25, 4, '综合行政专员', '', '<p>岗位职责：</p>\r\n                    <p>1、协助行政总监做好相关工作，包括办公设备的管理维护、相关文件的整理归档以及管理、市场物料以及办公用品的采购发放以及统计管理。</p>\r\n                    <p>2、兼顾市场活动的组织策划、市场文案的撰写、设计。</p>\r\n                    <p>3、公司网站、公众号的运营管理。</p>\r\n                    <p>4、完成领导交办的其他工作。</p>\r\n                    <p>任职资格：</p>\r\n                    <p>1、学历不限、专业不限。</p>\r\n                    <p>2、性别不限、年龄不限；有相关工作经验者优先考虑</p>\r\n                    <p>3、熟练掌握办公软件操作。</p>\r\n                    <p>4、会简单的PS及计算机维护。</p>\r\n                    <p>5、有驾照，实际驾龄一年以上。</p>\r\n                    <p>6、有一定的文案功底以及平面设计功底。</p>\r\n                    <p>薪资待遇：</p>\r\n                    <p>1、  底薪+绩效+奖金+提成+社保；综合薪资3000-5000元</p>\r\n                    <p>2、  朝九晚六、周末双休</p>\r\n                    <p>3、  晋升空间</p>\r\n                    <p>4、  定期员工活动</p>\r\n                    <p>5、  定期培训</p>', 1, 3, '2017-09-20 04:45:38', 0),
(24, 4, '培训讲师', '', '<p>\r\n	岗位职责：\r\n</p>\r\n<p>\r\n	1、负责企业内训工作，编写并随时更新教案。包括现代企业管理、员工激励、行业知识、产品知识等方面。\r\n</p>\r\n<p>\r\n	2、负责公司产品路演活动。\r\n</p>\r\n<p>\r\n	3、协助人力资源部门做好新员工入职培训工作，负责“新人班”具体工作。\r\n</p>\r\n<p>\r\n	4、负责公司早会工作，制定早会流程，做好早会主持排班。\r\n</p>\r\n<p>\r\n	5、完成领导交办的其他工作。\r\n</p>\r\n<p>\r\n	任职资格：\r\n</p>\r\n<p>\r\n	1、学历不限、专业不限。\r\n</p>\r\n<p>\r\n	2、性别不限。年龄不限\r\n</p>\r\n<p>\r\n	3、银行、证券、信托、三方资管机构相关工作经验，有大型会销经验以及金融产品路演经验优先。\r\n</p>\r\n<p>\r\n	4、形象好、长期稳定、团队协作能力强、应变能力及学习能力强。\r\n</p>\r\n<p>\r\n	薪资待遇：\r\n</p>\r\n<p>\r\n	1、底薪+绩效+奖金+提成+社保；\r\n</p>\r\n<p>\r\n	2、朝九晚六、周末双休\r\n</p>\r\n<p>\r\n	3、定期员工活动\r\n</p>', 1, 2, '2017-09-20 04:43:43', 0),
(20, 2, '团队简介', 'upload/banner/20170919556.png', '	<h3 class="text-center f20">\r\n		团队简介\r\n	</h3>\r\n	<p>\r\n		【金融理财行业简介】：\r\n	</p>\r\n	<p>\r\n		在美国，一个成功的人背后一定要站有三个人：私人医生、律师和理财规划师。医生用来保命，律师用来规范行为和保护个人权力，理财规划师用来打理自己的资产，这三人缺一不可，这三个职位都属于高收入职位，而理财规划师的收入又高于私人医生和律师，因此，理财规划师在全世界被称谓“第一职位”。\r\n	</p>\r\n	<p>\r\n		理财行业在金融产业中就像一个接线板，它一头连接着客户，一头则连接着各种金融机构和金融产品。它起着一个桥梁纽带的作用。然而在现实工作中，由于我国金融理财业才刚刚起步，各项环节还没有完全理顺，导致理财顾问在工作中至少还面临产品、渠道、服务三方面的挑战。现在银行、证券公司、基金公司和各家保险公司都叫理财，都在招募理财规划师或理财顾问，但因各公司涉及产品的单一性，不能实现真正意义上的理财，因为证券公司、基金公司只能为客户提供股票和基金产品，关注的是客户资产的投资升值部分，应该叫投资顾问；而银行的功能是储蓄，或代售基金代售银行保险，应该叫客户经理；而各家保险公司也只能卖人寿保单，关注的是客户家庭风险规划，应该叫风险规划师更适合一些。\r\n	</p>\r\n	<p>\r\n		【金融理财规划师职位介绍】：\r\n	</p>\r\n	<p>\r\n		金融理财规划师（或理财顾问）是为客户进行理财规划的专业人员，是客户的“私人理财顾问”，是客户的“理财经纪人”。金融理财规划师应以客户的利益为出发点，帮助客户进行产品选择，产品组合和资产配置，达到帮客户“赚钱”和回避风险的目的。金融理财规划师需要具备丰富的金融理财实践经验，具备投资理财实际操作能力，必须在为客户理财的过程中，为客户创造价值，也就是必须具备帮助客户“赚钱”的能力。理财规划师不仅要具备一定金融或财务相关专业知识，还要具备极强的与人沟通能力，不断的学习能力，开拓能力、市场营销能力等等，所以此职业极具挑战性，需要复合型人才。\r\n	</p>\r\n	<p>\r\n		金融理财顾问属于顾问型销售职业，是站在金字塔尖的一群销售人员。他们备受尊重，收入甚高，因为他们以”顾问”的身份出现，遵循以客户需求为导向的顾问式行销服务，根据客户的需求，提供个性化理财策划方案。他们拥有客户的尊重，对手的尊重，自由的时间，快乐的心境。\r\n	</p>', 1, 3, '2017-09-20 03:44:15', 0),
(21, 2, '企业文化', 'upload/banner/20170919372.jpg', '<h3 class="text-center f20">\r\n	企业文化\r\n</h3>\r\n<p>\r\n	企业使命：以卓越的资产配置能力，为客户提供全方位一站式财富管理顾问服务\r\n</p>\r\n<p>\r\n	企业愿景：成为国内优秀的专业财富管理顾问平台\r\n</p>\r\n<p>\r\n	企业精神：专业、责任、创新、严谨、诚信、尚德、合作、共赢\r\n</p>\r\n<p>\r\n	企业价值观：为客户增值财富、为员工提供机会、为社会创造价值\r\n</p>\r\n<p>\r\n	企业经营理念：以人为本、诚信至上、创新卓越\r\n</p>\r\n<p>\r\n	企业服务观：服务百姓、一诺千金\r\n</p>', 1, 2, '2017-09-20 03:42:42', 0),
(22, 2, '总裁致辞', 'upload/banner/20170919911.png', '<h3 class="text-center f20">\r\n	总裁致辞\r\n</h3>\r\n<p>\r\n	尊敬的各位客户、公司全体员工、支持百姓金的朋友们：\r\n</p>\r\n<p>\r\n	自2016年至2017年，300多个日日夜夜，感谢员工们的辛勤努力，感谢客户们的大力支持，更要感谢合作企业及社会各界的关心和帮助。正因为这点点滴滴的力量，百姓金才会有今日的成长和令人瞩目的成就。正因为有大家不懈的坚持，我们才能在未来看到百姓金创造的更加灿烂的奇迹。\r\n</p>\r\n<p>\r\n	对百姓金来说，过去的2016年意味着“发展”。<br />\r\n我们稳扎稳打，走进社区，用“专业、诚信、务实、热情”的实际行动，取得了有效的市场占有率，打造了良好的品牌口碑。同时，服务范围进一步延伸大连周边地区，百姓金把这种对服务的专注做深、做广，积极推进，稳步向前，用客户的满意度和市场的良好口碑来验证了企业价值。\r\n</p>\r\n<p>\r\n	而这些成绩也纷纷受到了广大媒体的认可。<br />\r\n对百姓金来说，面前的2016年意味着“希望。”\r\n                  我们所经历的这个时代，充满变化，充满未知，金融市场风起云涌，正是这种改变孕育着巨大的能量。而我们百姓金为一个充满朝气的年轻企业，将抓住时代发展的契机，用新思维去创新和突破，打破旧金融观念的壁垒，积极发展线上线下财富管理服务平台，贯彻普惠金融的理念，更多的为大众服务。\r\n</p>\r\n<p>\r\n	在这种科学的价值观和经营理念的指导下，我们相信，百姓金将乘风破浪，继往开来，走进千家万户，成为财富的忠实护航者，打造互联网金融行业的领军品牌。\r\n</p>\r\n<p>\r\n	天地风霜尽，乾坤气象和。历添新岁月，春满旧山河。<br />\r\n旧的岁月已经远去，时代翻过新的篇章。愿百姓金能与各位一道，勇往直前，再创辉煌。愿我们的祖国繁荣昌盛，永远富强。值此之际，祝百姓金的所有客户、公司全体员工以及一直关心和支持誉霖鼎信的各界友人新年快乐，工作顺利，阖家安康！谢谢大家。\r\n</p>', 1, 1, '2017-09-20 03:43:29', 0),
(26, 4, '人事专员', '', '<p>岗位职责：</p>\r\n                    <p>1、了解掌握各部门的用人需求，制定招聘计划；</p>\r\n                    <p>2、管理、开发招聘渠道，发布招聘广告；</p>\r\n                    <p>3、执行招聘工作流程，进行简历筛选、电话邀约面试；</p>\r\n                    <p>4、招聘及面试数据汇总整理；</p>\r\n                    <p>5、负责员工人事档案资历料存档及汇集管理；</p> \r\n                    <p>6、负责安排公司入职培训工作；</p> \r\n                    <p>7、负责其余人力资源范畴内工作的执行；</p>\r\n                    <p>8、公司劳动纪律的监督与管理。</p>\r\n                    <p>任职资格：</p>\r\n                    <p>1、学历不限、专业不限。</p>\r\n                    <p>2、性别不限，年龄不限。</p>\r\n                    <p>3、有金融行业相关职位招聘渠道以及校园招聘渠道者优先考虑。</p>\r\n                    <p>4、专业知识丰富，能够有独立开展人力资源工作。</p>\r\n                    <p>薪资待遇：</p>\r\n                    <p>1、底薪+绩效+奖金+提成+社保；综合薪资3000-5000元</p>\r\n                    <p>2、朝九晚六、周末双休</p>\r\n                    <p>3、晋升空间</p>\r\n                    <p>4、定期员工活动</p>\r\n                    <p>5、定期培训</p>', 1, 4, '2017-09-20 04:46:00', 0),
(1, 3, '联系我们', 'upload/banner/20170919937.jpg', '<div class="col-sm-6">\r\n	<div class="conbr">\r\n		<h3 class="text-center brown">\r\n			大连百姓金咨询管理有限公司\r\n		</h3>\r\n		<div class="s-line">\r\n		</div>\r\n		<ul>\r\n			<li>\r\n				<i class="fa fa-home"></i> &nbsp;地址: 大连市沙河口区体坛路22号诺德大厦1601室\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-phone"></i> &nbsp;电话: 0411-66896333\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-globe"></i> &nbsp;网站: www.bxjdl.com\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-envelope"></i> &nbsp;邮箱: contact@bxjdl.com\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<div class="col-sm-6">\r\n	<div class="conbr">\r\n		<h3 class="text-center brown">\r\n			大连百姓金资产管理有限公司\r\n		</h3>\r\n		<div class="s-line">\r\n		</div>\r\n		<ul>\r\n			<li class="text-center">\r\n				金州分公司\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-home"></i> &nbsp;地址: 大连市金州新区光明街道怡心居2-5号1-2层\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-phone"></i> &nbsp;电话: 0411-62946333\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-globe"></i> &nbsp;网站: www.bxjdl.com\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<div class="col-sm-6">\r\n	<div class="conbr">\r\n		<h3 class="text-center brown">\r\n			大连百姓金资产管理有限公司\r\n		</h3>\r\n		<div class="s-line">\r\n		</div>\r\n		<ul>\r\n			<li class="text-center">\r\n				瓦房店分公司\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-home"></i> &nbsp;地址: 瓦房店市西长春路西段147-1号昌盛经典帝景苑\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-phone"></i> &nbsp;电话: 0411-85227333\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-globe"></i> &nbsp;网站: www.bxjdl.com\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<div class="col-sm-6">\r\n	<div class="conbr">\r\n		<h3 class="text-center brown">\r\n			大连百姓金资产管理有限公司\r\n		</h3>\r\n		<div class="s-line">\r\n		</div>\r\n		<ul>\r\n			<li class="text-center">\r\n				旅顺口分公司\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-home"></i> &nbsp;地址: 大连市旅顺口区大华街38号\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-phone"></i> &nbsp;电话: 0411-66839333\r\n			</li>\r\n			<li>\r\n				<i class="fa fa-globe"></i> &nbsp;网站: www.bxjdl.com\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<div style="margin:15px;">\r\n	<img src="/public/home/images/map.png" alt="" /> \r\n</div>', 1, 0, '', 0),
(27, 4, '运营专员', '', '<p>岗位职责：</p>\r\n                    <p>1、负责公司业务的日常运营工作。</p>\r\n                    <p>2、负责数据的采编、录入整理、统计分析并撰写相关数据简报和台账；</p>\r\n                    <p>3、负责销售合同以及常规运营文档的管理。</p>\r\n                    <p>4、完成领导交办的其他工作。</p>\r\n                    <p>任职资格：</p>\r\n                    <p>1、学历不限、专业不限。</p>\r\n                    <p>2、性别不限，年龄不限。</p>\r\n                    <p>3、有同行业工作经验优先。</p>\r\n                    <p>薪资待遇：</p>\r\n                    <p>1、底薪+绩效+奖金+提成+社保；综合薪资3000-5000元</p>\r\n                    <p>2、朝九晚六、周末双休</p>\r\n                    <p>3、晋升空间</p>\r\n                    <p>4、定期员工活动</p>\r\n                    <p>5、定期培训</p>', 1, 5, '2017-09-20 04:46:20', 0),
(28, 4, '行政前台', '', '<p>岗位职责：</p>\r\n                    <p>1、公司来访人员的接待记录。</p>\r\n                    <p>2、公司总机电话的接听。</p>\r\n                    <p>3、协助行政、人事、运营负责人处理相关事务性工作。</p>\r\n                    <p>任职资格：</p>\r\n                    <p>1、学历不限、专业不限；可接受应届毕业生及实习生。</p>\r\n                    <p>2、身高163cm以上，普通话标准流利、形象佳。</p>\r\n                    <p>3、有较好亲和力，服务意识，懂得商务礼仪规范。</p>\r\n                    <p>4、长期稳定、团队协作能力强、应变能力及学习能力强。</p>\r\n                    <p>薪资待遇：</p>\r\n                    <p>1、底薪+奖金+社保；综合薪资2500-3000元</p>\r\n                    <p>2、朝九晚六、周末双休</p>\r\n                    <p>3、晋升空间</p>\r\n                    <p>4、定期员工活动</p>\r\n                    <p>5、定期培训</p>', 1, 6, '2017-09-20 04:46:43', 0),
(29, 4, '客户经理', '', '<p>岗位职责：</p>\r\n                    <p>1.负责收集整理新客户的资料，并进行沟通，开发新客户。</p>\r\n                    <p>2.通过与客户进行有效沟通了解客户需求。</p>\r\n                    <p>3.维护老客户的业务，挖掘客户的“”潜力。</p>\r\n                    <p>4.定期与合作客户进行沟通，建立良好的长期合作关系。</p>\r\n                    <p>5.组织公司产品和竞争对手产品在市场上销售情况的调查，综合客户的反馈意见。</p>\r\n                    <p>任职资格：</p>\r\n                    <p>只要你有能力，只要你想要高薪，只要你有对这份工作的一腔热血！</p>\r\n                    <p>1.男女不限，学历本科（有经验者可议），可接受应届毕业生。</p>\r\n                    <p>2.对市场有足够的了解，良好的抗压能力，有丰富的市场推广经验。</p>\r\n                    <p>3.具备较强的学习能力和优秀的沟通能力，懂得团队协作，服从管理</p>\r\n                    <p>4.性格坚韧、思维敏捷，具备良好的应变能力和承压能力。</p>\r\n                    <p>5.有敏锐的市场洞察力，有强烈的事业心、责任心和积极的工作态度。</p>\r\n                    <p>薪资待遇：</p>\r\n                    <p>1.底薪3000+高绩效+高提成+各种奖金+实时奖励政策+各种补助+社保</p>\r\n                    <p>2.双休，节假日休息</p>\r\n                    <p>3.各种相关的专业培训</p>\r\n                    <p>4.定期多样的员工活动，生日福利，节日福利等各种福利待遇</p>\r\n                    <p>5.全面的公平的富有竞争力的薪酬体系和奖励体系；完善的职业规划和晋升渠道</p>\r\n                    <p>工作时间：周一到周五上午：8：00-11：30，下午：13：00-17：00，双休及所有法定节假日</p>', 1, 7, '2017-09-20 04:47:27', 0),
(30, 4, '团队经理', '', '<p>岗位职责：</p>\r\n                    <p>1、根据公司的战略和销售计划，形成相应的销售策略，带领团队开拓市场，并确保有效的执行，完成公司的销售计划，达成团队的销售目标</p>\r\n                    <p>2、确保团队人员编制的健全，控制人员流失，人员流失时主动招募</p>\r\n                    <p>3、从事客户渠道开发及客户关系维护工作</p>\r\n                    <p>4、组织团队会议，总结营销经验，对所属团队人员进行培训、指导、激励等</p>\r\n                    <p>5、负责向所属团队人员宣贯公司各项规章制度</p>\r\n                    <p>6、收集相关行业政策、竞争对手的信息、客户信息等，根据一线销售工作人员的反馈向上级主管提出产品及流程优化建议</p>\r\n                    <p>7、完成工作报告及相关的业务汇报工作</p>\r\n                    <p>8、完成上级领导交办的其他工作任务</p>\r\n                    <p>任职资格：</p>\r\n                    <p>1、专科或以上同等学历，营销、管理、金融等专业优先考虑</p>\r\n                    <p>2、两年以上工作经验，有理财产品、银行、保险、信托等相关行业经验、一年以上相关行业管理经验者优先考虑</p>\r\n                    <p>3、具有优秀的团队管理能力，能带领团队完成销售任务</p>\r\n                    <p>4、具有敏锐的市场洞察力和准确的客户分析能力，能够有效开发客户资源</p>\r\n                    <p>5、具备自我约束、激励并勇于承担、完成目标责任的能力，能在一定的压力下胜任工作</p>\r\n                    <p>6、具有较强的市场分析、营销、推广能力和良好的人际沟通、协调能力，分析和解决问题的能力</p>\r\n                    <p>7、具有较强的时间观念和服务意识，强有力的自律和自我驱动力，具有高度的团队合作精神和高度的工作热情</p>\r\n                    <p>8、具有强烈的创业、创新意识，愿与公司共同成长、共同进步</p>\r\n                    <p>薪资待遇：</p>\r\n                    <p>1、薪资构成：底薪5500+奖金+绩效+高提成+各种福利+各种补助+社保</p>\r\n                    <p>2、根据工作表现及能力，公司将给予相应的晋升空间</p>\r\n                    <p>3、定期相关的专业培训</p>\r\n                    <p>4、定期的各种员工活动，生日福利，节日福利等</p>\r\n                    <p>工作时间：</p>\r\n                    <p>周一到周五，周末双休，上午9：00-11：30，下午13：00-18：00，法定节假日均休。</p>', 1, 8, '2017-09-20 04:47:51', 0),
(31, 4, '营业部经理', '', '<p>岗位职责：</p>\r\n                    <p>1、根据公司战略，形成相应的团队管理策略，确保团队成员有效执行</p>\r\n                    <p>2、带领团队挖掘客户财富管理需求；组织客户管理工作，负责维持重要客户，与客户保持良好关系</p>\r\n                    <p>3、负责分析客户的财务漏洞，提供理财服务</p>\r\n                    <p>4、负责管理本营业部人员的业务活动，组织实施营业部人员的招募 与甄选、辅导与培训、督导与考核等工作</p>\r\n                    <p>5、参与营业部管理制度的制定，检查本部门执行情况</p>\r\n                    <p>6、负责向所属营业部人员宣贯公司各项规章制度</p>\r\n                    <p>7、负责协调下属员工之间、本部门与相关部门之间关系；确保营业部团队成员明确工作进度及个人目标，建立与健全团队各项管理制度</p>\r\n                    <p>8、快速掌握公司产品专业知识，学习能力优秀，具备丰富的市场营销、销售谈判、客户关系管理等综合知识</p>\r\n                    <p>任职资格：</p>\r\n                    <p>1、专科或以上同等学历，营销、管理、金融等专业优先考虑</p>\r\n                    <p>2、两年以上工作经验，有理财产品、银行、保险、信托等相关行业经验、一年以上相关行业管理经验者优先考虑</p>\r\n                    <p>3、具有优秀的团队管理能力，能带领团队完成销售任务</p>\r\n                    <p>4、具有敏锐的市场洞察力和准确的客户分析能力，能够有效开发客户资源</p>\r\n                    <p>5、具备自我约束、激励并勇于承担、完成目标责任的能力，能在一定的压力下胜任工作</p>\r\n                    <p>6、具有较强的市场分析、营销、推广能力和良好的人际沟通、协调能力，分析和解决问题的能力</p>\r\n                    <p>7、具有较强的时间观念和服务意识，强有力的自律和自我驱动力，具有高度的团队合作精神和高度的工作热情</p>\r\n                    <p>8、具有强烈的创业、创新意识，愿与公司共同成长、共同进步</p>\r\n                    <p>薪资待遇：</p>\r\n                    <p>1、薪资构成：底薪+奖金+绩效+业绩提成</p>\r\n                    <p>2、根据工作表现及能力，公司将给予相应的晋升空间</p>\r\n                    <p>3、定期相关的专业培训</p>\r\n                    <p>4、定期的各种员工活动，生日福利，节日福利等</p>\r\n                    <p>工作时间：</p>\r\n                    <p>周一到周五，周末双休，上午8：00-11：30，下午13：00-17：00，法定节假日均休。</p>', 1, 9, '2017-09-20 04:48:13', 0),
(32, 0, 'dddddddddddddddddddddd', '', '', 1, 0, '', 0),
(16, 0, '标题必填标题必填标题必填标题必填标题必填标题必填标题必填标题必填标题必填标题必填标题必题必填标题必填标题必填标题必填标题必填标题必填标题必填标题必填标题必填标题必填标题必填标题必填标题必题必填标题必填', '', '', 1, 0, '', 0),
(17, 1, '工薪家庭如何展开小型投资？', '', '<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:" font-size:16px;white-space:normal;background-color:#ffffff;"="">\r\n	工薪家庭如何展开小型投资？随着社会科技发展，投资理财方式不断多样化，无论富裕贫穷家庭都离不开理财，理财可以实现家庭资产的增值保值。因此家庭越来越重视做好这块，对于投资，家庭的主要想法是使资产增值，并且风险偏好程度偏向稳健型，那么，对于工薪家庭投资应以稳健为主，如何展开小型投资一起了解下吧。\r\n	</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:" font-size:16px;white-space:normal;background-color:#ffffff;"="">\r\n	一、做好投资理财\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:" font-size:16px;white-space:normal;background-color:#ffffff;"="">\r\n	　　家庭的零散资金，尽管不算多，但如果集聚起来，投资也能获得一定的的收益，至少比银行的活期存款利息要高出很多。如将闲置资金放入互联网活期理财产品，鲤鱼理财这样的平台，不仅安全有保障，而且收益高达8.6%，让你每天的投资都在赚钱，这样的理财方式非常适合工薪家庭，即省时又省力不用任何复杂操作，很方便灵活。\r\n	</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:" font-size:16px;white-space:normal;background-color:#ffffff;"="">\r\n	二、固定收益类的投资\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:" font-size:16px;white-space:normal;background-color:#ffffff;"="">\r\n	　　除了股市的投资，市场上的一些稳健型的投资还包括银行的理财产品，以及一些固定收益类的产品。银行理财产品，通常指的是货币基金等投资品种，其收益稳定，投资期限也较为灵活，投资门槛要求也不高，5万即可，收益率在4%-5.5%左右。而固定收益类的投资，如稳利精选基金，收益率6%-11.5%。不过投资的门槛相对要高一些，20万起。选择有固定收益类的投资，也是家庭投资的一个重要渠道，能稳定的获得收益。\r\n	</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:" font-size:16px;white-space:normal;background-color:#ffffff;"="">\r\n	三、降低股市投资比重\r\n</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:" font-size:16px;white-space:normal;background-color:#ffffff;"="">\r\n	　　对于股市投资，鲤鱼理财师认为，尽管股票有风险收益较高的特点，但却不是每个人都适合选择，至少不是每个人都适合自己的来操作。其实目前也可以采取间接投资的形式来投资股票。例如持有股票基金、混合基金等，基金投资，可降低自身投资专业度不足的问题，并且基金持有的一篮子股票，也能降低投资选股的风险。\r\n	</p>\r\n<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;color:#666666;font-family:" font-size:16px;white-space:normal;background-color:#ffffff;"="">\r\n	此外，还有一些指数基金，跟踪指数的走势，投资的话，也不用再担心自己的股票会滞涨了。总的来说，投资于基金是一种相对于直接投资股票风险更低的投资方式，工薪家庭可适当的安排转变投资结构，降低直投股票的比重，转为持有基金的形式来投资理财。\r\n</p>', 1, 0, '2017-09-19 11:24:36', 17),
(19, 2, '公司简介', 'upload/banner/20170919194.png', '	<h3 class="text-center f20">\r\n		大连百姓金管理咨询有限公司\r\n	</h3>\r\n	<p>\r\n		百姓理财  一诺千金——老百姓专属的金融管家\r\n	</p>\r\n	<p>\r\n		2015年7月10日，大连百姓金管理咨询有限公司成立，注册资本金2000万元。\r\n	</p>\r\n	<p>\r\n		百姓金是北方沿海重要的中心城市和港口、旅游城市大连一家土生土长的第三方财富管理服务平台，百姓金始终本着“百姓理财  一诺千金”的理念倾力打造滨城财富管理行业领导品牌，凭借优秀抵押债权和实时1：1债权匹配，为高净值客户提供持续稳健的财富增长咨询服务，通过深入了解客户财富状况，协助客户规划财富目标，帮助客户制定专属的财富策略。\r\n                百姓金拥有专业的服务团队，真实可靠的实物债权，为投资者提供可靠的投资方向，以及全面周到的客户服务。\r\n	</p>\r\n<br />\r\n	<h3 class="text-center f20">\r\n		大连淘宝车汽车销售有限公司\r\n	</h3>\r\n	<p>\r\n		大连淘宝车汽车销售有限公司（简称淘宝车）成立于2007年，注册资金1000万。淘宝车主要业务领域涉及：新车、库存车、二手车销售、汽车抵押、汽车维修等，是一家专业的汽车综合服务公司。在汽车零售领域，主要经营有奔驰、宝马、奥迪、丰田、大众、海马、奇瑞、起亚、荣威等国内外知名品牌。公司与多家银行、金融机构合作，为客户提供汽车贷款、汽车保险、汽车上牌等一条龙服务。面对汽车行业的迅猛发展，公司将继续坚持改革和创新，以优质的全方位服务，不断满足客户需求，倾力打造提升服务品牌，将公司建设成为管理决策科学、经营理念先进、投资主体多元化的一流汽车销售公司。未来，淘宝车将不断提升汽车销售服务领域、汽车金融服务领域的核心竞争力，致力于成为引领行业的多品牌汽车综合贸易服务商。\r\n	</p>\r\n<br />\r\n	<h3 class="text-center f20">\r\n		大连北车行汽车销售有限公司\r\n	</h3>\r\n	<p>\r\n		大连北车行汽车销售有限公司（简称北车行）位于大连后盐汽车城新展馆二层12-1区。是专业从事二手车交易的企业。北车行致力于成为领先的二手车经销商。公司资本雄厚，专业技术队伍强，企业建制完善，规章制度健全。为消费者提供专业的二手车认证、二手车交易、二手车评估及质保服务。公司思想前卫、勇于开拓进取，敢于向旧式传统的二手车经营方式挑战，与时俱进，实施二手车经营公司化、公开化、服务整体化，使公司的经营理念和管理模式紧密与国内、国际二手车市场的发展趋势接轨，公司业务量迅速得到提升。\r\n                  公司经营范围有：\r\n                  1、收购、销售、代购、代销、置换、委托寄卖、评估二手车；\r\n                  2、为交易双方办理过户、转籍、上牌及汽车保险、信息咨询服务。\r\n                     我公司收购的二手机动车，由专业的高级汽车评估师以科学的检测方法和严格的程序检测，公司对收购车辆，都会进行整修和保养，根据车况和市场行情如实定价，卖者舒心、买者放心。公平定价、诚信第一、我们的服务理念是“让每个家庭都拥有更好的车”。\r\n	</p>\r\n	<div class="row">\r\n		<div class="col-xs-4">\r\n			<img src="/public/home/images/license-1.png" alt="" /> \r\n		</div>\r\n		<div class="col-xs-4 text-center">\r\n			<img src="/public/home/images/license-1.png" alt="" /> \r\n		</div>\r\n		<div class="col-xs-4 text-right">\r\n			<img src="/public/home/images/license-1.png" alt="" /> \r\n		</div>\r\n	</div>', 1, 4, '2017-09-20 03:44:30', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bxj_class`
--

CREATE TABLE `bxj_class` (
  `classId` int(4) NOT NULL,
  `classType` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1.新闻分类2.项目状态3.年收益率4.出借期限5.还款方式',
  `className` varchar(20) NOT NULL COMMENT '名称',
  `ord` int(4) NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类';

--
-- 转存表中的数据 `bxj_class`
--

INSERT INTO `bxj_class` (`classId`, `classType`, `className`, `ord`) VALUES
(1, 2, '出借中', 0),
(2, 2, '已满标', 0),
(3, 2, '还款中', 0),
(4, 3, '6', 0),
(5, 3, '9', 0),
(6, 3, '11', 0),
(7, 3, '13', 0),
(8, 4, '1个月', 0),
(9, 4, '3个月', 0),
(10, 4, '6个月', 0),
(11, 4, '12个月', 0),
(12, 5, '等额本息', 0),
(13, 5, '先息后本', 0),
(14, 5, '按月还本付息', 0),
(15, 5, '一次性还本付息', 0),
(16, 1, '公司活动', 0),
(17, 1, '行业资讯', 0),
(18, 2, '已还款', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bxj_fund`
--

CREATE TABLE `bxj_fund` (
  `id` int(11) NOT NULL,
  `principal` decimal(10,2) NOT NULL COMMENT '本金',
  `interest` decimal(10,2) NOT NULL COMMENT '利息',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未收款1已收款',
  `startTime` datetime NOT NULL COMMENT '参与时间',
  `endTime` datetime NOT NULL COMMENT '收款时间',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '项目ID',
  `mid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金表';

--
-- 转存表中的数据 `bxj_fund`
--

INSERT INTO `bxj_fund` (`id`, `principal`, `interest`, `status`, `startTime`, `endTime`, `pid`, `mid`) VALUES
(1, '50000.00', '500.00', 1, '2017-09-26 00:00:00', '2017-09-27 03:53:27', 9, 1),
(2, '10000.00', '50.00', 0, '2017-09-25 00:00:00', '0000-00-00 00:00:00', 7, 1);

-- --------------------------------------------------------

--
-- 表的结构 `bxj_img`
--

CREATE TABLE `bxj_img` (
  `id` int(4) NOT NULL,
  `url` varchar(100) NOT NULL COMMENT '地址',
  `type` varchar(10) NOT NULL COMMENT '类型',
  `ord` int(11) NOT NULL COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播图';

--
-- 转存表中的数据 `bxj_img`
--

INSERT INTO `bxj_img` (`id`, `url`, `type`, `ord`) VALUES
(5, 'upload/banner/20170918621.png', 'banner', 9),
(6, 'upload/banner/20170918584.png', 'banner', 8),
(7, 'upload/banner/20170918869.png', 'banner', 7);

-- --------------------------------------------------------

--
-- 表的结构 `bxj_member`
--

CREATE TABLE `bxj_member` (
  `id` int(11) NOT NULL,
  `realname` varchar(20) NOT NULL COMMENT '真实姓名',
  `avatar` varchar(50) NOT NULL COMMENT '头像',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `identificationNumber` varchar(30) NOT NULL COMMENT '身份证号',
  `bankcard` varchar(100) NOT NULL COMMENT '银行卡',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `marital` varchar(5) NOT NULL COMMENT '婚姻状况',
  `education` varchar(5) NOT NULL COMMENT '最高学历',
  `job` varchar(50) NOT NULL COMMENT '职业',
  `province` varchar(20) NOT NULL COMMENT '省',
  `city` varchar(50) NOT NULL COMMENT '市',
  `createTime` datetime NOT NULL,
  `sid` int(11) NOT NULL COMMENT '所属业务员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员';

--
-- 转存表中的数据 `bxj_member`
--

INSERT INTO `bxj_member` (`id`, `realname`, `avatar`, `mobile`, `pwd`, `email`, `identificationNumber`, `bankcard`, `sex`, `marital`, `education`, `job`, `province`, `city`, `createTime`, `sid`) VALUES
(1, '大圣', 'upload/avatar/15942461399.jpg', '15942461399', 'f379eaf3c831b04de153469d1bec345e', '44189483@qq.com', '', '', 1, '未婚', '大专', 'IT', '辽宁', '大连', '2017-09-27 03:44:01', 1);

-- --------------------------------------------------------

--
-- 表的结构 `bxj_member_login`
--

CREATE TABLE `bxj_member_login` (
  `id` int(11) NOT NULL,
  `mobile` varchar(20) NOT NULL COMMENT '会员手机号',
  `logTime` datetime NOT NULL COMMENT '登录时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bxj_member_login`
--

INSERT INTO `bxj_member_login` (`id`, `mobile`, `logTime`) VALUES
(1, '15942461399', '2017-09-26 11:57:50'),
(2, '13889467368', '2017-09-27 03:39:25'),
(3, '15942461399', '2017-09-27 03:44:02');

-- --------------------------------------------------------

--
-- 表的结构 `bxj_option`
--

CREATE TABLE `bxj_option` (
  `optionType` varchar(50) NOT NULL COMMENT '类型',
  `optionKey` varchar(50) NOT NULL COMMENT '键',
  `optionValue` varchar(100) NOT NULL COMMENT '值'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='设置表';

--
-- 转存表中的数据 `bxj_option`
--

INSERT INTO `bxj_option` (`optionType`, `optionKey`, `optionValue`) VALUES
('AdminContrl', 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
('index_amount', 'half_year_turnover', '5千万'),
('index_amount', 'total_users', '140万'),
('index_amount', 'total_investment', '100亿');

-- --------------------------------------------------------

--
-- 表的结构 `bxj_project`
--

CREATE TABLE `bxj_project` (
  `projectId` int(11) NOT NULL,
  `projectType` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0出借服务1新手专享',
  `projectName` varchar(50) NOT NULL COMMENT '项目名称',
  `upperLendLimit` varchar(20) NOT NULL COMMENT '出借上限',
  `loanAmount` varchar(20) NOT NULL DEFAULT '0.00' COMMENT '借款金额',
  `minLoanAmount` varchar(20) NOT NULL DEFAULT '0.00' COMMENT '最低出借金额',
  `yearRate` tinyint(1) NOT NULL COMMENT '年化收益率',
  `lendProgress` double(5,2) NOT NULL DEFAULT '0.00' COMMENT '出借进度',
  `timeLimit` varchar(20) NOT NULL COMMENT '借款期限',
  `repayment` varchar(20) NOT NULL COMMENT '还款方式',
  `interestDate` varchar(10) NOT NULL COMMENT '起息日',
  `riskManagement` text NOT NULL COMMENT '风险控制',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态对应分类ID',
  `projectOrd` int(4) NOT NULL COMMENT '排序',
  `projectOther` varchar(50) NOT NULL COMMENT '额外信息',
  `createTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理财项目';

--
-- 转存表中的数据 `bxj_project`
--

INSERT INTO `bxj_project` (`projectId`, `projectType`, `projectName`, `upperLendLimit`, `loanAmount`, `minLoanAmount`, `yearRate`, `lendProgress`, `timeLimit`, `repayment`, `interestDate`, `riskManagement`, `status`, `projectOrd`, `projectOther`, `createTime`) VALUES
(6, 0, '百姓金1号', '10万元', '10万以下', '5万', 6, 65.60, '3个月', '先息后本', 'T+1', '<p>\r\n	请您在投资本项目时，对项目风险务必要有清醒的认识，出借有风险，当您出借时，可能获得利息，但同时也面临着风险。您在做出接受网络借贷信息中介机构服务和出借决策之前，请仔细阅读本风险揭示书，全面认识网络借贷的风险和特性，认真考虑本服务存在的各项风险因素，并充分考虑自身的投资风险意识、风险识别能力和风险承受能力，谨慎做出接受服务和出借的决策。\r\n</p>\r\n<p>\r\n	根据有关法律法规，网络借贷信息中介机构和出借人做出如下承诺、风险揭示及声明：\r\n</p>\r\n<p>\r\n	风险揭示\r\n</p>\r\n<p>\r\n	主要风险\r\n              1. 资金损失风险\r\n              网络借贷信息中介机构将按照依法、诚信、自愿、公平的原则为出借人和借款人提供信息中介服务，维护出借人与借款人的合法权益。但网络借贷信息中介机构不提供增信服务，不承担借贷违约风险。出借人和借款人遵循借贷自愿、诚实守信、责任自负、风险自担的原则承担借贷风险，出借人自行承担借贷产品的本息损失。\r\n</p>\r\n<p>\r\n	2. 借款人风险\r\n              借款人因经验及能力不足风险、婚姻及家庭不稳定风险、居住不稳定风险、品质及道德风险、健康风险、信用风险、经营风险、股权风险、管理不足风险、还款能力不足风险、过度负债风险等原因，未按照合同约定还款，导致出借人的出借本金和利息无法按时回收。\r\n</p>\r\n<p>\r\n	3. 出借人风险\r\n              出借人因其出借风险意识、风险识别能力、出借经历、风险承受能力等原因，未能准确了解借贷风险，出借决策产生偏差，致使自身遭受损失。\r\n</p>\r\n<p>\r\n	4. 资金回收风险\r\n              针对出借人出借本金或者回款再出借资金，网络借贷信息中介机构会积极协助出借人寻找、推荐借款人，以完成资金出借、获取利息之目的，但寻找、推荐借款人日期存在一定不确定性，会导致出借人在出借期限届满后可能无法完全回收出借资金和获得利息。\r\n</p>\r\n<p>\r\n	5. 促成失败的风险\r\n              本次借款的促成需符合相关法律法规的规定和借款合同的约定，可能存在不能满足成立条件从而无法成立的风险。\r\n</p>\r\n<p>\r\n	6. 市场风险\r\n              网络借贷行业因受经济因素、政治因素等各种因素影响而引起的波动，从而会产生风险。\r\n</p>\r\n<p>\r\n	一般风险\r\n              1. 税收风险\r\n              对于本借款所适用的税务政策，中国财政机关和税务机关尚未制定统一、完善的税务法律体系，且由于各地方政府税务机关存在执行不统一、稳定性差、缺乏足够的政策支持等特点，出借人的利息收入可能会因相应的税收政策的变化而受到不利影响。\r\n</p>\r\n<p>\r\n	2. 经济周期风险\r\n              经济运行具有周期性的特点，全球宏观经济运行状况将对出借人获得期待利息产生影响，从而产生风险。\r\n</p>\r\n<p>\r\n	3. 管理风险\r\n              网络借贷信息中介机构的知识、经验、判断、决策、技能等，会影响其对信息的搜集、信息交互和对借款人的资信评估，将会影响出借人的利息收入，从而产生风险。\r\n</p>\r\n<p>\r\n	4. 经营风险\r\n              网络借贷信息中介机构承诺将按照相关法律法规的规定进行运营及管理，但无法保证永久符合相关法律和监管部门的要求。如网络借贷信息中介机构无法继续经营网络借贷信息中介业务或发生重大业务调整，或财产状况发生重大变化，则可能会对出借人产生不利影响。\r\n              网络借贷信息中介机构有权将借款人信息复核、贷后跟踪等用户服务事项以委托服务/服务外包等方式交由其他机构办理，因合作机构不符合监管部门规定的资质，或被监管部门撤销相关业务许可、责令停业整顿等原因不能正常履行职责，或不具备提供服务的相关条件、或因管理不善，或发生停业、解散、破产、被吊销营业执照等情形，可能会给出借人带来一定的风险。\r\n</p>\r\n<p>\r\n	5. 操作或技术风险\r\n              操作或技术风险是指网络借贷信息中介机构、支付机构或资金存管机构在业务操作过程中，因内部控制存在缺陷或者人为因素造成操作失误或违反操作规程等引致的风险，例如交易错误、IT系统故障等风险。\r\n</p>\r\n<p>\r\n	6. 法律和政策风险\r\n              法律法规的变化，货币政策、财政政策、行业政策的调整，以及监管部门对金融市场和网贷行业监管政策的调整，均可能影响本次借款的资金成本和履约表现，从而产生本息损失的风险。\r\n</p>\r\n<p>\r\n	7. 其他风险\r\n              战争、自然灾害等不可抗力的出现，可能导致借贷本息遭受损失。代理机构违约等超出网络借贷信息中介机构自身直接控制能力范围之外的风险，也可能导致出借人的利益受损，从而带来风险。\r\n</p>\r\n<p>\r\n	其他提示：\r\n              请出借人仔细阅读相关合同的全部内容，了解并知悉根据合同规定而享有的权利及应当承担的义务和风险。\r\n</p>', 1, 4, '', '2017-09-18 00:00:00'),
(7, 0, '百姓金3号', '20万', '10万-20万', '5万', 9, 55.00, '6个月', '等额本息', 'T+1', '', 2, 3, '', '2017-09-16 00:00:00'),
(8, 0, '百姓金5号', '30万', '20万-30万', '5万', 11, 99.00, '6个月', '按月还本付息', 'T', '', 1, 2, '', '2017-09-11 00:00:00'),
(9, 0, '百姓金7号', '100万', '30万-100万', '5万', 13, 77.00, '12个月', '一次性还本付息', 'T+1', '', 18, 1, '', '2017-09-16 00:00:00'),
(10, 1, '新手专享N17082501', '1万', '1万', '2千', 6, 55.60, '1个月', '先息后本', 'T+1', '', 1, 0, '298元红包+3000体验金+5%加息券', '2017-09-26 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `bxj_project_user`
--

CREATE TABLE `bxj_project_user` (
  `userId` int(11) NOT NULL,
  `realName` varchar(10) NOT NULL COMMENT '姓名',
  `identificationNumber` varchar(30) NOT NULL COMMENT '证件号码',
  `mortgageThing` varchar(30) NOT NULL COMMENT '抵押担保',
  `mortgageAmount` varchar(10) NOT NULL DEFAULT '0.00' COMMENT '抵押金额',
  `lendAmount` varchar(10) NOT NULL DEFAULT '0.00' COMMENT '借款金额',
  `createTime` datetime NOT NULL,
  `projectId` int(11) NOT NULL COMMENT '项目关联'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理财项目会员';

--
-- 转存表中的数据 `bxj_project_user`
--

INSERT INTO `bxj_project_user` (`userId`, `realName`, `identificationNumber`, `mortgageThing`, `mortgageAmount`, `lendAmount`, `createTime`, `projectId`) VALUES
(5, '李**', '230***************', '海马V70', '101900', '81520', '2017-09-15 00:00:00', 6),
(6, '高**', '210***************', '奔腾X80', '122800', '98240', '2017-09-18 00:00:00', 7),
(7, '秦**', '220***************', '大众浩纳', '105000', '84000', '2017-09-17 00:00:00', 7),
(8, '赵**', '230***************', '帕萨特', '200000', '160000', '2017-09-15 00:00:00', 8),
(9, '张**', '230***************', '奇瑞艾瑞泽5', '75900', '60720', '2017-09-15 00:00:00', 8),
(10, '马*', '210***************', '荣威360', '76900', '61520', '2017-09-15 00:00:00', 8),
(11, '李**', '230***************', 'S5', '97000', '77600', '2017-09-17 00:00:00', 9),
(12, '李*', '211***************', 'RAV4', '179800', '143840', '2017-09-17 00:00:00', 9),
(13, '宁**', '210***************', '别克英朗', '92800', '74240', '2017-09-17 00:00:00', 9),
(14, '李**', '210***************', '奔驰E', '350000', '280000', '2017-09-17 00:00:00', 9),
(15, '杨**', '110***************', '宝马320', '216000', '172800', '2017-09-17 00:00:00', 9),
(16, '王**', '210***************', '君威', '135000', '108000', '2017-09-17 00:00:00', 9),
(17, '贾**', '210***************', '凯迪拉克', '176000', '140800', '2017-09-17 00:00:00', 9);

-- --------------------------------------------------------

--
-- 表的结构 `bxj_salesman`
--

CREATE TABLE `bxj_salesman` (
  `id` int(11) NOT NULL,
  `realname` varchar(20) NOT NULL COMMENT '真实姓名',
  `identificationNumber` varchar(30) NOT NULL COMMENT '身份证号',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `birth` varchar(10) NOT NULL COMMENT '生日',
  `province` varchar(20) NOT NULL COMMENT '省',
  `city` varchar(50) NOT NULL COMMENT '市',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `createTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务员';

--
-- 转存表中的数据 `bxj_salesman`
--

INSERT INTO `bxj_salesman` (`id`, `realname`, `identificationNumber`, `sex`, `birth`, `province`, `city`, `mobile`, `email`, `remark`, `createTime`) VALUES
(1, '小李子', '66666666', 0, '2016-09-01', '天津', '河北区', '88888888', '777@qq.com', NULL, '2017-09-15 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bxj_article`
--
ALTER TABLE `bxj_article`
  ADD PRIMARY KEY (`articleId`);

--
-- Indexes for table `bxj_class`
--
ALTER TABLE `bxj_class`
  ADD PRIMARY KEY (`classId`);

--
-- Indexes for table `bxj_fund`
--
ALTER TABLE `bxj_fund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bxj_img`
--
ALTER TABLE `bxj_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bxj_member`
--
ALTER TABLE `bxj_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bxj_member_login`
--
ALTER TABLE `bxj_member_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bxj_project`
--
ALTER TABLE `bxj_project`
  ADD PRIMARY KEY (`projectId`);

--
-- Indexes for table `bxj_project_user`
--
ALTER TABLE `bxj_project_user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `bxj_salesman`
--
ALTER TABLE `bxj_salesman`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bxj_article`
--
ALTER TABLE `bxj_article`
  MODIFY `articleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- 使用表AUTO_INCREMENT `bxj_class`
--
ALTER TABLE `bxj_class`
  MODIFY `classId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `bxj_fund`
--
ALTER TABLE `bxj_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `bxj_img`
--
ALTER TABLE `bxj_img`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `bxj_member`
--
ALTER TABLE `bxj_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `bxj_member_login`
--
ALTER TABLE `bxj_member_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `bxj_project`
--
ALTER TABLE `bxj_project`
  MODIFY `projectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `bxj_project_user`
--
ALTER TABLE `bxj_project_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `bxj_salesman`
--
ALTER TABLE `bxj_salesman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
