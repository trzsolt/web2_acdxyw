-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 05:32 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twiligh1_web2`
--

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(10) UNSIGNED NOT NULL,
  `csaladi_nev` varchar(45) NOT NULL DEFAULT '',
  `utonev` varchar(45) NOT NULL DEFAULT '',
  `bejelentkezes` varchar(12) NOT NULL DEFAULT '',
  `jelszo` varchar(40) NOT NULL DEFAULT '',
  `jogosultsag` varchar(3) NOT NULL DEFAULT '_1_'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `csaladi_nev`, `utonev`, `bejelentkezes`, `jelszo`, `jogosultsag`) VALUES
(1, 'Rendszer', 'Admin', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '__1'),
(2, 'Teszt', 'Jakab', 'tesztjakab', '6cf8efacae19431476020c1e2ebd2d8acca8f5c0', '_1_'),
(3, 'Szabó', 'János', 'szabojanos', 'df4d8ad070f0d1585e172a2150038df5cc6c891a', '_1_'),
(4, 'Kovács', 'Tamás', 'kovacstamas', 'b020c308c155d6bbd7eb7d27bd30c0573acbba5b', '1__'),
(5, 'Szűcs', 'Anna', 'szucsanna', '9ab1a4743b30b5e9c037e6a645f0cfee80fb41d4', '1__');

-- --------------------------------------------------------

--
-- Table structure for table `jatekok`
--

CREATE TABLE `jatekok` (
  `jatekID` int(11) NOT NULL,
  `jatekosszamID` int(11) NOT NULL,
  `kep` varchar(30) NOT NULL,
  `nev` varchar(40) NOT NULL,
  `jatekosszam` varchar(10) NOT NULL,
  `jatekido` varchar(15) NOT NULL,
  `leiras` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jatekok`
--

