-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-09-06 11:10:05
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
  `articleType` tinyint(1) NOT NULL COMMENT '分类:0.公告 1.新闻 2.信息披露',
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
(1, 1, '协议', '', '<p align="center" style="text-align:center;background:white;">\r\n	<b>借款合同<span></span></b>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	合同编号：<span>&nbsp;&nbsp;<br />\r\n</span>合同签订地：<span>&nbsp;&nbsp;</span>市<span>&nbsp;&nbsp;&nbsp;</span>区<span>&nbsp;<br />\r\n</span>签订时间：<span>&nbsp;&nbsp;</span>年<span>&nbsp;&nbsp;&nbsp;</span>月<span>&nbsp;&nbsp;&nbsp;</span>日<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	借款人：<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	冠<span>e</span>通注册<span>ID</span>：<span>&nbsp;<br />\r\n</span>身份证号（自然人适用）：<span>&nbsp;<br />\r\n</span>法定代表人（法人适用）：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n联系地址：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n邮编：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n固定电话：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n手机号码：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n传真：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n电子邮箱：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n微信号：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n其他联系方式：<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	出借人（以下统一简称“出借人”，表格视出借人人数自行调整）：<span></span>\r\n</p>\r\n<table border="1" cellspacing="0" cellpadding="0" width="815" style="width:611.25pt;background:white;border:none;">\r\n	<tbody>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">序号<span></span></span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">出借人姓名<span></span></span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">冠<span>e</span>通<span>ID</span></span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">证件类型<span></span></span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">证件号码<span></span></span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">出借金额（单位：元）<span></span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">1</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">2</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">3</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">4</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">5</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">6</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">7</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">8</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">9</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-family:&quot;color:#333333;">10</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p align="left" style="background:white;">\r\n	服务方：冠群驰骋投资管理（北京）有限公司<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	法定代表人：刘广东<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	住所：北京市东城区东直门南大街<span>3</span>号国华投资大厦<span>5</span>层<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>鉴于：<span></span></b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n1、借款人有一定的资金需求，且筹借资金用于合法用途；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n2、出借人有一定的闲散资金，为其合法所得，具有完全的支配权利，可自主决定出借给借款人；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n3、服务方即冠群驰骋投资管理（北京）有限公司是一家合法成立并有效存续的有限责任公司，拥有冠<span>e</span>通平台（网 址<span>www.gqget.com</span>）的运营管理权（以下简称“冠<span>e</span>通”或“服务方”），为出借人和借款人提供借贷信息的采集整理、甄别筛选、信息发布，以及资 信评估、借贷撮合、融资咨询、在线争议解决等相关居间服务；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n4、出借人、借款人双方已在或将在冠<span>e</span>通成功注册，成为冠<span>e</span>通会员，并承诺其提供给冠<span>e</span>通的信息完全真实、有效、完整；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n5、借款人有借款需求，出借人同意出借，出借人、借款人双方在冠<span>e</span>通的居间服务下就借款事宜达成一致意见。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	现出借人、借款人、服务方三方根据《中华人民共和国合同法》及相关法律法规的规定，遵循自愿、平等、互利和诚实信用原则，经友好充分协商，达成本合同，以兹信守。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第一条 借款基本信息<span></span></b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n借款项目名称<span>/</span>编号：<span>____________________________________</span>。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n详细借款用途：<span>_____________________________________</span>。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n借款本金数额：￥<span>_________________</span>，大写：<span>___________________</span>元。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n借款期限、借款起止日期：<span>_____</span>个月，自合同生效之日起算，在借款期限内，上述借款资金的利率为年利率【<span>XXX</span>】<span>%</span>。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n还款日期及期数：见本合同第三条第<span>2</span>项<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第二条 借款流程、合同成立与生效<span></span></b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n1、合同成立：出借人在冠<span>e</span>通上对借款人发布的借款需求点击“立即出借”按钮时，本合同即时成立。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n2、<b>出借资金冻结：出借人点击“立即出借”按钮即视为其已经向服务方发出不可撤销的授权指令，授权服务方通过其委托合作的第三方支付机构或资金存管银行冻结出借人确认向借款人出借的资金。冻结将在本合同生效时或本合同终止时解除。</b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n3、<b>出借资金划转：</b>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>本合同成立的同时，出借人即不可撤销地授权冠<span>e</span>通委托其合作的第三方支付机构或资\r\n金存管银行将冻结资金一次性划转至借款人的第三方账户中，款项划转完毕即视为出借资金发放成功，借款人可通过 “提现”按钮至多分两笔将其第三方账户中资金转至其指定的如下银行收款账户（该账户同时作为借款人今后还款的专用还（付）款账户），借款人是否提现资金不\r\n影响本合同的效力。<span></span></b>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>借款人的银行收款账户<span>/</span>专用还（付）款账户：<span></span></b>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	户名：<span>__________________________________</span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	开户银行：<span>__________________________________</span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n账号：<span></span>\r\n</p>\r\n<div style="border:solid #666666 1.0pt;padding:0cm 0cm 0cm 0cm;background:white;margin-left:-15.75pt;">\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n	<p align="left" style="margin-left:18pt;text-indent:-18pt;">\r\n		§&nbsp;\r\n&nbsp;\r\n	</p>\r\n</div>\r\n<p align="left" style="background:white;">\r\n	借款人需变更上述银行卡信息的，应当向服务方递交书面申请，经服务方同意后方可变更，否则该借款人同意自行承担因此造成的全部损失。专用还（付）款账户信息在本合同签订后发生变更的，以变更后的账户信息为准<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n4、合同生效：在本合同所属的融资项目的募集期未超过<span>20</span>个工作日的前提下，自出借资金到达借款人的第三方账户或借款人指定的银行收款账户时（以时间较早者为准）本合同生效。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第三条 本息偿还方式<span></span></b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n1、借款人自愿选取以下四种具体还款方式中的第<span>_________________</span>种：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>1</span>）先息后本；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>2</span>）等额本息；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>3</span>）月还本付息；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>4</span>）一次性还本付息。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n2、借款人《分期还款表》（表格视还款期数自行调整）<span></span>\r\n</p>\r\n<table border="1" cellspacing="0" cellpadding="0" width="815" style="width:611.25pt;border:none;">\r\n	<tbody>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-size:12.0pt;font-family:宋体;">期数<span></span></span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-size:12.0pt;font-family:宋体;">还款日期<span></span></span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-size:12.0pt;font-family:宋体;">还款金额（单位：元）<span></span></span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-size:12.0pt;font-family:宋体;">1</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-size:12.0pt;font-family:宋体;">2</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-size:12.0pt;font-family:宋体;">3</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-size:12.0pt;font-family:宋体;">4</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-size:12.0pt;font-family:宋体;">5</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border:solid #666666 1.0pt;">\r\n				<p align="center" style="text-align:center;">\r\n					<span style="font-size:12.0pt;font-family:宋体;">6</span>\r\n				</p>\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n			<td style="border:solid #666666 1.0pt;">\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n3、借款人应按《分期还款表》约定的还款日（不得迟于当日<span>17:00</span>）或之前将当\r\n期应还款金额按时足额充值至其专用还（付）款账户中（无论如何，借款人均应当保证其专用还（付）款账户的资金余额在约定还款日<span>17</span>：<span>00</span>时大于或等于当期 应还款金额，以保证应还款项顺利划转，否则即视为借款人逾期）。本合同成立的同时，借款人即不可撤销地授权冠<span>e</span>通委托其合作的第三方支付机构或资金存管银 行将当期还款金额从专用还（付）款账户划转至借款人的第三方账户，然后再划转至出借人的第三方账户中，划转完毕即视为借款人当期还款成功。经服务方同意并\r\n委托服务方代为通知，出借人有权单方对借款人的还款方式进行变更，通知自服务方送达借款人之日起生效。如果还款日遇到法定节假日或公休日，还款日期不进行 顺延。如果还款日为每月<span>30</span>日，则遇到天数不足<span>30</span>天的月份，还款日为还款当月的最后一日（其他特殊情况以此类推）。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第四条 借款人的权利和义务<span></span></b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n1、借款人确保其提供的信息和资料（包括但不限于主体身份信息、财务信息、还款能力、保证人身份信息、个人及 企业的征信流水、房产及车辆信息、业务合同资料、纳税资料、银行对账单等）真实、有效、完整，不存在提供虚假信息或隐瞒事实的情况。借款人应及时、\r\n如实地向服务方及出借人报告影响或可能影响出借人或服务方权益的重大信息。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n2、借款人应如实地向服务方提供其在所有网络借贷信息中介机构未偿还借款信息。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n3、借款人据实填写借款用途，不存在隐瞒借款用途的情况。借款人未经出借人书面许可，不得改变借款用途，且不得将借款用于洗钱或资助恐怖等违法\r\n犯罪活动，不得直接或间接地将借款用于出借或投资场外配资、期货合约、结构化产品、其他衍生品等高风险的金融产品，或用于其他与借款用途无关的任何领域， 否则借款人承担因此而产生的一切责任，并赔偿由此给出借人或服务方造成的所有损失。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n4、借款人承诺并保证其有能力履行本合同，已向出借人、服务方充分、完整、真实地披露其各项真实情 况，截止本合同签署之日其不存在其他任何未向服务方披露的对外负债情况，且具备充分的还款能力，能独立履行本合同项下的义务并承担相应责任。借款人签署和\r\n履行本合同是借款人的真实意思表示，不存在重大误解、显失公平、欺诈、胁迫等任何事实或法律上的瑕疵。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n5、借款人如出现违反本条第<span>1</span>款、第<span>2</span>款、第<span>3</span>款、第<span>4</span>款约定的情形，或者逃避、失联、拒绝沟通、拒绝承认欠 款事实、故意转移财产等任何方式拒绝或逃避还款义务等情况，出借人或服务方有理由认为借款人以非法占有为目的，虚构事实，隐瞒真相，诈骗财物，涉嫌诈骗\r\n罪、合同诈骗罪等刑事犯罪，且出借人或服务方均有权单方宣布本合同项下全部借款提前到期，并采取相应的法律救济程序，包括但不限于向公安机关等举报借款人 的违法行为，并将相关涉案资料移送公检法机关，依法追究借款人的刑事及民事责任等。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n6、借款人应严格按照本合同第三条的约定按时足额向出借人偿还每期应还本金和利息。借款人如出现首期还款即逾 期的情况，或者在自身有还款能力或对第三人持有债权时仍不履行还款义务，或者借款人无实际还款能力签订本借款合同的，或者借款人出现逃避、失联、拒绝沟\r\n通、拒绝承认欠款事实、故意转移财产等情况的，即可作为借款人以非法占有为目的而进行借款的证据。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n7、借款人不得将本合同项下的任何权利义务转让给任何其他方。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n8、借款人同意并认可出借人可通过冠<span>e</span>通平台或其他方式将其持有的对借款人的债权进行全部或部分转让，且不受转让次数的限制，借款人同意对债权受让人继续履行本合同项下的还款义务，不以任何理由拒绝履行还款义务。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n9、借款人同意并确认，本合同如涉及两个或两个以上借款人、担保人（包括保证人、抵押人、质押人等，以下简称 “担保人”），任一借款人、担保人均应履行本合同项下的义务，对全部借款承担连带清偿责任。出借人有权向任一借款人、担保人追索本合同项下本金、利息、罚\r\n息、逾期利息、违约金、赔偿金及其他实现债权的费用（包括但不限于律师代理费、诉讼费、担保费、诉讼保全费、强制执行费、公证费、评估费、鉴定费、拍卖 费、公告送达费、保管费、过户费、差旅费等全部费用）。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n10、借款人应承担本合同项下所有费用支出，包括但不限于公证费、鉴定费、评估费、登记费、保险费以及担保费用等。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第五条 出借人的权利和义务<span></span></b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n1、出借人应按本合同约定的借款日期和金额按时足额向借款人支付借款。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n2、出借人保证其所用于出借的资金为自有资金且来源合法，是该资金的合法所有人，有充分的权利处分该资金。如 果第三人对资金归属、处置、合法性问题提出异议，由出借人自行承担责任并负责解决。如出借人未能适当解决，则视为放弃其出借资金所带来的利息收益，并赔偿\r\n因此给其他各方造成的损失。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n3、出借人享有其出借款项所带来的利息收益，并承诺自行主动缴纳由此产生的相关税费。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n4、如借款人违约，出借人有权获得借款人在冠<span>e</span>通登记注册的信息。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n5、在本合同项下的部分或全部债权，出借人有权自行转让<span>,</span>出借人同时授权服务方在维护出借人本金利益的前提下，视情况将出借人对借款人所享有的债权全部或部分转让给新的出借人，并授权冠<span>e</span>通将债权转让事项通知借款人。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n6、借款人还款不足以偿还其根据约定应向全部出借人偿还本金、利息、逾期利息及违约金等款项的，出借人同意按照向借款人出借资金的比例分配借款人偿还的全部款项。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n7、出借人承诺对依据本合同获得的借款人信息或资料予以保密，除用于本合同出借款项与合理催收或法律法规强制要求外，不得向外转让或披露。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第六条 提前还款<span></span></b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n1、借款人提前部分还款需取得服务方同意。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n2、合同三方在此确认，如借款人提前还款必须一次性偿还截止提前还款日前一日的全部剩余借款，包括当期应还本息及剩余本金，并应向出借人支付提前还款违约金，提前还款违约金为本合同借款本金<span>5</span>天的利息，具体计算方式为：借款本金×年利率<span>/365</span>×<span>5</span>。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n3、借款人提前偿还全部剩余借款的，应当向服务方提交《提前还款申请书》，经服务方审核同意后，借款人委托服 务方代为向全体出借人发出提前还款通知。出借人与借款人在此表示均同意委托服务方代为处理提前还款的有关事宜，并且为保证及时处理提前还款事宜，保障出借\r\n人的合法权益，此种委托在提前还款申请经服务方审核同意后自动生效，无需各方另行签署协议。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第七条 逾期还款<span></span></b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n1、借款人未能在约定的还款日<span>17:00</span>之前将当期应还款金额按时足额充值至其专用还（付）款账户，则视为逾期还款。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n2、借款人逾期还款，应支付逾期利息和违约金。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	逾期利息：每日按逾期还款金额的<u><span>0.05%</span></u>计收，直至全部到期欠款还清之日止；违约金：按逾期还款金额的<u><span>10%</span></u>计收，每期单独计收。 若借款人所欠款项经服务方或服务方委托的第三方追索而全部或部分收回的，出借人同意收回款项中与逾期利息及违约金（包括但不限于逾期违约金、提前还款违约金等）之和相等的金额作为催收服务费归服务方所有。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n3、借款人对任何一期还款逾期满<span>15</span>日的或累计逾期满<span>3</span>期（含本数）的，或者借款人出现第八条第<span>2</span>款任意一项 根本违约情形时，出借人或服务方均有权宣布本合同项下全部借款提前到期，借款人应支付尚未支付的利息及剩余本金，并按本合同第七条第<span>2</span>款约定支付逾期利息 （如有）和违约金，借款人就此放弃抗辩权。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n4、为集中维护各出借人权利，如借款人出现逾期还款，或出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为的， 全体出借人一致同意将本合同项下债权（包括但不限于本金、利息、违约金、罚息、逾期利息、赔偿金以及因追索债权发生的包括但不限于律师代理费、诉讼费、担\r\n保费、诉讼保全费、强制执行费、公证费、评估费、鉴定费、拍卖费、公告送达费、保管费、过户费、差旅费等全部费用）无偿转让给服务方或服务方指定的第三人，由其统一向借款\r\n人追索。但因借款人失踪或还款能力丧失等原因导致债权的追索不能实现或部分不能实现的，未实现的债权由服务方通知出借人后重新转让回出借人。出借人收到服 务方通知后有权自行向借款人进行债权的追索，服务方配合提供出借人为实现债权所需文件。出借人应当承担因债权无法追索产生的一切法律责任及结果。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n5、出借人一致同意，根据以上第七条第<span>4</span>款合同债权转让给服务方或服务方指定的第三人后，经追索实现的债权款项应当全额支付至服务方指定的账户，并在扣除为实现债权支付的相关费\r\n用（包括但不限于诉讼保全费用、律师代理费用、催收服务费及诉讼费用等费用）及服务方收取的服务费后，由服务方向出借人进行支付<span>,</span>如支付金额不足以偿还本合同项下约定的本金、\r\n利息的，出借人同意各自按照其借出款项比例收取本金、利息。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第八条 违约责任<span></span></b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n1、任何一方违约，违约方应按本合同的约定承担违约责任，并赔偿另一方因此产生的费用和损失，包括但不限于调查费、诉讼或仲裁费、律师代理费、公证费、评估费、鉴定费、拍卖费、保全费、送达费、执行费、保管费、过户费、差旅费等全部费用。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n2、发生下列任何一项或几项情形的，视为借款人根本违约：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>1</span>）借款人提供虚假、伪造的申请材料，或进行虚假陈述；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>2</span>）借款人无法证明将借款用于本合同约定的详细借款用途；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>3</span>）借款人发生本合同第七条第<span>3</span>款约定的根本违约情形；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>4</span>）借款人恶意转移资产或放弃、减免对第三方的债权或与其他方签订有损于出借人权益的合同；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>5</span>）借款人资信恶化，发生了可能影响其还款能力、危及借款资金安全的情况，包括但不限于涉及民事诉讼、刑事诉讼、仲裁、执行、被公布失信及财产被采取保全等措施的情形；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>6</span>）借款人提供虚假或非法的证明、信息、资料，或隐瞒重要事实，或借款人未向出借人出具其有效签署的《收款确认书》；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>7</span>）借款人拒绝、阻挠或逃避出借人或其授权代理人对借款使用情况进行监督检查；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>8</span>）借款人死亡，被宣告死亡，被宣告失踪、丧失民事能力、或经营状况严重恶化、丧失商业信誉，破产、歇业、被停业整顿、被撤销、被吊销营业执照；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>9</span>）借款人未完全遵守或履行本合同项下的承诺保证或义务，或其他导致危及出借人借款资金安全的其他情形；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>10</span>）其它足以让出借人或服务方认为危及本合同项下债权安全的情况。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n3、若借款人发生上述根本违约情形或根据出借人或服务方合理判断借款人有可能发生以上情形时，出借人自己有权，并且授权服务方有权采取下列任何一项或几项救济措施：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>1</span>）立即暂缓、取消发放全部或部分借款；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>2</span>）宣布已发放借款全部到期，借款人应立即偿还所有借款、利息、逾期利息及违约金；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>3</span>）解除本合同；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>4</span>）采取法律、法规以及本合同约定的其他救济措施。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n4、借款人出现任何违约情形或本合同提前终止或解除时，借款人在此确认，若借款人的第三方账户里有任何余款，则按照如下顺序进行清偿，并承担因此产生的相关费用和税款：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>1</span>）根据本合同产生的包括但不限于调查费、诉讼或仲裁费、律师代理费、公证费、评估费、鉴定费、拍卖费、保全费、送达费、执行费、保管费、过户费、差旅费等全部费用和税款；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>2</span>）违约金（包含借款人在本合同项下的违约金以及借款人应向服务方承担的违约金）；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>3</span>）逾期利息；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>4</span>）利息；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>5</span>）拖欠服务方的服务费；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>6</span>）本金。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n5、对借款人存在逃避出借人监督、拖欠借款本金及利息、恶意逃避债务或其他严重违约行为时，出借人自己有权，并且授权服务方在不通知违约借款人的情况下，采取包括但不限于如下措施：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>1</span>）将借款人的违约情况提供给其他银行等金融机构和相关单位；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>2</span>）向媒体、居委会、村委会、用人单位等通报其不履行义务信息；<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	o&nbsp;&nbsp;&nbsp;\r\n（<span>3</span>）将违约借款人信息导入和提供给各类社会信用征信机构。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第九条 法律及争议解决<span></span></b>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	本合同的签订、履行、终止、解释均适用中华人民共和国法律（香港特别行政区法律法规、澳门特别行政区法律法规及台湾地区 法律法规除外）。如果借款人、出借人在本合同履行过程中发生任何争议，应友好协商解决；协商不成的，任何一方均有权向本合同签订地或原告住所地或被告住所\r\n地人民法院起诉，或者由具备强制执行申请权的一方持强制执行公证书申请强制执行。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第十条 通知及送达<span></span></b>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	各方就本合同履行过程及产生争议时相关文件和法律文书送达及法律后果作如下约定：<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n1、借款人、出借人在本合同首部列明的联系方式或在服务方平台注册时所预留的联系方式或在与本合同有关的协议、合同、 文件、申请表等有关资料中留存的任何一联系方式（包括但不限于电话、短信、微信、电子邮件、通信地址等）均为其有效送达地址，适用于本合同履行过程中的各\r\n类通知、协议等文件的送达，亦适用于合同履行过程中产生争议，以及争议进入仲裁、法院审理、强制执行或有关国家机关的各种法律文书（包括但不限于开庭、审 理、判决、强制执行、行政处罚、司法处罚、行政强制执行等）的送达。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n2、各方确认通过以上任何一种联系方式送达，即为有效送达。通过平台账户系统内通知、电子邮件、电话、短信或微信送达的（如送达仅涉及文件名称和登录链接，则具体文书需各方按提示登录相关网站查阅和领取），账户内通知、邮件、电话、短信或微信发出之时起视为送达；通过有关机关网站公告送达的，公告\r\n做出之日起视为送达；通过邮寄送达的，自邮件被签收或被拒签、退回（不论何种原因）之日起视为送达，无论如何是否被签收或拒签、退回，自邮件寄出之日起<span>3 </span>日视为送达已完成；直接送达的，送达人当场在送达回证上记明情况或收件人签收即视为送达已完成。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n3、如出借人、借款人的联系方式发生变更应及时以书面方式通知服务方及本合同其他方，如服务方的联系方式发生变更将通 过服务方的官方网站实时更新，无需再另行通知出借人或借款人。任何一方未按前述方式履行联系方式变更通知义务，则其原联系方式仍视为有效送达地址，并由其\r\n自行承担由此带来的法律后果。<span></span>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	<b>第十一条 附则<span></span></b>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n1、合同各方均应严格履行合同义务，非经各方协商一致或依照本合同约定，任何一方不得解除本合同。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n2、本合同签订之日起至借款全部清偿之日止，出借人或借款人的下列信息发生变更的，应当在相关信息发生变更之日起三日 内通过冠<span>e</span>通平台进行更新，包括但不限于：本人、本人的家庭联系人及紧急联系人、工作单位、居住地址、住所电话、手机号码、电子邮箱、传真、银行账户的变\r\n更等。若因任何一方不及时更新上述变更信息而带来的损失或额外费用应由该方承担。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n3、如果本合同中的任何一条或多条违反现行法律法规的，则该条将被视为无效，但该无效条款并不影响本合同其他条款的效力。<span></span>\r\n</p>\r\n<p align="left" style="margin-left:0cm;text-indent:-18pt;background:white;">\r\n	·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n4、本合同采用电子文本形式制成，各方均认可此形式合同的法律效力。借款人、出借人双方自行下载、保留至少一份本电子 合同，同时，委托服务方运营和管理的冠<span>e</span>通保管本电子合同及所有与本合同有关的书面文件或电子信息。借款人、出借人同意，出于保护其个人隐私考虑，申请由 服务方在借款人、出借人可阅览的电子合同当事人信息方面做部分信息隐藏处理，服务方保管的电子合同可显示全部完整信息，借款人、出借人对此均无异议。<span></span>\r\n</p>\r\n<p align="left">\r\n	<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><b>签约各方在此确认已经认真阅读并准确、全面地理解本合同的各项条款。同意签订本合同即视为签约各方对本合同各项条款充分理解并能完全接受，不存在任何疑虑\r\n与勉强。出借人及借款人均同意并认可<span>,</span>本合同的修改、解释权归服务方所有，出借人及借款人同意将及时登录冠<span>e</span>通平台进行查看，并按修改后的权利义务约定执 行。</b>\r\n</p>\r\n<p align="left" style="background:white;">\r\n	（以下无正文）<span></span>\r\n</p>\r\n<p>\r\n	<span>&nbsp;</span>\r\n</p>', 0, 9, '2017-08-24 07:46:47', 17),
(2, 0, '67890000', '', '', 1, 0, '', 0),
(3, 0, '111111133333', '', '', 1, 0, '', 0),
(4, 0, 'yyyyyyyyyyyyyyyyyyyyyyyyy', '', '', 1, 0, '', 0),
(6, 1, 'abc', 'upload/img/20170829831.jpg', 'abc', 1, 0, '2017-08-29 10:09:40', 16),
(7, 1, 'pppp', 'upload/img/20170829937.jpg', 'pppppppppppp', 1, 0, '2017-08-29 10:20:10', 17),
(8, 1, 'zzzzzzzzzzzzzz', 'upload/img/20170829676.jpg', 'oooooooppppp', 1, 0, '2017-08-29 10:48:05', 16);

