-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Gru 2018, 22:26
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `repertuar1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aktor`
--

CREATE TABLE `aktor` (
  `ID` int(11) NOT NULL,
  `Imie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Nazwisko` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Zdjecie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `aktor`
--

INSERT INTO `aktor` (`ID`, `Imie`, `Nazwisko`, `Zdjecie`) VALUES
(1, 'Maciej', 'Stuhr', 'zdjecia\\obsady\\Planeta_singli\\Maciej.jpg'),
(2, 'Danuta', 'Stenka', 'zdjecia\\obsady\\Planeta_singli\\Danuta.jpg'),
(3, 'Piotr', 'Głowacki', 'zdjecia\\obsady\\Planeta_singli\\Piotr.jpg'),
(4, 'Weronika', 'Książkiewicz', 'zdjecia\\obsady\\Planeta_singli\\Weronika_ksiazkiewicz.jpg'),
(5, 'Joanna', 'Jarmołowicz', 'zdjecia\\obsady\\Planeta_singli\\Joanna.jpg'),
(6, 'Aleksandar', 'Milićević', 'zdjecia\\obsady\\Planeta_singli\\Aleksandar.jpg'),
(8, 'Eddie', 'Radmayen', 'zdjecia\\obsady\\Fantastyczne\\Eddie.jpg'),
(9, 'Katherine', 'Waterston', 'zdjecia\\obsady\\Fantastyczne\\Katherine.jpg'),
(10, 'Dan', 'Fogler', 'zdjecia\\obsady\\Fantastyczne\\Dan_fogler.jpg'),
(11, 'Alison\r\n', 'Sudol', 'zdjecia\\obsady\\Fantastyczne\\Alison.jpg'),
(12, 'Ezra', 'Miller', 'zdjecia\\obsady\\Fantastyczne\\Ezra_miller.jpg'),
(13, 'Zoë', 'Kravitz', 'zdjecia\\obsady\\Fantastyczne\\Zoe.jpg'),
(14, 'Johnny', 'Depp', 'zdjecia\\obsady\\Fantastyczne\\Depp.jpg'),
(15, 'Jude', 'Law', 'zdjecia\\obsady\\Fantastyczne\\Jude_law.jpg'),
(16, 'Keira', 'Knightley', 'zdjecia\\obsady\\Dziadek_do_orzechow_i_cztery_krolestwa\\Keira.jpg\r\n'),
(17, 'Mackenzie', 'Foy', 'zdjecia/obsady/Dziadek_do_orzechow_i_cztery_krolestwa/Mackenzie.jpg'),
(18, 'Helen', 'Mirren', 'zdjecia/obsady/Dziadek_do_orzechow_i_cztery_krolestwa/Helen.jpg'),
(19, 'Morgan', 'Freeman', 'zdjecia/obsady/Dziadek_do_orzechow_i_cztery_krolestwa/Morgan.jpg'),
(20, 'Eugenio ', 'Derbez', 'zdjecia/obsady/Dziadek_do_orzechow_i_cztery_krolestwa/Eugenio_derbez.jpg'),
(21, 'Matthew', 'Macfayden', 'zdjecia/obsady/Dziadek_do_orzechow_i_cztery_krolestwa/Matthew.jpg'),
(22, 'Richard', 'E.Grant', 'zdjecia/obsady/Dziadek_do_orzechow_i_cztery_krolestwa/Richard.jpg'),
(23, 'Rami', 'Malek', 'zdjecia/obsady/Bohemian_rhapsody/Rami.jpg'),
(24, 'Gwilym', 'Lee', 'zdjecia/obsady/Bohemian_rhapsody/Gwilym.jpg'),
(25, 'Ben', 'Hardy', 'zdjecia/obsady/Bohemian_rhapsody/Ben.jpg'),
(26, 'Joseph', 'Mozzello', 'zdjecia/obsady/Bohemian_rhapsody/Joseph.jpg'),
(27, 'Aidan', 'Gillen', 'zdjecia/obsady/Bohemian_rhapsody/Aidan.png'),
(28, 'Allen', 'Leech', 'zdjecia/obsady/Bohemian_rhapsody/Allen.jpg'),
(29, 'Tom', 'Hollander', 'zdjecia/obsady/Bohemian_rhapsody/Tom.jpg'),
(30, 'Arkadiusz', 'Jakubik', 'zdjecia/obsady/Kler/Arkadiusz.jpg'),
(31, 'Robert', 'Więckiewicz', 'zdjecia/obsady/Kler/Robert.jpg'),
(32, 'Jacek', 'Braciak', 'zdjecia/obsady/Kler/Jacek.jpg'),
(33, 'Janusz', 'Gajos', 'zdjecia/obsady/Kler/Janusz.jpg'),
(34, 'Joanna', 'Kulig', 'zdjecia/obsady/Kler/Joanna.jpg'),
(35, 'Adrian', 'Zaremba', 'zdjecia/obsady/Kler/Adrian.jpg'),
(36, 'Magdalena', 'Celówna', 'zdjecia/obsady/Kler/Magdalena.jpg'),
(37, 'Maciej', 'Nawrocki', 'zdjecia/obsady/Klakson/Maciej.png'),
(38, 'Kszysztof', 'Szczepaniak', 'zdjecia/obsady/Klakson/Krzysztof.jpg'),
(39, 'Anna', 'Cieślak', 'zdjecia/obsady/Klakson/Anna.jpg'),
(40, 'Marcin', 'Perchuć', 'zdjecia/obsady/Klakson/Marcin.jpg'),
(41, 'Przemysław', 'Bluszcz', 'zdjecia\\obsady\\Klakson\\Przemyslaw.jpg'),
(42, 'Zofia', 'Zborowska', 'zdjecia/obsady/Klakson/Zofia.jpg'),
(43, 'Ewa Konstancja', 'Bułhak', 'zdjecia/obsady/Klakson/Ewa.jpg'),
(44, 'Tomasz', 'Grochoczyński', 'zdjecia/obsady/Klakson/Tomasz.jpg'),
(45, 'Taron', 'Egerton', 'zdjecia/obsady/robin_hood/Taron.jpg'),
(46, 'Jamie', 'Foxx', 'zdjecia/obsady/robin_hood/Jamie.jpg'),
(47, 'Ben', 'Mendelsohn', 'zdjecia/obsady/robin_hood/Ben.jpg'),
(48, 'Eve', 'Hewson', 'zdjecia/obsady/robin_hood/Eve.jpg'),
(49, 'Jamie', 'Dornan', 'zdjecia/obsady/robin_hood/Jamie_Dornan.jpg'),
(50, 'Tim', 'Minchin', 'zdjecia/obsady/robin_hood/Tim.jpg'),
(51, 'Paul', 'Anderson', 'zdjecia/obsady/robin_hood/Paul.jpg'),
(52, 'F.Murray', 'Abraham', 'zdjecia/obsady/robin_hood/Murray.jpg'),
(53, 'Michael', 'B.Jordan', 'zdjecia/obsady/Creed_II/Michael.jpg'),
(54, 'Sylvester', 'Stallone', 'zdjecia/obsady/Creed_II/sylvester.jpg'),
(55, 'Tessa', 'Thompson', 'zdjecia/obsady/Creed_II/Tessa.jpg'),
(56, 'Phylicia', 'Rashad', 'zdjecia/obsady/Creed_II/Phylicia.jpg'),
(57, 'Dolph', 'Lundgren', 'zdjecia/obsady/Creed_II/dolph.jpg'),
(58, 'Florian', 'Munteanu', 'zdjecia/obsady/Creed_II/Florian.jpg'),
(59, 'Russell', 'Hornsby', 'zdjecia/obsady/Creed_II/russel.jpg'),
(60, 'Wood', 'Harris', 'zdjecia/obsady/Creed_II/wood.jpg'),
(61, 'Jovan', 'Adepo', 'zdjecia/obsady/Operacja_overlord/Jovan.jpg'),
(62, 'Wyatt', 'Russell', 'zdjecia/obsady/Operacja_overlord/Wyatt.jpg'),
(63, 'Mathilde', 'Ollivier', 'zdjecia/obsady/Operacja_overlord/Mathillde.jpg'),
(64, 'Pilou', 'Asbæk', 'zdjecia/obsady/Operacja_overlord/Pilou.jpg'),
(65, 'John', 'Magaro', 'zdjecia/obsady/Operacja_overlord/John.jpeg'),
(66, 'Lain', 'De Caestecker', 'zdjecia/obsady/Operacja_overlord/Lain.jpg'),
(67, 'Jacob', 'Anderson', 'zdjecia/obsady/Operacja_overlord/Jacob.jpg'),
(68, 'Dominic', 'Applewhite', 'zdjecia/obsady/Operacja_overlord/Dominic.jpg'),
(69, 'Benedict', 'Cumberbatch', 'zdjecia\\obsady\\Grinch\\Bendedict.jpg'),
(70, 'Cameron', 'Seely', 'zdjecia/obsady/Grinch/Cameron.jpg'),
(71, 'Rashida', 'Jones', 'zdjecia/obsady/Grinch/Rashida.jpg'),
(72, 'Tristan', 'O\'Hare', 'zdjecia/obsady/Grinch/Tristan.png'),
(73, 'Kenan', 'Thompson', 'zdjecia/obsady/Grinch/Kenan.jpg'),
(74, 'Sam', 'Lavagnino', 'zdjecia/obsady/Grinch/Sam.jpg'),
(75, 'Ramone', 'Hamilton', 'zdjecia/obsady/Grinch/Ramone.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `ID` int(11) NOT NULL,
  `Nazwa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Obsada` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Reżyser` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Plakat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Opis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Data` date NOT NULL,
  `Gatunek` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Url_do_zwiastuny` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`ID`, `Nazwa`, `Obsada`, `Reżyser`, `Plakat`, `Opis`, `Data`, `Gatunek`, `Url_do_zwiastuny`) VALUES
(1, 'Planeta Singli 2', '1,2,3,4,5,6', '1', 'zdjecia/obsady/Planeta_singli/7859789.6.jpg', 'Związek Ani i Tomka przeżywa kryzys, bo oboje mają względem siebie inne zamiary. Tymczasem na horyzoncie pojawia się zakochany w dziewczynie milioner.', '2018-11-09', 'Romans/Komedia', '<iframe width=\"1159\" height=\"652\" src=\"https://www.youtube.com/embed/tFOJIvJQU8A\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(2, 'Fantastyczne zwierzęta: Zbrodnie Grindelwalda', '8,9,10,11,12,13,14,15', '2', 'zdjecia/obsady/Fantastyczne/fantastyczne.jpg\r\n\r\n', 'Gellertowi Grindelwaldowi udaje się uciec z więzienia. Tylko Dumbledore z pomocą Newta Scamandera mogą go ponownie pokonać.', '2018-11-16', 'Fantasy', '<iframe width=\"1159\" height=\"652\" src=\"https://www.youtube.com/embed/EQVfbbRh-lc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(3, 'Dziadek do orzechów i cztery królestwa. ', '16,17,18,19,20,21,22', '3', 'zdjecia\\obsady\\Dziadek_do_orzechow_i_cztery_krolestwa\\cinema_thumb_972.jpg\r\n', 'Młoda dziewczyna zostaje przeniesiona do magicznego świata żołnierzy z piernika i armii myszy.', '2018-11-02', 'Dramat/Fantasy', '<iframe width=\"1159\" height=\"625\" src=\"https://www.youtube.com/embed/BCguCHzCkNk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(4, 'Bohemian Rhapsody', '23,24,25,26,27,28,29', '4', 'zdjecia/obsady/Bohemian_rhapsody/bohemian.jpg', 'Amerykańsko-brytyjski film biograficzny w reżyserii Bryana Singera opowiadający historię rockowego zespołu Queen, skupiający się głównie na frontmanie i wokaliście grupy – Freddiem Mercurym. W rolach członków zespołu wystąpili: Rami Malek, Gwilym Lee, Ben Hardy oraz Joseph Mazzello.', '2018-10-24', 'Dramat/Biografia', '<iframe width=\"1159\" height=\"652\" src=\"https://www.youtube.com/embed/tRQYD1Po_s0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(5, 'Kler', '30,31,32,33,34,35,36', '5', 'zdjecia/obsady/Kler/kler.jpg', 'Życie trzech księży ulega zmianie, kiedy ich drogi krzyżują się ponownie', '2018-09-23', 'Dramat/Obyczajowy', '<iframe width=\"1159\" height=\"652\" src=\"https://www.youtube.com/embed/N9Asxqvr2m8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(6, 'Klakson i spółka', '37,38,39,40,41,42,43,44\r\n', '6', 'zdjecia\\obsady\\Klakson\\klakson.jpg', 'Klakson jest taksówką w wielkiej metropolii zamieszkanej przez auta. Lakier ma nieco zdarty, pod maską czasem coś stuka, ale z reflektorów dobrze mu patrzy. Jak mało kto zna tutejsze ulice, wie z kim trzymać sztamę, a komu lepiej nie wjeżdżać w drogę. Gdy pewna urocza czerwona wyścigówka wpadnie w kłopoty, Klakson będzie musiał stanąć maska w maskę z hersztem gangu wielotonowych ciężarówek, które nie boją się nawet radiowozów. Klakson da z siebie pełną moc, skrzyknie wszystkich blaszanych kumpli i paląc gumy ruszy do boju. Bo gdy ma się odwagę i olej w silniku, niestraszny żaden poślizg.', '2018-08-23', 'Akcji/Przygodowy', '<iframe width=\"1159\" height=\"652\" src=\"https://www.youtube.com/embed/hYk4b5bhdC4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(7, 'Robin Hood: Początek', '45,46,47,48,49,50,51,52', '7', 'zdjecia/obsady/robin_hood/robin.jpg', 'Robin z Loxley wraca z wyprawy krzyżowej i zastaje majątek splądrowany, a ukochaną Marion zamężną. Rządny zemsty postanawia stanąć w obronie uciśnionych mieszkańców Nottingham.', '2018-11-29', 'Thriller/Akcji', '<iframe width=\"1163\" height=\"654\" src=\"https://www.youtube.com/embed/Xrp_j0kqXpc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(8, 'Creed II ', '53,54,55,56,57,58,59,60', '8', 'zdjecia/obsady/Creed_II/creed.jpg', 'Nowy mistrz wagi półciężkiej Adonis Creed, trenujący pod opieką Rocky\'ego, staje do walki z Viktorem, synem legendarnego Ivana Drago.', '2018-11-23', 'Dramat/Sportowy', '<iframe width=\"1159\" height=\"652\" src=\"https://www.youtube.com/embed/ApQbQ0iJQO0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(9, 'Operacja Overlord', '61,62,63,64,65,66,67,68', '9', 'zdjecia/obsady/Operacja_overlord/overlord.jpg', 'Przeddzień operacji D-Day, amerykańscy spadochroniarze w nazistowskiej wieży odkrywają niebezpieczne eksperymenty, które mają Hitlerowi pomóc wygrać II wojnę światową.', '2018-11-09', 'Dramat/Thriller', '<iframe width=\"1159\" height=\"652\" src=\"https://www.youtube.com/embed/kQBCQpl4VMI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(10, 'Grinch', '69,70,71,72,73,74,75', '10', 'zdjecia/obsady/Grinch/grinch.jpg', 'Mieszkańcy Ktosiowa oczekują Białego Bożego Narodzenia, a zielony stwór Grinch zrobi wszystko, by je zepsuć.', '2018-11-30', 'Fantasy/Muzyczny', '<iframe width=\"1159\" height=\"652\" src=\"https://www.youtube.com/embed/oLZm8YvImbE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `ID` int(11) NOT NULL,
  `ID_Filmy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Data` date NOT NULL,
  `Godzina` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Rodzaj_biletu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezyser`
--

CREATE TABLE `rezyser` (
  `ID` int(11) NOT NULL,
  `Imie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Nazwisko` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Zdjecie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `rezyser`
--

INSERT INTO `rezyser` (`ID`, `Imie`, `Nazwisko`, `Zdjecie`) VALUES
(1, 'Sam', 'Akina', 'zdjecia\\obsady\\Planeta_singli\\sam_akina.jpeg'),
(2, 'David', 'Yates', 'zdjecia\\obsady\\Fantastyczne\\David_yates.jpg'),
(3, 'Lasse', 'Hallström', 'zdjecia\\obsady\\Dziadek_do_orzechow_i_cztery_krolestwa\\Lasse.jpg'),
(4, 'Bryan', 'Singer', 'zdjecia\\obsady\\Bohemian_rhapsody\\Bryan.jpg'),
(5, 'Wojciech', 'Smarzowski', 'zdjecia\\obsady\\Kler\\Wojtek.jpg'),
(6, 'Yusry', 'Abd Halim', 'zdjecia\\obsady\\Klakson\\Yusry.jpg'),
(7, 'Otto', 'Bathurst', 'zdjecia\\obsady\\robin_hood\\Otto.jpg'),
(8, 'Steven', 'Caple Jr.', 'zdjecia\\obsady\\Creed_II\\Steven.jpg'),
(9, 'Julius', 'Avery', 'zdjecia\\obsady\\Operacja_overlord\\Julius.jpg'),
(10, 'Yarrow', 'Cheney', 'zdjecia\\obsady\\Grinch\\Yarrow.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `seans`
--

CREATE TABLE `seans` (
  `ID` int(11) NOT NULL,
  `ID_Filmu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Data` date NOT NULL,
  `Godzina` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `Sala` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `ilosc_wolnyc_miejsc` int(11) NOT NULL,
  `ilosc_miejsc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `seans`
--

INSERT INTO `seans` (`ID`, `ID_Filmu`, `Data`, `Godzina`, `Sala`, `ilosc_wolnyc_miejsc`, `ilosc_miejsc`) VALUES
(1, '1', '2018-12-04', '10:00', '1', 1, 20),
(2, '1', '2018-12-03', '12:00', '2', 16, 20),
(3, '2', '2018-12-04', '8:00', '3', 20, 20),
(4, '2', '2018-12-03', '8:00', '5', 20, 20),
(5, '3', '2018-12-04', '8:00', '2', 20, 20),
(6, '3', '2018-12-03', '8:00', '7', 20, 20),
(7, '4', '2018-12-04', '10:00', '3', 20, 20),
(8, '4', '2018-12-03', '12:00', '6', 20, 20),
(9, '5', '2018-12-03', '14:00', '5', 20, 20),
(10, '5', '2018-12-04', '12:00', '4', 20, 20),
(11, '6', '2018-12-03', '8:00', '8', 20, 20),
(12, '6', '2018-12-04', '10:00', '2', 20, 20),
(13, '7', '2018-12-03', '16:00', '3', 20, 20),
(14, '7', '2018-12-04', '14:00', '6', 20, 20),
(15, '8', '2018-12-03', '18:00', '4', 20, 20),
(16, '8', '2018-12-04', '16:00', '3', 20, 20),
(17, '9', '2018-12-03', '10:00', '5', 20, 20),
(18, '9', '2018-12-04', '16:00', '7', 20, 20),
(19, '10', '2018-12-03', '14:00', '1', 20, 20),
(20, '10', '2018-12-04', '12:00', '7', 20, 20);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktor`
--
ALTER TABLE `aktor`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `rezyser`
--
ALTER TABLE `rezyser`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `seans`
--
ALTER TABLE `seans`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