INSERT INTO `jatekok` (`jatekID`, `jatekosszamID`, `kep`, `nev`, `jatekosszam`, `jatekido`, `leiras`) VALUES
(1, 1, 'leo.png', 'Leo', '2-5 fő', '30 perc', 'A Leo kooperatív családi társasjáték. Segítsetek a pletykás oroszlánnak eljutni a fodrászhoz! A játékosok a kártyáik kijátszásával irányítják Leót, aki lépten-nyomon megtorpan csevegni egy kicsit – de ez elkerülhető, ha emlékszünk, hol milyen állat volt... A memóriát és az együttműködést fejlesztő társasjáték.'),
(2, 1, 'cortexkids.png', 'Cortex Kids', '2-6 fő', '15 perc', 'Gyorsuld le a többieket nyolcféle agymegmozgató feladványban – már kisebbeknek is! A Cortex Kids pörgős megfigyelési-logikai családi partijáték. A játékosok kártyáról kártyára nyolc, az agyuk különböző területeit igénybe vevő feladványtípusban mérhetik össze gyorsaságukat. Kakukktojás, memória, párkeresés... és különleges, kitapintható kártyák! Kombinálható a többi Cortex Kids társasjátékkal.'),
(3, 2, 'dobble.jpg', 'Dobble: Bogyó és Babóca', '2-8 fő', '10 perc', 'A gyorsaság és felismerés játéka a legkisebbeknek Bogyóval és Babócával! A Dobble Bogyó és Babóca pörgős, zsebre vágható kártyajáték 5-féle játékváltozattal már 4 éves gyerekeknek is. A kártyákon 6-6 különböző, Bogyó és Babóca témájú képecske látható, és bármelyik két kártyán mindig van egy ugyanolyan belőlük. A játékosok feladata, hogy a többieknél gyorsabban megtalálják a közös képeket. A koncentrációt és a reflexeket fejlesztő társasjáték.'),
(4, 2, 'robotok.png', 'Robotok', '2-8 fő', '15-20 perc', 'Gurul a kis robot - ki tudja, hol áll meg? A Robotok az Év gyerekjátéka díjra jelölt, mókás, kooperatív partijáték. A játékosoknak ki kell találniuk, hogy a robotot - fejben - mozgató társuk hány tárgyat hagyott maga mögött a kártyákon jelzett térképen, és melyiknél „állt” meg. Az egymásra figyelést fejlesztő társasjáték.'),
(5, 3, '7csoda_parbaj.png', '7 Csoda: Párbaj', '2 fő', '30-40 perc', 'Kire emlékszik majd a történelem? – ókori birodalmak párbaja. A 7 Csoda: Párbaj kétfős társasjáték tapasztaltabb játékosok számára is. Felépíthetjük csodáinkat, fejleszthetjük haderőnket, építhetünk különleges épületeket, tudományos áttöréseket érhetünk el – többféle úton eljutva a végső győzelemig...'),
(6, 3, 'jaipur.png', 'Jaipur', '2 fő', '30-40 perc', 'Indiai kereskedők párharca – legyél te a maharadzsa udvari beszállítója! A Jaipur szép, könnyen tanulható, kétfős társasjáték rutinos játékosoknak is. Kártyaszettek gyűjtésével juthatunk értékes árukhoz, figyelve, hogy ellenfelünk éppen mit gyűjt...'),
(7, 4, 'everdell.png', 'Everdell – Az Örökfa árnyékában', '2-4 fő', '40-80 perc', 'Az ősi fa tövében állatok városai épülnek – legyen a tiéd a legsikeresebb! Az Everdell – Az Örökfa árnyékában különleges megjelenésű, összetettebb, „tablóépítő” családi társasjáték. A játékosok egy gyönyörű fa tövében építik erdei birodalmukat: az akciók használatával és az erőforrásaik okos beosztásával otthont teremtenek az állatoknak, akik szakértelmükkel tovább erősítik a városkát... Tablóépítés: a korlátozott számban megszerezhető kártyákból kell, azok egymásra hatásait figyelembe véve, a legértékesebb kombinációkat létrehozni.'),
(8, 4, 'concordia.png', 'Concordia', '2-5 fő', '100-150 perc', 'A Római Birodalom legsikeresebb kereskedőivé válhatunk! A Concordia: Sestertiusszal kikövezett utak könnyen tanulható, népszerű stratégiai társasjáték. A játékosok kereskedelmi utakat és hálózatot igyekeznek kiépíteni akciókártyáikkal, amelyekből újabbakat, erősebbeket is szerezhetnek, illetve amelyekkel hódolhatnak az isteneknek is...'),
(9, 5, 'fedonevek.png', 'Fedőnevek', '2-8 fő', '20-40 perc', 'Két ügynökség összecsapása: melyikük kapcsolja össze okosabban a fedőneveit? A Fedőnevek zseniális, Év játéka díjas szóasszociációs partijáték. A két csapat vezetőinek olyan szavakat kell kitalálniuk, amelyek segítségével a társaik rájönnek, hogy a kirakott 25 szóból melyek a sajátjaik. A szókincset és a kreativitást fejlesztő társasjáték.'),
(10, 5, 'alarcosbal.png', 'Álarcosbál', '2-13 fő', '30-60 perc', 'Álarcok színes kavalkádja – és nem mindig tudni, ki van az álarc mögött... Az Álarcosbál titkos szerepes partijáték akár 13 fő számára is. A játékosok egy karneváli forgatagban cserélgetik álarcaikat úgy, hogy egy idő után maguk sem tudják biztosan, milyen maszkot viselnek. Ezért amikor elő kell lépnie egy-egy szereplőnek, többen is jelentkezni fognak, és aki tévedett, az fizetni fog! Mások szándékainak felismerését fejlesztő társasjáték.'),
(11, 6, 'paniclab.png', 'Panic lab', '2-10 fő', '10-30 perc', 'Az amőbák elszabadultak a laboratóriumban, és most szétszéledtek mindenfelé. Gyorsan el kell kapnod őket!\r\nA speciális dobókockák megmondják, hogy melyik laboratóriumból tűnt el az amőba és milyen amőbát is kell pontosan keresnünk, akinek először ez sikerül, azé a pont.\r\nDe vigyázz, az amőbák menekülnek, szellőzőkben bujkálnak, mutálódnak, nem lesz könnyű dolgod velük!\r\nBiztos te fogsz nyerni, ha gyors az észjárásod és fürge vagy.'),
(12, 6, 'themind.png', 'The Mind - Érezz rá!', '2-6 fő', '20 perc', 'Hangolódjatok egymásra! Megérzitek, mikor kerültök sorra? A The Mind – Érezz rá! világszerte népszerű, különleges, kooperatív partijáték. A játékosoknak emelkedő számsorrendben kell lerakniuk a kártyáikat, úgy, hogy nem látják egymás lapjait és nem is beszélhetnek a sajátjaikról... Az egymásra figyelést fejlesztő társasjáték.'),
(13, 7, 'kingdomino.png', 'Kingdomino', '2-4 fő', '15 perc', 'Építsétek fel a saját királyságotokat színes dominólapkákból! A Kingdomino egyszerű szabályú, változatos, Év játéka díjas családi társasjáték. A játékosok mezőkből, erdőkből, bányákból, szántókból felépítik a saját birodalmukat, vigyázva, hogy úgy válasszanak lapkákat, hogy ne hagyjanak ellenfeleiknek túl értékeseket. Az előre tervezést fejlesztő társasjáték.'),
(14, 7, 'igen.png', 'Igen?', '2-6 fő', '30 perc', 'Az érdekes kérdések partijátéka. Az Igen? magyar fejlesztésű beszélgetésindító társasjáték. A játékosok könnyed és komoly kérdésekre válaszolnak igennel vagy nemmel – és meg kell tippelniük, vajon a többiek hogyan válaszoltak... Az empátiát fejlesztő társasjáték. Önállóan is játszható, de kombinálva az Igen? És... társasjátékkal akár 12 fő is játszhatja!'),
(15, 8, 'hullamhossz.png', 'Hullámhossz', '2-12 fő', '30-45 perc', 'Együtt rezegtek? A Hullámhossz zseniális beszélgetős-asszociációs partijáték. Az egyik játékos húz egy ellentétpárt (hideg–meleg, vacak–príma, Star Wars–Star Trek stb.), majd megpörgeti a mutatót, amiből kiderül, hogy a spektrumon hol helyezkedik el, amit majd mondania kell.'),
(16, 8, 'magicmaze.png', 'Magic Maze - Fogd és fuss!', '1-8 fő', '15 perc', 'Fosszátok ki a plazát a hőseitekkel – csak csendben! A Magic Maze – Fogd és fuss! különleges, kooperatív partijáték nagyobb társaságoknak is. A játékosok közösen irányítják a plázában kódorgó bábukat, úgy, hogy mindenki máshoz ért: egyikük csak balra mozgathatja bábukat, a másikuk csak jobbra, a harmadik használhatja a mozgólépcsőt stb... És mindezt némán, tehát nem beszélhetik meg, mi is lenne a helyes lépés, a homokóra meg csak pereg... Az egymásra figyelést fejlesztő társasjáték.');

