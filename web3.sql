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
(1, 1, 'leo.png', 'Leo', '2-5 fő', '30 perc','A Leo kooperatív családi társasjáték. Segítsetek a pletykás oroszlánnak eljutni a fodrászhoz! A játékosok a kártyáik kijátszásával irányítják Leót, aki lépten-nyomon megtorpan csevegni egy kicsit – de ez elkerülhető, ha emlékszünk, hol milyen állat volt... A memóriát és az együttműködést fejlesztő társasjáték.'),
(2, 1, 'cortexkids.png', 'Cortex Kids', '2-6 fő', '15 perc','Gyorsuld le a többieket nyolcféle agymegmozgató feladványban – már kisebbeknek is! A Cortex Kids pörgős megfigyelési-logikai családi partijáték. A játékosok kártyáról kártyára nyolc, az agyuk különböző területeit igénybe vevő feladványtípusban mérhetik össze gyorsaságukat. Kakukktojás, memória, párkeresés... és különleges, kitapintható kártyák! Kombinálható a többi Cortex Kids társasjátékkal.'),
(3, 2, 'dobble.jpg', 'Dobble: Bogyó és Babóca', '2-8 fő', '10 perc','A gyorsaság és felismerés játéka a legkisebbeknek Bogyóval és Babócával! A Dobble Bogyó és Babóca pörgős, zsebre vágható kártyajáték 5-féle játékváltozattal már 4 éves gyerekeknek is. A kártyákon 6-6 különböző, Bogyó és Babóca témájú képecske látható, és bármelyik két kártyán mindig van egy ugyanolyan belőlük. A játékosok feladata, hogy a többieknél gyorsabban megtalálják a közös képeket. A koncentrációt és a reflexeket fejlesztő társasjáték.'),
(4, 2, 'robotok.png', 'Robotok', '2-8 fő', '15-20 perc','Gurul a kis robot - ki tudja, hol áll meg? A Robotok az Év gyerekjátéka díjra jelölt, mókás, kooperatív partijáték. A játékosoknak ki kell találniuk, hogy a robotot - fejben - mozgató társuk hány tárgyat hagyott maga mögött a kártyákon jelzett térképen, és melyiknél „állt” meg. Az egymásra figyelést fejlesztő társasjáték.'),
(5, 3, '7csoda_parbaj.png', '7 Csoda: Párbaj', '2 fő', '30-40 perc','Kire emlékszik majd a történelem? – ókori birodalmak párbaja. A 7 Csoda: Párbaj kétfős társasjáték tapasztaltabb játékosok számára is. Felépíthetjük csodáinkat, fejleszthetjük haderőnket, építhetünk különleges épületeket, tudományos áttöréseket érhetünk el – többféle úton eljutva a végső győzelemig...'),
(6, 3, 'jaipur.png', 'Jaipur', '2 fő', '30-40 perc','Indiai kereskedők párharca – legyél te a maharadzsa udvari beszállítója! A Jaipur szép, könnyen tanulható, kétfős társasjáték rutinos játékosoknak is. Kártyaszettek gyűjtésével juthatunk értékes árukhoz, figyelve, hogy ellenfelünk éppen mit gyűjt...'),
(7, 4, 'everdell.png', 'Everdell – Az Örökfa árnyékában', '2-4 fő', '40-80 perc','Az ősi fa tövében állatok városai épülnek – legyen a tiéd a legsikeresebb! Az Everdell – Az Örökfa árnyékában különleges megjelenésű, összetettebb, „tablóépítő” családi társasjáték. A játékosok egy gyönyörű fa tövében építik erdei birodalmukat: az akciók használatával és az erőforrásaik okos beosztásával otthont teremtenek az állatoknak, akik szakértelmükkel tovább erősítik a városkát... Tablóépítés: a korlátozott számban megszerezhető kártyákból kell, azok egymásra hatásait figyelembe véve, a legértékesebb kombinációkat létrehozni.'),
(8, 4, 'concordia.png', 'Concordia', '2-5 fő', '100-150 perc','A Római Birodalom legsikeresebb kereskedőivé válhatunk! A Concordia: Sestertiusszal kikövezett utak könnyen tanulható, népszerű stratégiai társasjáték. A játékosok kereskedelmi utakat és hálózatot igyekeznek kiépíteni akciókártyáikkal, amelyekből újabbakat, erősebbeket is szerezhetnek, illetve amelyekkel hódolhatnak az isteneknek is...'),
(9, 5, 'fedonevek.png', 'Fedőnevek', '2-8 fő', '20-40 perc','Két ügynökség összecsapása: melyikük kapcsolja össze okosabban a fedőneveit? A Fedőnevek zseniális, Év játéka díjas szóasszociációs partijáték. A két csapat vezetőinek olyan szavakat kell kitalálniuk, amelyek segítségével a társaik rájönnek, hogy a kirakott 25 szóból melyek a sajátjaik. A szókincset és a kreativitást fejlesztő társasjáték.'),
(10, 5, 'alarcosbal.png', 'Álarcosbál', '2-13 fő', '30-60 perc','Álarcok színes kavalkádja – és nem mindig tudni, ki van az álarc mögött... Az Álarcosbál titkos szerepes partijáték akár 13 fő számára is. A játékosok egy karneváli forgatagban cserélgetik álarcaikat úgy, hogy egy idő után maguk sem tudják biztosan, milyen maszkot viselnek. Ezért amikor elő kell lépnie egy-egy szereplőnek, többen is jelentkezni fognak, és aki tévedett, az fizetni fog! Mások szándékainak felismerését fejlesztő társasjáték.'),
(11, 6, 'paniclab.png', 'Panic lab', '2-10 fő', '10-30 perc','Az amőbák elszabadultak a laboratóriumban, és most szétszéledtek mindenfelé. Gyorsan el kell kapnod őket!
A speciális dobókockák megmondják, hogy melyik laboratóriumból tűnt el az amőba és milyen amőbát is kell pontosan keresnünk, akinek először ez sikerül, azé a pont.
De vigyázz, az amőbák menekülnek, szellőzőkben bujkálnak, mutálódnak, nem lesz könnyű dolgod velük!
Biztos te fogsz nyerni, ha gyors az észjárásod és fürge vagy.'),
(12, 6, 'themind.png', 'The Mind - Érezz rá!', '2-6 fő', '20 perc','Hangolódjatok egymásra! Megérzitek, mikor kerültök sorra? A The Mind – Érezz rá! világszerte népszerű, különleges, kooperatív partijáték. A játékosoknak emelkedő számsorrendben kell lerakniuk a kártyáikat, úgy, hogy nem látják egymás lapjait és nem is beszélhetnek a sajátjaikról... Az egymásra figyelést fejlesztő társasjáték.'),
(13, 7, 'kingdomino.png', 'Kingdomino', '2-4 fő', '15 perc','Építsétek fel a saját királyságotokat színes dominólapkákból! A Kingdomino egyszerű szabályú, változatos, Év játéka díjas családi társasjáték. A játékosok mezőkből, erdőkből, bányákból, szántókból felépítik a saját birodalmukat, vigyázva, hogy úgy válasszanak lapkákat, hogy ne hagyjanak ellenfeleiknek túl értékeseket. Az előre tervezést fejlesztő társasjáték.'),
(14, 7, 'igen.png', 'Igen?', '2-6 fő', '30 perc','Az érdekes kérdések partijátéka. Az Igen? magyar fejlesztésű beszélgetésindító társasjáték. A játékosok könnyed és komoly kérdésekre válaszolnak igennel vagy nemmel – és meg kell tippelniük, vajon a többiek hogyan válaszoltak... Az empátiát fejlesztő társasjáték. Önállóan is játszható, de kombinálva az Igen? És... társasjátékkal akár 12 fő is játszhatja!'),
(15, 8, 'hullamhossz.png', 'Hullámhossz', '2-12 fő', '30-45 perc','Együtt rezegtek? A Hullámhossz zseniális beszélgetős-asszociációs partijáték. Az egyik játékos húz egy ellentétpárt (hideg–meleg, vacak–príma, Star Wars–Star Trek stb.), majd megpörgeti a mutatót, amiből kiderül, hogy a spektrumon hol helyezkedik el, amit majd mondania kell.'),
(16, 8, 'magicmaze.png', 'Magic Maze - Fogd és fuss!', '1-8 fő', '15 perc','Fosszátok ki a plazát a hőseitekkel – csak csendben! A Magic Maze – Fogd és fuss! különleges, kooperatív partijáték nagyobb társaságoknak is. A játékosok közösen irányítják a plázában kódorgó bábukat, úgy, hogy mindenki máshoz ért: egyikük csak balra mozgathatja bábukat, a másikuk csak jobbra, a harmadik használhatja a mozgólépcsőt stb... És mindezt némán, tehát nem beszélhetik meg, mi is lenne a helyes lépés, a homokóra meg csak pereg... Az egymásra figyelést fejlesztő társasjáték.');

