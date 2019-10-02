-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 02 okt 2019 om 15:28
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `arts`
--

CREATE TABLE `arts` (
  `id` int(11) NOT NULL,
  `naam` varchar(45) NOT NULL,
  `specialisatie` varchar(45) DEFAULT NULL,
  `adres` varchar(255) NOT NULL,
  `telefoon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `arts`
--

INSERT INTO `arts` (`id`, `naam`, `specialisatie`, `adres`, `telefoon`) VALUES
(4, 'Artemas Genney', 'Quisque erat eros, viverra eget, congue eget,', '73195 Lukken Center', '534543'),
(5, 'Kipp Jenkerson', 'Cum sociis natoque penatibus et magnis dis pa', '6511 Hallows Lane', '5345432'),
(6, 'Lilah Craiker', 'Maecenas ut massa quis augue luctus tincidunt', '56 Farragut Place', '12321'),
(7, 'Elane Gresty', 'Nulla ut erat id mauris vulputate elementum. ', '9119 Ridge Oak Crossing', '543543'),
(8, 'Thayne Sertin', 'Vestibulum rutrum rutrum neque. Aenean auctor', '57 Hintze Terrace', '2353661'),
(9, 'Boyd Milligan', 'Nulla ut erat id mauris vulputate elementum. ', '78 Rieder Avenue', '2131534'),
(10, 'Raynell Speaks', 'Lorem ipsum dolor sit amet, consectetuer adip', '09675 Onsgard Circle', ''),
(11, 'Edgard Giannazzi', 'In blandit ultrices enim. Lorem ipsum dolor s', '8556 Declaration Circle', ''),
(12, 'Katie Mawne', 'Nullam molestie nibh in lectus. Pellentesque ', '76 Superior Drive', ''),
(13, 'Yehudi Tomanek', 'Mauris lacinia sapien quis libero. Nullam sit', '27 Mayer Alley', ''),
(14, 'Fredra Baitman', 'Nullam varius. Nulla facilisi.', '9684 Red Cloud Plaza', ''),
(15, 'Roze Gleeton', 'Proin eu mi. Nulla ac enim.', '4 Spenser Parkway', ''),
(16, 'Tamra Arnaudin', 'Ut tellus. Nulla ut erat id mauris vulputate ', '40 Jana Court', ''),
(17, 'Helyn Willerstone', 'Aenean auctor gravida sem. Praesent id massa ', '42849 Pepper Wood Parkway', ''),
(18, 'Thibaut Woodger', 'Quisque ut erat. Curabitur gravida nisi at ni', '9339 Dahle Junction', ''),
(19, 'Svend Blazdell', 'Praesent lectus. Vestibulum quam sapien, vari', '6234 Cordelia Way', ''),
(20, 'Dewitt Kop', 'Aliquam quis turpis eget elit sodales sceleri', '195 Brown Parkway', ''),
(21, 'Rozanne Smeed', 'Aliquam augue quam, sollicitudin vitae, conse', '64148 Westridge Road', ''),
(22, 'Yancy Chinge', 'Nulla tempus. Vivamus in felis eu sapien curs', '341 Prairie Rose Alley', ''),
(23, 'Asa Axtens', 'Morbi sem mauris, laoreet ut, rhoncus aliquet', '3 Maple Wood Point', ''),
(24, 'Christin Peacher', 'Suspendisse accumsan tortor quis turpis. Sed ', '63 Goodland Pass', ''),
(25, 'Trace Cotta', 'Sed accumsan felis. Ut at dolor quis odio con', '34 Maywood Point', ''),
(26, 'Noland Pellman', 'Duis bibendum, felis sed interdum venenatis, ', '41038 Vidon Hill', ''),
(27, 'Christiano Allison', 'In tempor, turpis nec euismod scelerisque, qu', '4581 Ridge Oak Place', ''),
(28, 'Kori Oaker', 'Nulla suscipit ligula in lacus. Curabitur at ', '9 Ruskin Junction', ''),
(29, 'Ev Kopf', 'Praesent blandit. Nam nulla. Integer pede jus', '665 Saint Paul Alley', ''),
(30, 'Elke Sappy', 'Nulla mollis molestie lorem. Quisque ut erat.', '15611 7th Lane', ''),
(31, 'Tait Rawsen', 'Proin at turpis a pede posuere nonummy. Integ', '92 Rusk Drive', ''),
(32, 'Sherwin Chapellow', 'Maecenas ut massa quis augue luctus tincidunt', '2 Oneill Parkway', ''),
(33, 'Lee Camis', 'Curabitur convallis. Duis consequat dui nec n', '20 Arapahoe Road', ''),
(34, 'Dorri Arter', 'Mauris lacinia sapien quis libero. Nullam sit', '516 Esch Hill', ''),
(35, 'Cherise Bucknall', 'Nulla ut erat id mauris vulputate elementum. ', '66706 Vera Circle', ''),
(36, 'Lawton Eagle', 'Etiam vel augue. Vestibulum rutrum rutrum neq', '78582 Lukken Avenue', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `medicijn`
--

CREATE TABLE `medicijn` (
  `id` int(11) NOT NULL,
  `naam` varchar(45) DEFAULT NULL,
  `fabrikant` varchar(50) DEFAULT NULL,
  `vergoeding` tinyint(1) NOT NULL DEFAULT 0,
  `bijwerkingen` varchar(255) DEFAULT NULL,
  `effect` varchar(255) DEFAULT NULL,
  `prijs` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `medicijn`
--

INSERT INTO `medicijn` (`id`, `naam`, `fabrikant`, `vergoeding`, `bijwerkingen`, `effect`, `prijs`) VALUES
(25, 'Anticonceptiepil', 'A-Medical', 0, 'Kans op kanker.', 'De hormonen in de pil zorgen dat er geen eicel vrij komen.', 1.00),
(27, 'Maalox', 'C-Bedrijf', 1, 'Maagdarmklachten', 'Algeldraat en magnesiumzouten binden maagzuur. Dit maakt de maaginhoud minder zuur.', 20.00),
(28, 'Paracetemol', 'A-Medical', 1, 'Medicijnafhankelijke hoofdpijn', 'Paracetamol stilt pijn en verlaagt koorts', 5.99);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(255) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefoon` varchar(255) NOT NULL,
  `geboortedatum` date NOT NULL,
  `adres` varchar(255) NOT NULL,
  `verzekeringnummer` int(255) NOT NULL,
  `arts_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `patient`
--

INSERT INTO `patient` (`patient_id`, `naam`, `email`, `telefoon`, `geboortedatum`, `adres`, `verzekeringnummer`, `arts_id`) VALUES
(279, 'Nap Dadley', 'ndadley0@accuweather.com', '6267567416', '1984-12-20', '27 Almo Plaza', 306239, 0),
(280, 'Monique Capaldi', 'mcapaldi1@bloglines.com', '2784994462', '2005-11-18', '43 Nova Terrace', 830076, 0),
(281, 'Nadeen Parres', 'nparres2@liveinternet.ru', '6719541704', '1971-11-01', '5 Ridge Oak Court', 55740, 0),
(282, 'Hort Diboll', 'hdiboll3@istockphoto.com', '4676246027', '2008-11-26', '923 Grayhawk Place', 67596, 0),
(283, 'Aggie Broggini', 'abroggini4@friendfeed.com', '5284550566', '2011-04-27', '1 Hagan Alley', 532453, 0),
(284, 'Barbie Elks', 'belks5@eventbrite.com', '7196682265', '1979-11-20', '00883 Cottonwood Parkway', 665543, 0),
(285, 'Wheeler Broadbury', 'wbroadbury6@t.co', '1873670027', '1982-02-19', '4 Surrey Pass', 579901, 0),
(286, 'Briny Haslehurst', 'bhaslehurst7@ycombinator.com', '5203874025', '2012-02-17', '1 Ryan Drive', 578, 0),
(287, 'Glyn Smuth', 'gsmuth8@state.gov', '5504396118', '2014-08-09', '79 Mayfield Plaza', 626843, 0),
(288, 'Shawn McAirt', 'smcairt9@cnbc.com', '1486929495', '2014-09-02', '4 Crowley Plaza', 557824, 0),
(289, 'Ave Magog', 'amagoga@geocities.com', '1547027532', '1972-10-06', '7187 Village Pass', 578680, 0),
(290, 'Ephrem Grahlman', 'egrahlmanb@addthis.com', '1668426262', '1963-08-12', '3 Northwestern Trail', 79641, 0),
(291, 'Woodie Caulcott', 'wcaulcottc@artisteer.com', '6195428396', '1998-09-27', '998 Blackbird Point', 632405, 0),
(292, 'Carin Miguel', 'ctummasuttid@cnet.com', '5993802929', '1967-02-08', '52230 Lien Point', 220170, 0),
(293, 'Merline Ioannidis', 'mioannidise@smugmug.com', '5679186036', '2017-08-23', '1 Monica Point', 798981, 0),
(294, 'Pacorro Tillot', 'ptillotf@forbes.com', '2283644371', '1993-08-22', '18366 Lakewood Avenue', 797346, 0),
(295, 'Carena Belf', 'cbelfg@un.org', '8028204378', '1982-07-07', '1 Mcbride Trail', 892325, 0),
(296, 'Hetty Govinlock', 'hgovinlockh@godaddy.com', '6194848381', '1973-09-06', '7870 Victoria Circle', 74660, 0),
(297, 'Flor Droogan', 'fdroogani@rakuten.co.jp', '9976463025', '2018-02-08', '884 Kings Way', 90282, 0),
(298, 'Lorry Gotobed', 'lgotobedj@aboutads.info', '6804089323', '1964-06-24', '812 Cambridge Parkway', 914854, 0),
(299, 'Maddi Stamper', 'mstamperk@fda.gov', '2718337319', '2002-04-11', '43126 Dovetail Drive', 210333, 0),
(300, 'Rice Ellesworthe', 'rellesworthel@chron.com', '1987270641', '1992-01-11', '4 Duke Way', 977748, 0),
(301, 'Aliza Headan', 'aheadanm@boston.com', '1527924849', '1969-03-01', '2 Arizona Parkway', 159410, 0),
(302, 'Gerhardine Schruurs', 'gschruursn@mit.edu', '7005039468', '1963-05-07', '79824 Lerdahl Center', 854015, 0),
(303, 'Essa Oliphant', 'eoliphanto@baidu.com', '4135854542', '1967-04-29', '7274 Bultman Point', 311285, 0),
(304, 'Edita Hengoed', 'ehengoedp@prweb.com', '2327001529', '2010-03-21', '7939 Algoma Road', 16644, 0),
(305, 'Lev Dootson', 'ldootsonq@cnn.com', '6957901671', '1966-07-31', '419 Brown Street', 331726, 0),
(306, 'Rhiamon Kitchenham', 'rkitchenhamr@ezinearticles.com', '2798365201', '2003-11-04', '41102 Lakewood Place', 775655, 0),
(307, 'Starlene Brandts', 'sbrandtss@spiegel.de', '6289081272', '1973-02-24', '4352 Mayer Lane', 308969, 0),
(308, 'Windy Gotcher', 'wgotchert@cloudflare.com', '2988128810', '1989-05-08', '94 Oxford Parkway', 421283, 0),
(309, 'Dayle Ludford', 'dludfordu@flavors.me', '2644161604', '1986-09-07', '40742 Nelson Court', 937178, 0),
(310, 'Nicolette Closs', 'nclossv@pen.io', '7775897424', '2016-04-04', '44 Merrick Place', 220423, 0),
(311, 'Leland Bullas', 'lbullasw@noaa.gov', '7401693125', '2019-09-25', '0 Cambridge Terrace', 350001, 0),
(312, 'Rebeca Hasel', 'rhaselx@github.io', '5719767314', '1969-05-17', '521 Oak Valley Avenue', 751701, 0),
(313, 'Sunny Biffen', 'sbiffeny@1688.com', '1545404363', '1968-01-30', '48972 Lakewood Gardens Trail', 129154, 0),
(314, 'Chauncey Permain', 'cpermainz@livejournal.com', '4566054478', '2003-04-04', '5889 School Trail', 980508, 0),
(315, 'Artur Giffard', 'agiffard10@cnn.com', '7313312428', '1986-07-25', '38525 Blaine Court', 678857, 0),
(316, 'Aldwin Bronger', 'abronger11@marriott.com', '5701747653', '1999-04-21', '4835 Messerschmidt Crossing', 978092, 0),
(317, 'Stephannie Laxon', 'slaxon12@yahoo.com', '7436620788', '1982-07-20', '21 Westerfield Place', 54992, 0),
(318, 'Padgett Bastin', 'pbastin13@zdnet.com', '3165680722', '1989-02-12', '39692 Pankratz Alley', 34665, 0),
(319, 'Myca Puzey', 'mpuzey14@theguardian.com', '6837128535', '1967-12-18', '798 Heffernan Parkway', 217939, 0),
(320, 'Ashien Cesconi', 'acesconi15@omniture.com', '9796473364', '1984-12-12', '85187 Forest Parkway', 767167, 0),
(321, 'Loleta O\'Bruen', 'lobruen16@prweb.com', '3296935173', '2009-09-02', '9 Lukken Way', 937428, 0),
(322, 'Travers Torricella', 'ttorricella17@yahoo.co.jp', '5711178831', '2005-09-20', '39 Blue Bill Park Crossing', 697260, 0),
(323, 'Abbot Madgwich', 'amadgwich18@mediafire.com', '7182537710', '2002-06-15', '1697 Grayhawk Junction', 213660, 0),
(324, 'Betsy Mercik', 'bmercik19@yandex.ru', '4905749909', '1974-11-08', '09 Messerschmidt Circle', 931914, 0),
(325, 'Aubrey Gonsalo', 'agonsalo1a@homestead.com', '4896104657', '2000-09-26', '87 Westend Terrace', 893094, 0),
(326, 'Dunstan Stempe', 'dstempe1b@hao123.com', '1004253104', '1973-01-31', '67 Lakewood Crossing', 256558, 0),
(327, 'Skelly Gley', 'sgley1c@list-manage.com', '5788225809', '1977-05-04', '76213 Mesta Junction', 819749, 0),
(328, 'Wernher Munden', 'wmunden1d@timesonline.co.uk', '3388950295', '1989-03-15', '2165 Corben Court', 536878, 0),
(329, 'Bary Keysall', 'bkeysall1e@paypal.com', '1438543168', '1998-05-11', '958 Gateway Court', 15174, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `recept`
--

CREATE TABLE `recept` (
  `recept_id` int(11) NOT NULL,
  `patient_naam` varchar(45) NOT NULL,
  `dosis` varchar(45) DEFAULT NULL,
  `herhalingsrecept` tinyint(4) DEFAULT NULL,
  `medicijn_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `arts`
--
ALTER TABLE `arts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `medicijn`
--
ALTER TABLE `medicijn`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`,`arts_id`);

--
-- Indexen voor tabel `recept`
--
ALTER TABLE `recept`
  ADD PRIMARY KEY (`recept_id`,`medicijn_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `arts`
--
ALTER TABLE `arts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT voor een tabel `medicijn`
--
ALTER TABLE `medicijn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT voor een tabel `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT voor een tabel `recept`
--
ALTER TABLE `recept`
  MODIFY `recept_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