-- --------------------------------------------------------

--
-- Table structure for table `jatekosszam`
--

CREATE TABLE `jatekosszam` (
  `jatekosszamID` int(11) NOT NULL,
  `korID` int(11) NOT NULL,
  `jatekos` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jatekosszam`
--

INSERT INTO `jatekosszam` (`jatekosszamID`, `korID`, `jatekos`) VALUES
(1, 1, 'Kis gyerekcsapat (2-4 fő)'),
(2, 1, 'Nagyobb gyerekcsapat (5-12 fő)'),
(3, 2, 'Kettesben'),
(4, 2, 'Kis társaság (3-4 fő)'),
(5, 2, 'Nagy társaság (5-8 fő)'),
(6, 3, 'Kettesben (szülő + gyerek)'),
(7, 3, 'Kiscsalád (3-4 fő)'),
(8, 3, 'Nagycsalád (5-8 fő)');

-- --------------------------------------------------------

--
-- Table structure for table `kommentek`
--

CREATE TABLE `kommentek` (
  `kommentID` int(10) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `komment` text NOT NULL,
  `kommentDatum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kommentek`
--

INSERT INTO `kommentek` (`kommentID`, `userID`, `komment`, `kommentDatum`) VALUES
(1, 2, 'Ez itt egy komment.', '2020-12-16 17:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `korosztaly`
--

CREATE TABLE `korosztaly` (
  `korID` int(10) UNSIGNED NOT NULL,
  `csoport` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korosztaly`
--

INSERT INTO `korosztaly` (`korID`, `csoport`) VALUES
(1, 'Gyerek'),
(2, 'Felnőtt'),
(3, 'Vegyes (család)');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `url` varchar(30) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `szulo` varchar(30) NOT NULL,
  `jogosultsag` varchar(3) NOT NULL,
  `sorrend` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`url`, `nev`, `szulo`, `jogosultsag`, `sorrend`) VALUES
('admin', 'Admin', '', '001', 90),
('belepes', 'Belépés', '', '100', 70),
('elektronikus', 'Elektronikus úton', 'elerhetoseg', '111', 60),
('elerhetoseg', 'Elérhetőség', '', '111', 20),
('galeria', 'Galéria', '', '101', 40),
('jatekajanlo', 'Játékajánló', '', '111', 30),
('kilepes', 'Kilépés', '', '011', 80),
('nyitolap', 'Nyitólap', '', '111', 10),
('szemelyesen', 'Személyesen', 'elerhetoseg', '111', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jatekok`
--
ALTER TABLE `jatekok`
  ADD PRIMARY KEY (`jatekID`);

--
-- Indexes for table `jatekosszam`
--
ALTER TABLE `jatekosszam`
  ADD PRIMARY KEY (`jatekosszamID`);

--
-- Indexes for table `kommentek`
--
ALTER TABLE `kommentek`
  ADD PRIMARY KEY (`kommentID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `korosztaly`
--
ALTER TABLE `korosztaly`
  ADD PRIMARY KEY (`korID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`url`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jatekok`
--
ALTER TABLE `jatekok`
  MODIFY `jatekID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jatekosszam`
--
ALTER TABLE `jatekosszam`
  MODIFY `jatekosszamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kommentek`
--
ALTER TABLE `kommentek`
  MODIFY `kommentID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `korosztaly`
--
ALTER TABLE `korosztaly`
  MODIFY `korID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kommentek`
--
ALTER TABLE `kommentek`
  ADD CONSTRAINT `kommentek_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `felhasznalok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
