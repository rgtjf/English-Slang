-- phpMyAdmin SQL Dump
-- version 4.4.15.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-03-23 08:39:18
-- 服务器版本： 5.5.44-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `EnglishSlang`
--

-- --------------------------------------------------------

--
-- 表的结构 `Slang`
--

CREATE TABLE IF NOT EXISTS `Slang` (
  `slang` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci DEFAULT NULL,
  `checked` int(11) DEFAULT NULL,
  `chineseName` varchar(255) DEFAULT NULL,
  `englishName` varchar(255) DEFAULT NULL,
  `slangID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `Slang`
--

INSERT INTO `Slang` (`slang`, `checked`, `chineseName`, `englishName`, `slangID`) VALUES
('Jiffy', 0, '', '', 3),
('Hold your horses', 1, 'Keith', 'Keith', 4),
('Break a leg', 1, 'Keith', 'Keith', 5),
('No bones about it', 1, 'Keith', 'Keith', 6),
('Drama queen', 1, 'Yue XinYao', 'Singer', 7),
('Suck it up/ suck up', 1, 'Liu Min', 'Julia', 8),
('Party pooper', 1, 'Keith', 'Keith', 9),
('Chill out', 1, 'Young', 'Young', 10),
('The kicker is', 1, 'huangyujuan ', 'Betty', 11),
('No dice', 1, 'Cherry', 'Cherry', 12),
('Eighty-six', 1, 'Zhu Yingying', 'Joy', 13),
('Skeletons in the closet', 1, 'Ruby', 'Fan Tingting', 14),
('Have a cow', 1, 'Zhuyinying', 'Zoe', 15),
('Raining cats and dogs', 1, 'Tao Shufeng', 'Jim', 16),
('Dead fish/ cold fish', 1, 'Liu Min', 'Julia', 17),
('Cold feet', 1, 'Tian JunFeng', 'Mario', 18),
('As If!', 1, 'wang xiaoxian', 'serena', 19),
('All-nighter', 1, 'Wei Xingxing', 'Wyatt', 20),
('All-out', 0, '', '', 21),
('All-ears', 1, 'Yang Yujing', 'Josie', 22),
('To ace', 1, 'Cherry', 'Cherry', 23),
('Dime a dozen', 1, 'Ruby', 'Fan Tingting', 24),
('Bummed / a bum', 1, 'Corrine', 'Corrine', 25),
('To blow (multiple meanings)', 0, '', '', 26),
('Broke', 1, 'huangfan', 'Harry', 27),
('Back in the day', 1, 'Tao Shufeng', 'Jim', 28),
('Under the weather', 1, 'yin Fang', 'Phoebe', 29),
('Down and out', 1, 'Fu Wenjun', 'Eric', 30),
('Back on one''s feet', 1, 'Cherry', 'Cherry', 31),
('Ballpark', 0, '', '', 32),
('Cheesy', 1, 'Belle', 'Belle', 33),
('Corny', 0, '', '', 34),
('Call the shots', 1, 'huangyujuan ', 'Betty', 35),
('Wear the pants', 1, 'huangfan', 'Harry', 36),
('Crummy', 0, '', '', 37),
('Couch potato', 1, 'Shen Yanwei', 'Catherine', 38),
('Crash', 1, 'Ji zhenyu', 'Lucy', 39),
('Dead', 0, '', '', 40),
('Dough', 1, 'Corrine', 'Corrine', 41),
('Down (are you down?)', 1, 'huangyujuan ', 'Betty', 42),
('Dork / dorky', 0, '', '', 43),
('Nerd/ nerdy', 1, 'yin Fang', 'Phoebe', 44),
('Geek/ geeky', 1, 'Cherry', 'Cherry', 45),
('Creeper', 1, 'Ji zhenyu', 'Lucy', 46),
('Eat up', 1, 'Poal', 'Poal', 47),
('Ease off', 1, 'Belle', 'Belle', 48),
('Eye-opener', 1, 'Gao Shuang', 'Gloria', 49),
('Fair and square', 1, 'Gao Shuang', 'Gloria', 50),
('Fishy', 1, 'Zhuyinying', 'Zoe', 51),
('Freak ', 1, 'Belle', 'Belle', 52),
('Freak out', 1, 'wang xiaoxian', 'serena', 53),
('Gaydar', 1, 'Lorri', 'Lorri', 54),
('Bromance', 1, 'Li Qingyan', 'Celia', 55),
('Glitzy', 1, 'Lorri', 'Lorri', 56),
('Gonna', 0, '', '', 57),
('To Get (get a kick out of/ get one''s mind off of/ I don''t get it)', 1, 'Lorri', 'Lorri', 58),
('Hella', 1, 'Liu Xiangyu', 'Rick', 59),
('Hoodie', 0, '', '', 60),
('Hit the road/ Hit the sack', 1, 'Ruby', 'Fan Tingting', 61),
('Hype', 1, 'Tao Shufeng', 'Jim', 62),
('Hoopla', 1, 'Wang JiaJie', 'Jane', 63),
('Had it (I''ve had it!)', 1, 'Ruby', 'Fan Tingting', 64),
('Hick', 0, '', '', 65),
('In the doghouse', 1, 'Zhuyinying', 'Zoe', 66),
('In the cards', 1, 'Li Mingjie', 'Alice Li', 67),
('Iffy', 0, '', '', 68),
('John (2 definitions)', 0, '', '', 69),
('Jack up', 0, '', '', 70),
('To jerk someone around', 1, 'Wei Xingxing', 'Wyatt', 71),
('Killer ', 0, '', '', 72),
('To knock someone up', 1, 'Young', 'Young', 73),
('Knockout', 1, 'Gao Shuang', 'Gloria', 74),
('Keep a straight face', 1, 'Vivian', 'Vivian', 75),
('Keep your cool', 1, 'Fu WenJun', 'Eric', 76),
('Klutz/ Klutzy', 0, '', '', 77),
('Lemme', 0, '', '', 78),
('Lame', 1, 'chenyijia', 'David', 79),
('Lousy', 1, 'Poal', 'Poal', 80),
('Let down', 1, 'Poal', 'Poal', 81),
('Bee in your bonnet/ panties in a twist/ get your nose out of joint', 1, 'Tian JunFeng', 'Mario', 82),
('Funky', 1, 'Young', 'Young', 83),
('Quirky', 1, 'Lorri', 'Lorri', 84),
('Hang out', 1, 'wang xiaoxian', 'serena', 85),
('Good ole boy', 0, '', '', 86),
('To Schmooze', 0, '', '', 87),
('Eye candy', 1, 'Yue XinYao', 'Singer', 88),
('Ripoff', 0, '', '', 89),
('Airhead', 1, 'Fu WenJun', 'Eric', 90),
('Ditz/ ditzy', 0, '', '', 91),
('Ants in my pants', 1, 'huangfan', 'Harry', 92),
('Butterflies in my stomach', 1, 'Wang JiaJie', 'Jane', 93),
('To hook up with somebody', 1, 'Ji zhenyu', 'Lucy', 94),
('Red tape', 1, 'Yang Yujing', 'Josie', 95),
('Knocked up', 1, 'Fu WenJun', 'Eric', 96),
('Pain in the butt', 1, 'Cai Leyong', 'Merovingian', 97),
('To work my butt off', 1, 'Yang Yujing', 'Josie', 98),
('Jump on the bandwagon/ fall off the wagon', 0, '', '', 99),
('___-aholic (Shopaholic/ Chocoholic/  and then the actually word "alcoholic")', 0, '', '', 100),
('Pack rat', 1, 'Yang Yujing', 'Josie', 101),
('Sassy/ Sass', 1, 'Corrine', 'Corrine', 102),
('Second fiddle', 1, 'Ji zhenyu', 'Lucy', 103),
('Chopped liver', 0, '', '', 104),
('Jump down someone''s throat', 1, 'Lu Hui', 'Rachel', 105),
('Get off someone''s back', 1, 'Tian JunFeng', 'Mario', 106),
('Pull someone''s leg', 1, 'Tian JunFeng', 'Mario', 107),
('Going under the knife', 1, 'Gao Shuang', 'Gloria', 108),
('Spill the beans', 1, 'Li Mingjie', 'Alice Li', 109),
('Let the cat out of the bag', 1, 'Zhuyinying', 'Zoe', 110),
('Apple of one''s eye', 1, 'Wang JiaJie', 'Jane', 111),
('Rain on one''s parade', 1, 'Vivian', 'Vivian', 112),
('Hang in there', 1, 'Shen Yanwei', 'Catherine', 113),
('Smell a rat', 1, 'Shen Yanwei', 'Catherine', 114),
('Suck', 1, 'chenyijia', 'David', 115),
('sucker', 1, 'Young', 'Young', 116),
('to click (we just clicked)', 0, '', '', 117),
(' a leg up', 1, 'Tao Shufeng', 'Jim', 118),
('take that to the bank', 1, 'Li Mingjie', 'Alice Li', 119),
('wingman/ wing woman', 1, 'Zhu Yingying', 'Joy', 120),
('fly by the seat of one''s pants', 1, 'Zhu Yingying', 'Joy', 121),
('fly off the handle', 1, 'Li Qingyan', 'Celia', 122),
('smooch', 0, '', '', 123),
('bull in a china shop', 1, 'Li Qingyan', 'Celia', 124),
('pull strings', 1, 'Wang Feixiang', 'Flora', 125),
('wedgie', 0, '', '', 126),
('off the beaten path', 0, '', '', 127),
('a close call', 1, 'Xu Xia', 'Doris', 128),
('pissed (American definition different than British)', 0, '', '', 129),
('poppycock', 1, 'Wang Feixiang', 'Flora', 130),
('laid back', 1, 'chenyijia', 'David', 131),
('get a kick out of', 1, 'huangfan', 'Harry', 132),
('hang in there''', 1, 'Han Yiming', 'Emeli', 133),
('go dutch/ dutch', 1, 'yin Fang', 'Phoebe', 134),
('to have a crush on', 1, 'Li Qingyan', 'Celia', 135),
('dig in', 1, 'yin Fang', 'Phoebe', 136),
('chow down', 1, 'Wei Xingxing', 'Wyatt', 137),
('nuts (he''s going nuts)', 1, 'Wang Feixiang', 'Flora', 138),
('Fleek', 0, '', '', 142),
('On point', 1, 'Liu Xiangyu', 'Rick', 143),
('Shade', 1, 'chenyijia', 'David', 144),
('Bling ', 1, 'Han Yiming', 'Emeli', 145),
('Bubbly', 0, '', '', 146),
('Cougar', 1, 'Cai Leyong', 'Merovingian', 147),
('Hater', 0, '', '', 148),
('Gold digger', 1, 'Lu Hui', 'Rachel', 149),
('Junk in the trunk', 1, 'Liu Xiangyu', 'Rick', 150),
('Money maker', 1, 'Cai Leyong', 'Merovingian', 151),
('Photobomb', 1, 'Yue XinYao', 'Singer', 152),
('Wasted', 1, 'Corrine', 'Corrine', 153),
('Turn up', 1, 'Cai Leyong', 'Merovingian', 154),
('hella''', 1, '', '', 155),
('Making bank', 1, 'Xu Xia', 'Doris', 156),
('Hashtag', 0, '', '', 157),
('BYOB', 0, '', '', 158),
('Hipster', 0, '', '', 159),
('Basic', 0, '', '', 160),
('Selfie', 1, 'wang xiaoxian', 'serena', 161),
('TL; DR', 1, 'Yang Limin', 'Liam', 166),
('FML', 1, 'Yan Ziming', 'Mike', 167),
('Idk', 1, 'Yan Ziming', 'Mike', 168),
('WTF', 1, 'Yan Ziming', 'Mike', 169),
('Tbh', 1, 'Belle', 'Belle', 170),
('Lol', 1, 'Yang Limin', 'Liam', 171),
('Lmao', 1, 'Shen Yanwei', 'Catherine', 172),
('AF', 0, '', '', 173),
('YOLO', 1, 'Yue XinYao', 'Singer', 174),
('Btw', 1, 'Yang Limin', 'Liam', 175),
('NSFW', 1, 'Yang Limin', 'Liam', 176),
('Ship/ I ship it (noun and verb)', 1, 'wang feixiang', 'Flora', 177),
('Boobs', 0, '', '', 181),
('Booty', 1, 'Yan Ziming', 'Mike', 182),
('Saddlebags', 0, '', '', 183),
('Muffintop', 0, '', '', 184),
('Kankles', 0, '', '', 185),
('Love handles', 1, 'Liu Min', 'Julia', 186),
('Unibrow', 1, 'huangyujuan', 'Betty', 187),
('Uniboob', 0, '', '', 188),
('Creeper stash', 0, '', '', 189),
('Balls/ nuts (he hit me in the balls/ grow some balls)', 0, '', '', 190),
('Zit', 1, 'Wei Xingxing', 'Wyatt', 191),
('It''s not over till the fat lady sings', 1, 'Liu Min', 'Julia', 195),
('Close but no cigar', 1, 'Zhu Yingying', 'Joy', 196),
('Don''t look a gift horse in the mouth', 1, 'Xu Xia', 'Doris', 197),
('Cat got your tongue?', 1, 'Lu Hui', 'Rachel', 198),
('The early bird catches the worm', 1, 'Vivian', 'Vivian', 199),
('Put that in your pipe and smoke on it', 1, 'Liu Xiangyu', 'Rick', 200),
('How do you like them apples?', 1, 'Vivian', 'Vivian', 201),
('Hit the ball straight out of the park', 1, 'Xu Xia', 'Doris', 202),
('Kill two birds with one stone', 1, 'Han Yiming', 'Emeli', 203),
('I''ll be a monkey''s uncle', 1, 'Li Mingjie', 'Alice Li', 204),
('Diamond in the rough', 1, 'Lu Hui', 'Rachel', 205),
('Once in a blue moon', 1, 'Wang JiaJie', 'Jane', 206);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Slang`
--
ALTER TABLE `Slang`
  ADD PRIMARY KEY (`slangID`),
  ADD UNIQUE KEY `slangID` (`slangID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
