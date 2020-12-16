CHARACTER SET utf8 COLLATE utf8_general_ci;

USE  `twiligh1_web2`;

CREATE TABLE IF NOT EXISTS `korosztaly` (
  `korID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `csoport` varchar(20) NOT NULL,
  PRIMARY KEY (`korID`)
)
ENGINE = MYISAM
CHARACTER SET utf8 COLLATE utf8_general_ci;



INSERT INTO `korosztaly` (`korID`, `csoport`) VALUES
(1, 'Gyerek'),
(2, 'Felnőtt'),
(3, 'Vegyes (család)');


CREATE TABLE IF NOT EXISTS `jatekosszam` (
  `jatekosszamID` int(11) NOT NULL AUTO_INCREMENT,
  `korID` int(11) NOT NULL,
  `jatekos` varchar(40) NOT NULL,
  PRIMARY KEY (`jatekosszamID`)
)
ENGINE = MYISAM
CHARACTER SET utf8 COLLATE utf8_general_ci;



INSERT INTO `jatekosszam` (`jatekosszamID`, `korID`, `jatekos`) VALUES
(1, 1, 'Kis gyerekcsapat (2-4 fő)'),
(2, 1, 'Nagyobb gyerekcsapat (5-12 fő)'),
(3, 2, 'Kettesben'),
(4, 2, 'Kis társaság (3-4 fő)'),
(5, 2, 'Nagy társaság (5-8 fő)'),
(6, 3, 'Kettesben (szülő + gyerek)'),
(7, 3, 'Kiscsalád (3-4 fő)'),
(8, 3, 'Nagycsalád (5-8 fő)');


CREATE TABLE IF NOT EXISTS `jatekok` (
  `jatekID` int(11) NOT NULL AUTO_INCREMENT,
  `jatekosszamID` int(11) NOT NULL,
  `kep` varchar(30) NOT NULL,
  `nev` varchar(40) NOT NULL,
  `jatekosszam` varchar(10) NOT NULL,
  `jatekido` varchar(15) NOT NULL,
  `leiras` varchar(1000) NOT NULL,
  PRIMARY KEY (`jatekID`)
)
ENGINE = MYISAM
CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO `jatekok` (`jatekID`, `jatekosszamID`, `kep`, `nev`, `jatekosszam`, `jatekido`, `leiras`) VALUES
(1, 1, 'leo.jpg', 'Leo', '2-5 fő', '30 perc','A Leo kooperatív családi társasjáték. Segítsetek a pletykás oroszlánnak eljutni a fodrászhoz! A játékosok a kártyáik kijátszásával irányítják Leót, aki lépten-nyomon megtorpan csevegni egy kicsit – de ez elkerülhető, ha emlékszünk, hol milyen állat volt... A memóriát és az együttműködést fejlesztő társasjáték.'),
(2, 2, 'dobble.jpg', 'Dobble: Bogyó és Babóca', '2-8 fő', '10 perc','A gyorsaság és felismerés játéka a legkisebbeknek Bogyóval és Babócával! A Dobble Bogyó és Babóca pörgős, zsebre vágható kártyajáték 5-féle játékváltozattal már 4 éves gyerekeknek is. A kártyákon 6-6 különböző, Bogyó és Babóca témájú képecske látható, és bármelyik két kártyán mindig van egy ugyanolyan belőlük. A játékosok feladata, hogy a többieknél gyorsabban megtalálják a közös képeket. A koncentrációt és a reflexeket fejlesztő társasjáték.'),
(3, 3, '7csoda.jpg', '7 Csoda: Párbaj', '2 fő', '30-40 perc','Kire emlékszik majd a történelem? – ókori birodalmak párbaja. A 7 Csoda: Párbaj kétfős társasjáték tapasztaltabb játékosok számára is. Felépíthetjük csodáinkat, fejleszthetjük haderőnket, építhetünk különleges épületeket, tudományos áttöréseket érhetünk el – többféle úton eljutva a végső győzelemig...'),
(4, 4, 'everdell.jpg', 'Everdell – Az Örökfa árnyékában', '2-4 fő', '40-80 perc','Az ősi fa tövében állatok városai épülnek – legyen a tiéd a legsikeresebb! Az Everdell – Az Örökfa árnyékában különleges megjelenésű, összetettebb, „tablóépítő” családi társasjáték. A játékosok egy gyönyörű fa tövében építik erdei birodalmukat: az akciók használatával és az erőforrásaik okos beosztásával otthont teremtenek az állatoknak, akik szakértelmükkel tovább erősítik a városkát... Tablóépítés: a korlátozott számban megszerezhető kártyákból kell, azok egymásra hatásait figyelembe véve, a legértékesebb kombinációkat létrehozni.'),
(5, 5, 'fedonevek.jpg', 'Fedőnevek', '2-8 fő', '20-40 perc','Két ügynökség összecsapása: melyikük kapcsolja össze okosabban a fedőneveit? A Fedőnevek zseniális, Év játéka díjas szóasszociációs partijáték. A két csapat vezetőinek olyan szavakat kell kitalálniuk, amelyek segítségével a társaik rájönnek, hogy a kirakott 25 szóból melyek a sajátjaik. A szókincset és a kreativitást fejlesztő társasjáték.'),
(6, 6, 'paniclab.jpg', 'Panic lab', '2-10 fő', '10-30 perc','Az amőbák elszabadultak a laboratóriumban, és most szétszéledtek mindenfelé. Gyorsan el kell kapnod őket!
A speciális dobókockák megmondják, hogy melyik laboratóriumból tűnt el az amőba és milyen amőbát is kell pontosan keresnünk, akinek először ez sikerül, azé a pont.
De vigyázz, az amőbák menekülnek, szellőzőkben bujkálnak, mutálódnak, nem lesz könnyű dolgod velük!
Biztos te fogsz nyerni, ha gyors az észjárásod és fürge vagy.'),
(7, 7, 'kingdomino.jpg', 'Kingdomino', '2-4 fő', '15 perc','Építsétek fel a saját királyságotokat színes dominólapkákból! A Kingdomino egyszerű szabályú, változatos, Év játéka díjas családi társasjáték. A játékosok mezőkből, erdőkből, bányákból, szántókból felépítik a saját birodalmukat, vigyázva, hogy úgy válasszanak lapkákat, hogy ne hagyjanak ellenfeleiknek túl értékeseket. Az előre tervezést fejlesztő társasjáték.'),
(8, 8, 'hullamhossz.jpg', 'Hullámhossz', '2-12 fő', '30-45 perc','Együtt rezegtek? A Hullámhossz zseniális beszélgetős-asszociációs partijáték. Az egyik játékos húz egy ellentétpárt (hideg–meleg, vacak–príma, Star Wars–Star Trek stb.), majd megpörgeti a mutatót, amiből kiderül, hogy a spektrumon hol helyezkedik el, amit majd mondania kell.');

