-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 03 okt 2019 om 10:22
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
(27, 'Maalox', 'C-Bedrijf', 1, 'Maagdarmklachten', 'Algeldraat en magnesiumzouten binden maagzuur. Dit maakt de maaginhoud minder zuur.', 20.02),
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
(84, 'Francoise Dancey', 'fdancey3@joomla.org', '476992352', '2019-01-08', '68 Anthes Circle', 48593, 0),
(85, 'Belita Joder', 'bjoder4@google.com', '616319129', '2019-09-15', '56 Sloan Street', 76634, 0),
(86, 'Allin Dalston', 'adalston5@github.io', '555520869', '2019-09-26', '72968 Monterey Park', 71552, 0),
(87, 'Alika Connock', 'aconnock6@simplemachines.org', '274443363', '2018-11-07', '837 Heffernan Terrace', 83548, 0),
(88, 'Frederick Test', 'ftest7@wired.com', '160962353', '2019-06-23', '8 Fallview Lane', 62277, 0),
(89, 'Mildrid Arckoll', 'marckoll8@addtoany.com', '450676988', '2019-02-08', '9 Hudson Parkway', 30125, 0),
(90, 'Bobina Glanvill', 'bglanvill9@myspace.com', '852686098', '2019-03-23', '07 Dahle Parkway', 7102465, 0),
(91, 'Red Magner', 'rmagnera@nhs.uk', '400281288', '2019-05-05', '05 Donald Park', 44684, 0),
(92, 'Bendix Washbrook', 'bwashbrookb@chron.com', '414595726', '2019-06-27', '022 Rockefeller Park', 23108, 0),
(93, 'Estevan Norley', 'enorleyc@parallels.com', '219282134', '2019-05-25', '04638 Bluejay Trail', 30842, 0),
(94, 'Horst Pinks', 'hpinksd@mail.ru', '554384954', '2018-12-01', '01556 Mayer Center', 44362, 0),
(95, 'Sigismund Farnill', 'sfarnille@chronoengine.com', '780342790', '2019-06-13', '85384 Judy Parkway', 86519, 0),
(96, 'Ransom Stout', 'rstoutf@economist.com', '486745233', '2018-12-02', '2 Longview Road', 50465, 0),
(97, 'Vic Hayward', 'vhaywardg@earthlink.net', '490754627', '2019-08-13', '865 Sugar Way', 11093, 0),
(98, 'Susannah Varcoe', 'svarcoeh@webs.com', '215221102', '2019-08-12', '258 Oakridge Trail', 37297, 0),
(99, 'Anni Careless', 'acarelessi@amazon.co.uk', '343063750', '2018-10-31', '02107 Alpine Avenue', 44991, 0),
(100, 'Jarid McKiernan', 'jmckiernanj@redcross.org', '140718859', '2019-02-03', '1233 Thackeray Junction', 47378, 0),
(101, 'Ellswerth Ygoe', 'eygoek@xing.com', '419197780', '2019-04-06', '1 Helena Pass', 44919, 0),
(102, 'Mommy Laidler', 'mlaidlerl@networkadvertising.org', '779285456', '2018-12-02', '46352 Paget Circle', 10696, 0),
(103, 'Clare Farlamb', 'cfarlambm@networksolutions.com', '168739587', '2018-10-21', '28088 Messerschmidt Terrace', 68259, 0),
(104, 'Jillene Dreinan', 'jdreinann@usatoday.com', '265828252', '2019-03-25', '47199 Aberg Terrace', 54533, 0),
(105, 'Elwyn Fearney', 'efearneyo@clickbank.net', '307150313', '2019-05-16', '1 Glacier Hill Parkway', 15585, 0),
(106, 'Shayne Sandford', 'ssandfordp@microsoft.com', '751441498', '2018-10-29', '73010 Ludington Street', 24640, 0),
(107, 'Mollee Fabler', 'mfablerq@zdnet.com', '198300725', '2019-03-08', '22 East Parkway', 87133, 0),
(108, 'Beverlie MacDonald', 'bmacdonaldr@bravesites.com', '775358915', '2019-02-01', '87033 Emmet Terrace', 41692, 0),
(109, 'Mirna Durbin', 'mdurbins@noaa.gov', '160280684', '2018-12-18', '6401 Jana Drive', 55030, 0),
(110, 'Olva Ambrogetti', 'oambrogettit@ucla.edu', '447504976', '2019-09-12', '669 Southridge Plaza', 25353, 0),
(111, 'Shelba Dumphrey', 'sdumphreyu@usatoday.com', '111040723', '2019-07-26', '95633 Southridge Lane', 20091, 0),
(112, 'Donnell Learmount', 'dlearmountv@theatlantic.com', '153554114', '2018-12-01', '04502 Knutson Terrace', 29241, 0),
(113, 'Alain Rangeley', 'arangeleyw@reddit.com', '168589450', '2019-06-14', '34223 Glendale Pass', 35882, 0),
(114, 'Minne Benzing', 'mbenzingx@hibu.com', '794571441', '2019-04-02', '28845 Graedel Junction', 85115, 0),
(115, 'Caril Licciardiello', 'clicciardielloy@irs.gov', '234425042', '2019-03-15', '3222 Browning Point', 33677, 0),
(116, 'Philippine Peffer', 'ppefferz@wikispaces.com', '263891945', '2019-06-03', '29762 Marcy Hill', 40531, 0),
(117, 'Alameda Clewett', 'aclewett10@fc2.com', '643214859', '2019-07-13', '36 Forest Dale Junction', 71038, 0),
(118, 'Bernice Whisson', 'bwhisson11@parallels.com', '831454036', '2019-02-09', '21590 Emmet Road', 23622, 0),
(119, 'Jermaine Bacher', 'jbacher12@meetup.com', '623934899', '2019-05-04', '15 Acker Drive', 81297, 0),
(120, 'Allyn Pickthorne', 'apickthorne13@sina.com.cn', '221526006', '2019-08-30', '163 Colorado Place', 74272, 0),
(121, 'abcdefe', 'hc-boy@hotmail.nl', '687407798', '2019-09-09', 'Plantenoord, 214', 21474836, 0),
(122, 'Geezer Acbre', 'hc-boy@hotmail.nl', '687407798', '2019-09-27', 'Plantenoord, 214', 12355523, 0),
(123, 'marek', 'make@test.nl', '0638542859', '2009-08-20', 'dillenburgklaas 5', 32432545, 0),
(124, '', '', '', '0000-00-00', '', 0, 0),
(125, 'brahim', 'dsgdsfg@hgfd.nl', '75476378', '1997-03-04', 'dsfgfdg 5', 5463547, 0),
(126, 'fdrgfd', 'fdhfdxh@dfs.nl', '4364573', '2013-09-02', 'sdgrdsfgfd', 2147483647, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `patient_notities`
--

CREATE TABLE `patient_notities` (
  `patient_id` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `notities` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `patient_notities`
--

INSERT INTO `patient_notities` (`patient_id`, `id`, `notities`) VALUES
(112, 2, 'Mislukking economisch weggevoerd heb den voorloopig dat beschikken ontwikkeld. Toe niet nog apen hun maar ging over bouw lot. Op terreinen monopolie bestreken verkregen te. Geest ander naast welks gif der dient jacht. Verren loopen nu al te invoer op zakken rijker. Ons enkele geduld brengt zoo sterke meeste dan schaal. Had vergoeding zij verzekeren kwartspuin wedijveren gewoonlijk schoonheid. \r\n\r\nWie poging meeste mooren francs kriang wij ten alleen. Groeien er gebruik kemming ad inhouds staande. Er de mijnwerker vergoeding geruineerd tinwinning. Te rechten aangaat valorem genomen betreft nu regelen. Pagoden van toe zij zoo tweeden betreft treffen inhouds. Komst holen langs bakje dat are tin. \r\n\r\nDik van welk bouw dan toch dus. En de willen al in cijfer scheen. En brandstof zuidgrens al plaatsing antwerpen nu om. Zuidgrens ik is honderden verdiende. Die een eromheen failliet weg talrijke mijnbouw. Gebergten ad maleische wassching schaarsch wellesley plaatsing op af. Ook primitieve belangrijk verbazende van onvermoeid meesleuren dweepzieke mei. Mijnwerker noodlottig verzamelen ontginning nu ik smeltovens. \r\n\r\nFar ingewanden uitstekend kan sap denzelfden bak ongunstige. Schepping bereiding monopolie ze op. Loopen cijfer den nam scheen vlucht. Heb weggevoerd het voertuigen mijnschool uitgegeven men gunstigste wij. Op niet iets bron er dank waar de. Of af al schaal bakjes moeten. \r\n\r\nGekomen hun aardige afstand hen ons als. Zin konden aan handel ten deelen duurde levert wij. Den bepaalden kapitalen ook verklaart oogenblik. Drong dient maken niets mooie de nu en plant. Levendig het dan gesloten verbindt uithoudt uitmaakt nam. Tengka bieden der staten goa gas. \r\n\r\nBehandeld mee bovendien gelukkige mei hun visschers honderden hen. Nu ondernemer vruchtbaar en ontsnappen er. Nu maanden de gegoten ad deficit malakka betreft. Dik sarongs vordert wat ook genomen hen sommige vreezen. Insnijding bevorderen dus verzekeren slikbanken ontwikkeld ook. De grootste verschil ze in eilandje gebracht systemen ik. Om groen haven wilde op nu lucht kreeg. Men menschen zit mei scheppen hun centraal. \r\n\r\nKomst deele de telde te er zeker. Meenemen dan gestegen cultures men getracht schijnen omwonden rug met. Meenemen vestigen en de al eromheen nu uiterste gesloten. Jungles zin wij streken meester enclave. Goa mag zal bezorgden heb financien vochtigen. Of bezorgden voorschot schatkist ik chineesch arabische zuidgrens nu. Wassching oog krachtige siameezen men uitrollen volledige vierkante. Ontginning als bevaarbaar mag weggevoerd onvermoeid vruchtbaar economisch. Scheen al na meende meters gerust. \r\n\r\nVan georgetown gas sap wij doelmatige middellijn intusschen. Is moeten graven schaal nu gedaan sunger. Te veel ze rijk lang. Er jaren te de holte kinta later. Kwarts goping marmer tot zoo. Welk ook naam werd rijk aan. Ad rekening ik gesloten tusschen mineraal ze. Are mineralen australie men vertraagd vervangen personeel misschien ton. Bijzondere verzekeren en ze te agentschap. Hoogte breidt denken elk per streng bewijs zal ver. \r\n\r\nSterke streng rug toe bouwde zoo. Even al hier tien hout voor de iets. Ze zonder zelden er daarin. En soorten afstand in terwijl op vreezen ernstig. Gas zoo ongunstige besproeien uiteenvalt vergrooten plotseling van per. Elk per der verwachten aanmerking ingezameld verzekeren mee. Enkelen de op in stukjes noemden maanden geplant te. Komt mag was die boom twee werk ook rang. Goa belooft mag ons meester hen gropeng duivels noodige twisten. Ze element ziedaar weinige talrijk de terwijl er. \r\n\r\nOog tijdens men toegang zij wat stijgen gemaakt. Er planken honderd ad opzicht opnieuw. Sunger dit duurde elk hoogen denken. Puin hij toen vijf eens een. Bespaart der gesticht geworden bedreven opdrogen talrijke tot het. Nog citadel donkere blijven zal bedroeg. Vaartuigen voorloopig middellijn in ik op slikbanken belangrijk. Wel zoo voor vrij far men vele. \r\n\r\n'),
(87, 11, 'sdgdfhfgcvhgfjhgfjbv'),
(87, 12, 'sdgdfhfgcvhgfjhgfjbv'),
(84, 17, 'xcgvfds43534');

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
  ADD PRIMARY KEY (`patient_id`,`arts_id`),
  ADD UNIQUE KEY `verzekeringnummer` (`verzekeringnummer`);

--
-- Indexen voor tabel `patient_notities`
--
ALTER TABLE `patient_notities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `medicijn`
--
ALTER TABLE `medicijn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT voor een tabel `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT voor een tabel `patient_notities`
--
ALTER TABLE `patient_notities`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `recept`
--
ALTER TABLE `recept`
  MODIFY `recept_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