-- --------------------------------------------------------

--
-- 表的结构 `bxj_class`
--

CREATE TABLE `bxj_class` (
  `classId` int(4) NOT NULL,
  `classType` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1.新闻分类2.项目状态3.年收益率4.出借期限5.还款方式',
  `className` varchar(20) NOT NULL COMMENT '名称',
  `ord` int(4) NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(16, 1, '新闻资讯', 0),
(17, 1, '行业资讯', 0);

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

-- --------------------------------------------------------

--
-- 表的结构 `bxj_img`
--

CREATE TABLE `bxj_img` (
  `id` int(4) NOT NULL,
  `url` varchar(100) NOT NULL COMMENT '地址',
  `type` varchar(10) NOT NULL COMMENT '类型',
  `ord` int(11) NOT NULL COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bxj_img`
--

INSERT INTO `bxj_img` (`id`, `url`, `type`, `ord`) VALUES
(2, 'upload/banner/20170901917.jpg', 'banner', 1),
(4, 'upload/banner/20170901324.jpg', 'banner', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bxj_member`
--

CREATE TABLE `bxj_member` (
  `id` int(11) NOT NULL,
  `realname` varchar(20) NOT NULL COMMENT '真实姓名',
  `identificationNumber` varchar(30) NOT NULL COMMENT '身份证号',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `marital` varchar(5) NOT NULL COMMENT '婚姻状况',
  `education` varchar(5) NOT NULL COMMENT '最高学历',
  `job` varchar(50) NOT NULL COMMENT '职业',
  `province` varchar(20) NOT NULL COMMENT '省',
  `city` varchar(50) NOT NULL COMMENT '市',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `earnedIncome` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '已赚收益',
  `interestReceived` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '待收利息',
  `principalReceived` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '待收本金',
  `createTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bxj_member`
--

INSERT INTO `bxj_member` (`id`, `realname`, `identificationNumber`, `sex`, `marital`, `education`, `job`, `province`, `city`, `mobile`, `pwd`, `earnedIncome`, `interestReceived`, `principalReceived`, `createTime`) VALUES
(2, '测试000', '', 0, '已婚', '本科', '行政', '辽宁', '营口', '15942461399', '52c69e3a57331081823331c4e69d3f2e', '0.00', '0.00', '0.00', '2017-08-29 10:02:37');

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
('index_amount', 'safe_operation_time', '11十'),
('index_amount', 'half_year_turnover', '11千'),
('index_amount', 'total_investment', '11百'),
('index_amount', 'total_users', '11万');

-- --------------------------------------------------------

--
-- 表的结构 `bxj_project`
--

CREATE TABLE `bxj_project` (
  `projectId` int(11) NOT NULL,
  `projectName` varchar(50) NOT NULL COMMENT '项目名称',
  `upperLendLimit` varchar(20) NOT NULL COMMENT '出借上限',
  `loanAmount` varchar(20) NOT NULL DEFAULT '0.00' COMMENT '借款金额',
  `minLoanAmount` varchar(20) NOT NULL DEFAULT '0.00' COMMENT '最低出借金额',
  `yearRate` tinyint(1) NOT NULL COMMENT '年化收益率',
  `timeLimit` varchar(20) NOT NULL COMMENT '借款期限',
  `repayment` varchar(20) NOT NULL COMMENT '还款方式',
  `interestDate` varchar(10) NOT NULL COMMENT '起息日',
  `riskManagement` text NOT NULL COMMENT '风险控制',
  `status` varchar(20) NOT NULL DEFAULT '0' COMMENT '状态',
  `projectOrd` int(4) NOT NULL COMMENT '排序',
  `createTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bxj_project`
--

INSERT INTO `bxj_project` (`projectId`, `projectName`, `upperLendLimit`, `loanAmount`, `minLoanAmount`, `yearRate`, `timeLimit`, `repayment`, `interestDate`, `riskManagement`, `status`, `projectOrd`, `createTime`) VALUES
(2, '信用优选X17082313', '200万', '10万', '10万', 11, '6个月', '按月还本付息', 'T+2', '', '还款中', 1, '2017-08-24 00:00:00'),
(4, 'abcdef', '50000', '45000', '40000', 13, '12个月', '一次性还本付息', 'T+1', 'aabbccddeeff', '已满标', 9, '2017-08-28 00:00:00'),
(5, '新手专享', '6000', '200', '100', 6, '3个月', '等额本息', 'T+1', 'kkkkk', '出借中', 0, '2017-09-01 00:00:39');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bxj_project_user`
--

INSERT INTO `bxj_project_user` (`userId`, `realName`, `identificationNumber`, `mortgageThing`, `mortgageAmount`, `lendAmount`, `createTime`, `projectId`) VALUES
(3, 'test0', '98765432100', '车辆0', '60001', '50001', '2017-08-26 00:00:00', 2),
(4, '0000000000', '0000000000000000000000000', '0000000000000000000000000', '0000000000', '0000000000', '2017-08-25 00:00:00', 2);

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
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bxj_article`
--
ALTER TABLE `bxj_article`
  MODIFY `articleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `bxj_class`
--
ALTER TABLE `bxj_class`
  MODIFY `classId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `bxj_fund`
--
ALTER TABLE `bxj_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `bxj_img`
--
ALTER TABLE `bxj_img`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `bxj_member`
--
ALTER TABLE `bxj_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `bxj_project`
--
ALTER TABLE `bxj_project`
  MODIFY `projectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `bxj_project_user`
--
ALTER TABLE `bxj_project_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
